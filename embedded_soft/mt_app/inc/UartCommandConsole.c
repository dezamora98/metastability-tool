/**
 * @file UartCommandConsole.c
 * @author Daniel Enquique Zamora Sifredo (dezamora98@gmail.com)
 * @brief
 * @version 0.1
 * @date 2024-02-23
 *
 * @copyright Copyright (c) 2024
 *
 */

/* Standard includes. */
#include <string.h>
#include <stdio.h>
#include <stdbool.h>

/* FreeRTOS includes. */
#include "FreeRTOS.h"
#include "task.h"
#include "semphr.h"

/* Example includes. */
#include "FreeRTOS_CLI.h"

/* Demo application includes. */
#include "xscugic.h"
#include "xuartps.h"
#include "UartCommandConsole.h"

/* Dimensions the buffer into which input characters are placed. */
#define cmdMAX_INPUT_SIZE 50

/* Dimentions a buffer to be used by the UART driver, if the UART driver uses a
buffer at all. */
#define cmdQUEUE_LENGTH 25

/* DEL acts as a backspace. */
#define cmdASCII_DEL (0x7F)

/* The maximum time to wait for the mutex that guards the UART to become
available. */
#define cmdMAX_MUTEX_WAIT pdMS_TO_TICKS(300)

#ifndef configCLI_BAUD_RATE
#define configCLI_BAUD_RATE 115200
#endif

/*-----------------------------------------------------------*/

/*
 * The task that implements the command console processing.
 */

void uart_ISR(void *CallBackRef, u32 Event, unsigned int EventData);

static void prvUARTCommandConsoleTask(void *pvParameters);

static void vSerialPutString(void *uCC_ptr, char *str, uint32_t size);
static inline void vSerialGetchar(UartCommandConsole_t *uCC_ptr, char *cRxedChar);

static uint32_t xUart_init(UartCommandConsole_t *uCC_ptr, uint16_t uart_id);

/*-----------------------------------------------------------*/

/* Const messages output by the command console. */
static const char pcWelcomeMessage[] = "\r\n   _____ ______   _________               _________  ________  ________  ___       \r\n"
                                       "  |\\   _ \\  _   \\|\\___   ___\\            |\\___   __\\|\\   __  \\|\\   __  \\|\\  \\      \r\n"
                                       "  \\ \\  \\\\\\__\\ \\  \\|___ \\  \\_| ___________ \\|___\\  \\_\\ \\  \\|\\  \\ \\  \\|\\  \\ \\  \\     \r\n"
                                       "   \\ \\  \\\\|__| \\  \\   \\ \\  \\ |\\___________\\   \\ \\  \\ \\ \\  \\\\\\  \\ \\  \\\\\\  \\ \\  \\     \r\n"
                                       "    \\ \\  \\    \\ \\  \\   \\ \\  \\ |___________|    \\ \\  \\ \\ \\  \\\\\\  \\ \\  \\\\\\  \\ \\  \\____ \r\n"
                                       "     \\ \\__\\    \\ \\__\\   \\ \\__\\                  \\ \\__\\ \\ \\_______\\ \\_______\\ \\_______\\ \r\n"
                                       "      \\|__|     \\|__|    \\|__|                   \\|__|  \\|_______|\\|_______|\\|_______|  \r\n\r\n>> ";

static const char pcEndOfOutputMessage[] = "\r\n[Press ENTER to execute the previous command again]\\r\\n";
static const char pcNewLine[] = "\r\n";
static const char pcNewLineCommand[] = "\r\n>> ";
static const char new_text_b_or_d[] = "\r>> ";

/* Used to guard access to the UART in case messages are sent to the UART from
more than one task. */

/*-----------------------------------------------------------*/

