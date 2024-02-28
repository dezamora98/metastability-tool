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

/* Utils includes. */
#include "FreeRTOS_CLI.h"

BaseType_t prvClearCommand(char *pcWriteBuffer, size_t xWriteBufferLen, const char *pcCommandString);

static const CLI_Command_Definition_t xClearCommand =
	{
		"clear",
		"\r\nclear or Ctrl+L:\r\n" 
		" Clear terminal.\r\n",
		prvClearCommand,
		0};

BaseType_t pubExperimentCommand(char *pcWriteBuffer, size_t xWriteBufferLen, const char *pcCommandString);

static const CLI_Command_Definition_t xExperimentCommand =
	{
		"experiment",
		"\r\ngenerate experiment:\r\n"
		" experiment <name> <duration> <clk_frec> <sample_rate> \r\n"
		"\r\n",
		pubExperimentCommand,
		4};

BaseType_t publsCommand(char *pcWriteBuffer, size_t xWriteBufferLen, const char *pcCommandString);

static const CLI_Command_Definition_t xlsCommand =
	{
		"ls",
		"\r\nls:\r\n "
		" list experiment. \r\n"
		"\r\n",
		publsCommand,
		0};

BaseType_t pubStartCommand(char *pcWriteBuffer, size_t xWriteBufferLen, const char *pcCommandString);

static const CLI_Command_Definition_t xStartCommand =
	{
		"start",
		"\r\nstart:\r\n "
		" start <experiment_name> \r\n"
		"\r\n",
		pubStartCommand,
		1};

BaseType_t pubCatCommand(char *pcWriteBuffer, size_t xWriteBufferLen, const char *pcCommandString);

static const CLI_Command_Definition_t xCatCommand =
	{
		"cat",
		"\r\ncat:\r\n "
		" cat <experiment_name> \r\n"
		"\r\n",
		pubCatCommand,
		1};

BaseType_t pubRmCommand(char *pcWriteBuffer, size_t xWriteBufferLen, const char *pcCommandString);

static const CLI_Command_Definition_t xRmCommand =
	{
		"rm",
		"\r\nrm:\r\n "
		" rm <experiment_name> \r\n"
		"\r\n",
		pubRmCommand,
		1};

#endif /* INC_COMMANDS_H_ */
