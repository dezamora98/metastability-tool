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
	FreeRTOS_CLIRegisterCommand(&xCatCommand);

	vUARTCommandConsoleStart(&uCC, &uart, XPAR_PS7_UART_1_DEVICE_ID);

	//->¡config interrupt!

	vTaskStartScheduler();

	printf("\t (E) >> ERROR IN FREE_RTOS -> (MAIN)\r\n");


	vUARTCommandConsoleStop(&uCC);
	return XST_FAILURE;
}