static uint32_t xUart_init(UartCommandConsole_t *uCC_ptr, uint16_t uart_id)
{
    XUartPs *uart = (XUartPs *)uCC_ptr->_interface;

    XUartPs_Config *Config = XUartPs_LookupConfig(uart_id);
    if (NULL == Config)
    {
        printf("\t (E) INIT_INTERFACE >> LOOK UP CONFIG UART.\r\n");
        return XST_FAILURE;
    }

    if (XUartPs_CfgInitialize(uart, Config, Config->BaseAddress) != XST_SUCCESS)
    {
        printf("\t (E) INIT_INTERFACE >> INIT UART.\r\n");
        return XST_FAILURE;
    }

    printf("\t (P) INIT_INTERFACE >> init XUartPS\r\n");

    XUartPsFormat format = {
        .BaudRate = 115200,
        .DataBits = XUARTPS_FORMAT_8_BITS,
        .Parity = XUARTPS_FORMAT_NO_PARITY,
        .StopBits = XUARTPS_FORMAT_1_STOP_BIT,
    };

    if (XUartPs_SetDataFormat(uart, &format) != XST_SUCCESS)
    {
        printf("\t (E) INIT_INTERFACE >> config format UART.\r\n");
        return XST_FAILURE;
    }

    printf("\t (P) INIT_INTERFACE >> config format UART\r\n");

    XUartPs_SetOperMode(uart, XUARTPS_OPER_MODE_NORMAL);

    /* set trigger levels for tx and rx buffer. */
    XUartPs_SetFifoThreshold(uart, 32);

    printf("\t (P) INIT_INTERFACE >> complete config UART\n\r"
           "\t\t UART_BR = %u\r\n"
           "\t\t UART_ADDR = %u\n\r"
           "\t\t UART_IS_READY = %u\r\n",
           (unsigned int)uart->BaudRate, (unsigned int)uart->Config.BaseAddress, (unsigned int)uart->IsReady);

    // XUartPs_SetHandler(uart, (XUartPs_Handler)uart_ISR, uCC_ptr);

    // XUartPs_SetInterruptMask(uart, XUARTPS_IXR_TOUT | XUARTPS_IXR_PARITY | XUARTPS_IXR_FRAMING |
    //                                    XUARTPS_IXR_OVER | XUARTPS_IXR_TXEMPTY | XUARTPS_IXR_RXFULL |
    //                                    XUARTPS_IXR_RXOVR );

    XUartPs_EnableUart(uart);
    // printf("\t (P) INIT_INTERFACE >> complete config interrupt UART");

    return XST_SUCCESS;
}

void vUARTCommandConsoleStop(UartCommandConsole_t *uCC_ptr)
{
    vTaskDelete(uCC_ptr->_consoleTaskHandle);
    vSemaphoreDelete(uCC_ptr->xTsMutex);
    XUartPs_SetInterruptMask(uCC_ptr->_interface, 0);
    XUartPs_DisableUart((XUartPs *)uCC_ptr->_interface);
}

void vUARTCommandConsoleStart(UartCommandConsole_t *uCC_ptr, void *uart, uint16_t uart_id)
{
    uCC_ptr->_interface = uart;
    uCC_ptr->xTsMutex = xSemaphoreCreateMutex();

    printf("\t (+) INIT INTERFACE \r\n");
    if (xUart_init(uCC_ptr, uart_id) != XST_SUCCESS)
    {
        printf("\t (E) INIT INTERFACE >> FAIL -> STOP_APP\r\n");
    }

    /* Create that task that handles the console itself. */
    xTaskCreate(prvUARTCommandConsoleTask,    /* The task that implements the command console. */
                "CLI",                        /* Text name assigned to the task.  This is just to assist debugging.  The kernel does not use this name itself. */
                512,                          /* The size of the stack allocated to the task. */
                uCC_ptr,                      /* The parameter is not used, so NULL is passed. */
                tskIDLE_PRIORITY + 1,         /* The priority allocated to the task. */
                uCC_ptr->_consoleTaskHandle); /* A handle is not required, so just pass NULL. */
}
/*-----------------------------------------------------------*/

static void vSerialPutString(void *uCC_ptr, char *str, uint32_t size)
{

    UartCommandConsole_t *uCC_p = ((UartCommandConsole_t *)uCC_ptr);
    uint32_t t_offset = 0;
    do
    {
        vTaskDelay(pdMS_TO_TICKS(0.1));
        t_offset += XUartPs_Send(((XUartPs *)uCC_p->_interface), (uint8_t *)&str[t_offset], size - t_offset);
    } while (size != t_offset);
}

static inline void vSerialGetchar(UartCommandConsole_t *uCC_ptr, char *cRxedChar)
{
    while (XUartPs_IsReceiveData(((XUartPs *)uCC_ptr->_interface)->Config.BaseAddress))
        vTaskDelay(pdMS_TO_TICKS(5));

    *cRxedChar = XUartPs_RecvByte(((XUartPs *)uCC_ptr->_interface)->Config.BaseAddress);
}

