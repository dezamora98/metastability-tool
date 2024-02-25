/*
 * Commands.c
 *
 *  Created on: Feb 23, 2024
 *      Author: 0K
 */

/* Standard includes. */
#include <string.h>
#include <stdint.h>

/* FreeRTOS includes. */
#include "FreeRTOS.h"
#include "task.h"

/* Utils includes. */
#include "FreeRTOS_CLI.h"
#include "Commands.h"

BaseType_t prvClearCommand(char *pcWriteBuffer, size_t xWriteBufferLen, const char *pcCommandString)
{
	memcpy(pcWriteBuffer,"\033[2J\033[H",sizeof("\033[2J\033[H"));
    return pdFALSE;
}
