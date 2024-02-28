#include "mtool.h"
#include <stdint.h>
#include <stdbool.h>
#include <string.h>
#include "FreeRTOS.h"
#include "task.h"
#include "monitor.h"
#include <stdlib.h>
#include <stdio.h>

static ExpList_Item_t ExpList = {
    NULL,
    NULL,
};

BaseType_t mt_ConfigTester(mt_exp *esp)
{
    //-> add code
    printf("\r (P) CONFIG_TESTER.");
    return pdPASS;
}
BaseType_t mt_InitTester(mt_exp *esp)
{
    //-> add code
    printf("\r (P) INIT_TESTER.");
    return pdPASS;
}
BaseType_t mt_ExpIsCompleted(mt_exp *exp)
{
    //-> add code
    printf("\r (P) END_EXP (%s).", exp->exp_name);
    return pdPASS;
}

void mt_setExperiment(mt_exp *exp)
{
    //-> add code
    exp->data.power_chip = (exp->data.power_chip + get_vint()) / 2;
    exp->data.temp_chip = (exp->data.temp_chip + get_temp()) / 2;

    //--add code.
    srand((int)(xTaskGetSchedulerState));
    exp->data.n_met = rand();//--> solo e sun ejemplo hay que realizar la lectura del registro de conteo de eventos mt    
    //--add code.
}
ExpList_Item_t *mt_GetExpList()
{
    return &ExpList;
}

BaseType_t mt_RegisterExp(mt_exp *exp)
{
    static ExpList_Item_t *pxExpList = &ExpList;
    ExpList_Item_t *pxExpListItem;
    BaseType_t xReturn = pdFAIL;

    pxExpListItem = (ExpList_Item_t *)pvPortMalloc(sizeof(ExpList_Item_t));
    configASSERT(pxExpListItem);

    if (pxExpListItem != NULL)
    {
        taskENTER_CRITICAL();
        {
            if (pxExpList->item != NULL)
            {
                pxExpListItem->item = (mt_exp *)pvPortMalloc(sizeof(mt_exp));
                configASSERT(pxExpListItem->item);
                memcpy(pxExpListItem->item, exp, sizeof(mt_exp));

                pxExpListItem->next_item = NULL;

                pxExpList->next_item = pxExpListItem;

                pxExpList = pxExpListItem;
            }
            else
            {
                pxExpList->item = (mt_exp *)pvPortMalloc(sizeof(mt_exp));
                configASSERT(pxExpList->item);
                memcpy(pxExpList->item, exp, sizeof(mt_exp));
            }
        }
        taskEXIT_CRITICAL();

        xReturn = pdPASS;
    }

    return xReturn;
}

BaseType_t mt_StartExperiment(mt_exp *exp)
{
    BaseType_t xReturn = pdFAIL;
    exp->data.temp_chip = get_temp();
    exp->data.power_chip = get_vint();
    exp->state = mt_exp_STARTED;
    mt_ConfigTester(exp);
    mt_InitTester(exp);

    //->incluir código.
    return xReturn;
}
