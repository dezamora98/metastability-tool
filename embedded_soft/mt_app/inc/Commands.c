/*
 * Commands.c
 *
 *  Created on: Feb 23, 2024
 *      Author: 0K
 */

/* Standard includes. */
#include <stdio.h>
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

BaseType_t prvClearCommand(char *pcWriteBuffer, size_t xWriteBufferLen, const char *pcCommandString)
{
    memcpy(pcWriteBuffer, "\033[2J\033[H", sizeof("\033[2J\033[H"));
    return pdFALSE;
}

BaseType_t pubExperimentCommand(char *pcWriteBuffer, size_t xWriteBufferLen, const char *pcCommandString)
{
    mt_exp t_exp;
    BaseType_t t_leng;

    // experiment <name> <duration> <clk_frec> <sample_rate>
    memset(t_exp.exp_name, 0, 10);
    memcpy(t_exp.exp_name, FreeRTOS_CLIGetParameter(pcCommandString, 1, &t_leng), t_leng);
    t_exp.state = mt_exp_STOP;
    t_exp.param.exp_duration = atoi(strchr(FreeRTOS_CLIGetParameter(pcCommandString, 1, &t_leng), ' '));
    t_exp.param.exp_clock = atoi(strchr(FreeRTOS_CLIGetParameter(pcCommandString, 2, &t_leng), ' '));
    t_exp.param.exp_sample_rate = atoi(strchr(FreeRTOS_CLIGetParameter(pcCommandString, 3, &t_leng), ' '));

    t_exp.data.n_met = 0;
    t_exp.data.power_chip = 0.0;
    t_exp.data.temp_chip = 0x0;

    if (mt_RegisterExp(&t_exp) != pdPASS)
    {
        strncpy(pcWriteBuffer, "\t ERROR -> register experiment\r\n", xWriteBufferLen);
        printf("\t(E) >> List_exp realloc ERROR\r\n");
        return pdFALSE;
    }

    sprintf(pcWriteBuffer, "\tnew exp -> ( %s, %lut, %luMHz, %lup)\r\n",
            t_exp.exp_name,
            t_exp.param.exp_duration,
            t_exp.param.exp_clock,
            t_exp.param.exp_sample_rate);

    printf("(P) >> %s", pcWriteBuffer);

    return pdFALSE;
}

BaseType_t publsCommand(char *pcWriteBuffer, size_t xWriteBufferLen, const char *pcCommandString)
{
    static const ExpList_Item_t *pxExp = NULL;
    BaseType_t xReturn;

    (void)pcCommandString;

    if (pxExp == NULL)
    {
        /* Reset the pxCommand pointer back to the start of the list. */
        pxExp = mt_GetExpList();
    }

    if (pxExp->item == NULL && pxExp->next_item == NULL)
    {
        strncpy(pcWriteBuffer, "\t<NULL>", xWriteBufferLen);
        return pdFALSE;
    }

    /* Return the next command help string, before moving the pointer on to
    the next command in the list. */
    sprintf(pcWriteBuffer, "\t%s -> (%s)\r\n",
            pxExp->item->exp_name,
            (pxExp->item->state == mt_exp_STOP) ? "STOP" : "START");

    pxExp = pxExp->next_item;

    if (pxExp == NULL)
    {
        /* There are no more commands in the list, so there will be no more
        strings to return after this one and pdFALSE should be returned. */
        xReturn = pdFALSE;
    }
    else
    {
        xReturn = pdTRUE;
    }

    return xReturn;
}

BaseType_t pubStartCommand(char *pcWriteBuffer, size_t xWriteBufferLen, const char *pcCommandString)
{
    static BaseType_t state = pdFAIL;
    static ExpList_Item_t *pxExpList_i = NULL;
    static uint8_t count = 0;
    BaseType_t t_leng;
    const char *name = FreeRTOS_CLIGetParameter(pcCommandString, 1, &t_leng);

    memset(pcWriteBuffer,0,xWriteBufferLen);

    if (state == pdFAIL)
    {
        pxExpList_i = mt_GetExpList();
    }

    while (pxExpList_i != NULL && state == pdFAIL)
    {
        if (strncmp(pxExpList_i->item->exp_name, name, t_leng) == 0)
        {
            mt_StartExperiment(pxExpList_i->item);
            state = pdPASS;
            return pdTRUE;
        }
        pxExpList_i = pxExpList_i->next_item;
    }

    if (pxExpList_i != NULL)
    {
        if (mt_ExpIsCompleted(pxExpList_i->item) == pdFALSE)
        {
            switch (count)
            {
            case 0:
                sprintf(pcWriteBuffer, "\r wait...");
                break;
            case 1:
                sprintf(pcWriteBuffer, "\r wait.. ");
                break;
            default:
                sprintf(pcWriteBuffer, "\r wait.  ");
                break;
            }
            return pdTRUE;
        }
    }

    state = pdFAIL;
    count = 0;
    return pdFALSE;
}

BaseType_t pubCatCommand(char *pcWriteBuffer, size_t xWriteBufferLen, const char *pcCommandString)
{
    ExpList_Item_t *pxExpList_i = mt_GetExpList();
    BaseType_t t_leng;
    char name[10];
    memset(name, 0, 10);
    memcpy(name, FreeRTOS_CLIGetParameter(pcCommandString, 1, &t_leng), t_leng);

    while (pxExpList_i != NULL)
    {
        if (strncmp(pxExpList_i->item->exp_name, name, t_leng) == 0)
        {
            sprintf(pcWriteBuffer, "\t{\r\n"
                                   "\t\t\"name\" : \"%s\",\r\n"
                                   "\t\t\"state\" : \"%s\",\r\n"
                                   "\t\t\"data\" : {\r\n"
                                   "\t\t\t\"NMT\" : %lu,\r\n"
                                   "\t\t\t\"temp\" : %f,\r\n"
                                   "\t\t\t\"power\" : %f\r\n\t\t},\r\n"
                                   "\t\t\"param\" : {\r\n"
                                   "\t\t\t\"clk\" : %lu,\r\n"
                                   "\t\t\t\"samble_rate\" : %lu,\r\n"
                                   "\t\t\t\"duration\" : %lu\r\n\t\t}\r\n"
                                   "\t}\r\n",
                    pxExpList_i->item->exp_name,
                    (pxExpList_i->item->state == mt_exp_STARTED) ? "START" : "STOP",
                    pxExpList_i->item->data.n_met,
                    pxExpList_i->item->data.temp_chip,
                    pxExpList_i->item->data.power_chip,
                    pxExpList_i->item->param.exp_clock,
                    pxExpList_i->item->param.exp_sample_rate,
                    pxExpList_i->item->param.exp_duration);

            return pdFALSE;
        }
        pxExpList_i = pxExpList_i->next_item;
    }

    sprintf(pcWriteBuffer, "\texperiment <%s> does not exist\r\n", name);

    return pdFALSE;
}
