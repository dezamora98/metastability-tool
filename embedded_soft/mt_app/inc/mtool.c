#include "mtool.h"
#include <stdint.h>
#include <stdbool.h>
#include <string.h>
#include "FreeRTOS.h"
#include "task.h"

static ExpList_Item_t ExpList = {
    NULL,
    NULL,
};

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

BaseType_t mt_StartExperiment(ExpList_Item_t* ExpItem)
{
    BaseType_t xReturn = pdFAIL;
    //->incluir código.
    return xReturn;
}