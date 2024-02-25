/*
 * UartCommandConsole.h
 *
 *  Created on: Feb 23, 2024
 *      Author: 0K
 */

#ifndef INC_UARTCOMMANDCONSOLE_H_
#define INC_UARTCOMMANDCONSOLE_H_

#include "FreeRTOS_CLI.h"

typedef struct
{
    void* _interface;
    void* _consoleTaskHandle;
    void* xTsMutex;
}UartCommandConsole_t;


void vUARTCommandConsoleStart(UartCommandConsole_t *uCC_ptr, void *uart, uint16_t uart_id);
void vUARTCommandConsoleStop(UartCommandConsole_t *uCC_ptr);
#endif /* INC_UARTCOMMANDCONSOLE_H_ */
