/*
 * Commands.c
 *
 *  Created on: Feb 23, 2024
 *      Author: 0K
 */

/* Standard includes. */
#include <string.h>
#include <stdint.h>
#include <stdlib.h>

/* FreeRTOS includes. */
#include "FreeRTOS.h"
#include "task.h"

/* Utils includes. */
#include "FreeRTOS_CLI.h"
#include "Commands.h"
#include "mtool.h"

volatile struct
{
    mt_exp *list;
    uint32_t len;
}List_Exp = {NULL,0};

BaseType_t prvClearCommand(char *pcWriteBuffer, size_t xWriteBufferLen, const char *pcCommandString)
{
	memcpy(pcWriteBuffer,"\033[2J\033[H",sizeof("\033[2J\033[H"));
    return pdFALSE;
}

BaseType_t pubExperimentCommand(char *pcWriteBuffer, size_t xWriteBufferLen, const char *pcCommandString)
{
    mt_exp t_exp;
    size_t t_leng;
    char param[20];
    // añadir el resto de la lógica para sacar los comandos
    memcpy(t_exp.exp_name,FreeRTOS_CLIGetParameter(pcCommandString,0,&t_leng),t_leng);
    t_exp.id = List_Exp.len;
    t_exp.state = mt_exp_STOP;
    t_exp.param.exp_duration = atoi(FreeRTOS_CLIGetParameter(pcCommandString,1,&t_leng));
    t_exp.param.exp_clock = atoi(FreeRTOS_CLIGetParameter(pcCommandString,2,&t_leng));
    t_exp.param.exp_sample_rate = atoi(FreeRTOS_CLIGetParameter(pcCommandString,3,&t_leng));

}