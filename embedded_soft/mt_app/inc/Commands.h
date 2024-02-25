/*
 * Commands.h
 *
 *  Created on: Feb 23, 2024
 *      Author: 0K
 */

#ifndef INC_COMMANDS_H_
#define INC_COMMANDS_H_

/* Standard includes. */
#include <string.h>
#include <stdint.h>

/* FreeRTOS includes. */
#include "FreeRTOS.h"
#include "task.h"

/* Utils includes. */
#include "FreeRTOS_CLI.h"

BaseType_t prvClearCommand(char *pcWriteBuffer, size_t xWriteBufferLen, const char *pcCommandString);

static const CLI_Command_Definition_t xClearCommand =
	{
		"clear",
		"\r\nclear:\r\n  Clear terminal.\r\n",
		prvClearCommand,
		0};


#endif /* INC_COMMANDS_H_ */
