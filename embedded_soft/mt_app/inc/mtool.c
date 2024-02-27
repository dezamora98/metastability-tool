#include "mtool.h"
#include <stdint.h>
#include <stdbool.h>
#include <string.h>
#include "FreeRTOS.h"
#include "task.h"


BaseType_t mt_RegisterExp(mt_exp *exp)
{
    ExpList_Item_t *pxExpList = &ExpList;
    ExpList_Item_t *pxExpListItem;
    BaseType_t xReturn = pdFAIL;

    pxExpListItem = (ExpList_Item_t *)pvPortMalloc(sizeof(ExpList_Item_t));
    configASSERT(pxExpListItem);

    if (pxExpListItem != NULL)
    {
        taskENTER_CRITICAL();
        {
            /* Reference the experiment being registered from the newly created
            list item. */
            pxExpListItem->item = (mt_exp *)pvPortMalloc(sizeof(mt_exp));
            configASSERT(pxExpListItem->item);

            memcpy(pxExpList->item, exp, sizeof(mt_exp));
            /* The new list item will get added to the end of the list, so
            pxNext has nowhere to point. */
            pxExpList->next_item = NULL;

            /* Add the newly created list item to the end of the already existing
            list. */
            if (pxExpList->item == NULL)
            {
                pxExpList->item = pxExpListItem->item;
                pxExpList->next_item = NULL;
            }
            else
            {
                pxExpList->next_item = pxExpListItem;
            }
        }
        taskEXIT_CRITICAL();

        xReturn = pdPASS;
    }

    return xReturn;

}
