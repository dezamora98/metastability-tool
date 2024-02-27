/**
 * @file main.c
 * @author Daniel Enquique Zamora Sifredo (dezamora98@gmail.com)
 * @brief 
 * @version 0.1
 * @date 2024-02-26
 * 
 * @copyright Copyright (c) 2024
 * 
 */
#include <stdio.h>
#include <stdbool.h>
#include "xparameters.h"
#include "xuartps.h"
#include "xscugic.h"
#include "xil_cache.h"
#include "FreeRTOS.h"
#include "task.h"
#include "../inc/Commands.h"
#include "../inc/UartCommandConsole.h"
#include "../inc/FreeRTOS_CLI.h"



int main(void)
{
	Xil_DCacheEnable();
	Xil_ICacheEnable();

	printf(">> Inite Program \n\r");

	UartCommandConsole_t uCC;
	XUartPs uart;

	FreeRTOS_CLIRegisterCommand(&xClearCommand);
	FreeRTOS_CLIRegisterCommand(&xExperimentCommand);
	FreeRTOS_CLIRegisterCommand(&xlsCommand);

	vUARTCommandConsoleStart(&uCC, &uart, XPAR_PS7_UART_1_DEVICE_ID);

	//->¡config interrupt!

	vTaskStartScheduler();

	printf("\t (E) >> ERROR IN FREE_RTOS -> (MAIN)\r\n");


	vUARTCommandConsoleStop(&uCC);
	return XST_FAILURE;
}



#if false

	/*---------------config intc--------------*/
	XScuGic_Config *IntcConfig; /* Config for interrupt controller */
	XScuGic InterruptController;



	IntcConfig = XScuGic_LookupConfig(XPAR_SCUGIC_SINGLE_DEVICE_ID);
	if (NULL == IntcConfig)
	{
		printf("\t (E) MAIN >> CONFIG INTC.\r\n");
		return XST_FAILURE;
	}

	if (XScuGic_CfgInitialize(&InterruptController, IntcConfig, IntcConfig->CpuBaseAddress) != XST_SUCCESS)
	{
		printf("\t (E) MAIN >> INIT INTC.\r\n");
		return XST_FAILURE;
	}

	/*
	 * Connect the interrupt controller interrupt handler to the
	 * hardware interrupt handling logic in the processor.
	 */

	/*---------------------------------------*/

	/*
	 * Connect a device driver handler that will be called when an
	 * interrupt for the device occurs, the device driver handler
	 * performs the specific interrupt processing for the device
	 */
	if (XScuGic_Connect(&InterruptController, XPS_UART1_INT_ID, (Xil_ExceptionHandler)XUartPs_InterruptHandler, &uart) != XST_SUCCESS)
	{
		printf("\t (E) MAIN >> CONNECT INTC UART_ISR.\r\n");
		return XST_FAILURE;
	}

	/* Enable the interrupt for the device */
	XScuGic_Enable(&InterruptController, XPS_UART1_INT_ID);
	/*---------------------------------------*/

	
	Xil_ExceptionInit();
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_IRQ_INT, (Xil_ExceptionHandler)XScuGic_InterruptHandler, &InterruptController);
	Xil_ExceptionEnable();*/
#endif