static void prvUARTCommandConsoleTask(void *pvParameters)
{
    Xil_ExceptionEnable();
    char cRxedChar;
    uint8_t ucInputIndex = 0;
    char *pcOutputString;
    BaseType_t xReturned;
    static char cInputString[cmdMAX_INPUT_SIZE], cLastInputString[cmdMAX_INPUT_SIZE];
    UartCommandConsole_t *uCC_ptr = (UartCommandConsole_t *)pvParameters;

    /* Obtain the address of the output buffer.  Note there is no mutual
    exclusion on this buffer as it is assumed only one command console interface
    will be used at any one time. */
    pcOutputString = FreeRTOS_CLIGetOutputBuffer();

    /* Send the welcome message. */
    vSerialPutString(uCC_ptr, (char *)pcWelcomeMessage, strlen(pcWelcomeMessage));

    while (true)
    {
        /* Wait for the next character.  The while loop is used in case
        INCLUDE_vTaskSuspend is not set to 1 - in which case portMAX_DELAY will
        be a genuine block time rather than an infinite block time. */
        vSerialGetchar(uCC_ptr, &cRxedChar);

        /* Echo the character back. */
        vSerialPutString(uCC_ptr, &cRxedChar, 1);

        /* Was it the end of the line? */
        if (cRxedChar == '\n' || cRxedChar == '\r')
        {
            /* Just to space the output from the input. */
            vSerialPutString(uCC_ptr, (char *)pcNewLine, strlen(pcNewLine));

            /* See if the command is empty, indicating that the last command
            is to be executed again. */
            if (ucInputIndex == 0)
            {
                /* Copy the last command back into the input string. */
                strcpy(cInputString, cLastInputString);
            }

            /* Pass the received command to the command interpreter.  The
            command interpreter is called repeatedly until it returns
            pdFALSE	(indicating there is no more output) as it might
            generate more than one string. */
            do
            {
                /* Get the next output string from the command interpreter. */
                xReturned = FreeRTOS_CLIProcessCommand(cInputString, pcOutputString, configCOMMAND_INT_MAX_OUTPUT_SIZE);

                /* Write the generated string to the UART. */
                vSerialPutString(uCC_ptr, pcOutputString, strlen(pcOutputString));

            } while (xReturned != pdFALSE);

            /* All the strings generated by the input command have been
            sent.  Clear the input string ready to receive the next command.
            Remember the command that was just processed first in case it is
            to be processed again. */
            strcpy(cLastInputString, cInputString);
            ucInputIndex = 0;
            memset(cInputString, 0x00, cmdMAX_INPUT_SIZE);

            vSerialPutString(uCC_ptr, (char *)pcNewLineCommand, strlen(pcNewLineCommand));
        }
        else
        {
            if (cRxedChar == '\r')
            {
                /* Just to space the output from the input. */
                vSerialPutString(uCC_ptr, (char *)pcNewLine, strlen(pcNewLine));
            }
            else if(cRxedChar == 12)
            {
                vSerialPutString(uCC_ptr, "\033[2J\033[H\r\n>> ",sizeof("\033[2J\033[H\r\n>> "));
            }
            else if ((cRxedChar == '\b') || (cRxedChar == cmdASCII_DEL))
            {
                /* Backspace was pressed.  Erase the last character in the
                string - if any. */
                if (ucInputIndex > 0)
                {
                    ucInputIndex--;
                    cInputString[ucInputIndex] = '\0';
                }

                vSerialPutString(uCC_ptr, (char*) new_text_b_or_d,strlen(new_text_b_or_d));
                vSerialPutString(uCC_ptr, (char *) cInputString, strlen(cInputString));
            }
            else
            {
                /* A character was entered.  Add it to the string entered so
                far.  When a \n is entered the complete	string will be
                passed to the command interpreter. */
                if ((cRxedChar >= ' ') && (cRxedChar <= '~'))
                {
                    if (ucInputIndex < cmdMAX_INPUT_SIZE)
                    {
                        cInputString[ucInputIndex] = cRxedChar;
                        ucInputIndex++;
                    }
                }
            }
        }
    }
}
/*-----------------------------------------------------------*/

void uart_ISR(void *CallBackRef, u32 Event, unsigned int EventData)
{
    UartCommandConsole_t *uCC_ptr = ((UartCommandConsole_t *)CallBackRef);
    BaseType_t pxHigherPriorityTaskWoken = pdFALSE;

    /* All of the data has been sent */
    if (Event == XUARTPS_EVENT_SENT_DATA)
    {
        xSemaphoreGiveFromISR(uCC_ptr->xTsMutex, &pxHigherPriorityTaskWoken);
    }

    /* All of the data has been received */
    if (Event == XUARTPS_EVENT_RECV_DATA)
    {
        xTaskNotifyFromISR(uCC_ptr->_consoleTaskHandle, 0x00, eNoAction, &pxHigherPriorityTaskWoken);
    }

    portYIELD_FROM_ISR(pxHigherPriorityTaskWoken);
}

/*-----------------------------------------------------------*/
