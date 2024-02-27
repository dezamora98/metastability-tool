#ifndef M_TOOL_H
#define M_TOOL_H

#include <stdint.h>
#include "FreeRTOS.h"

typedef enum
{
    mt_exp_STOP,
    mt_exp_STARTED,
} mt_exp_state;

/**
 * @struct mt_exp
 * @brief srgtucture for defining experiment
 */
typedef struct __attribute__((packed))
{
    char exp_name[10];  /// name
    mt_exp_state state; /// experiment state
    struct __attribute__((packed))
    {
        uint32_t exp_clock;       /// frequency
        uint32_t exp_sample_rate; /// experiment sample rate
        uint32_t exp_duration;    /// experiment duration
    } param;                      /// experiment setup parameters
    struct __attribute__((packed))
    {
        uint32_t n_met;   /// Number of metastability events.
        float temp_chip;  /// Chip temperature  // ver lo del array
        float power_chip; /// Chip power supply // ver lo del array
    } data;               /// experiment data
} mt_exp;

typedef struct xExpList
{
    mt_exp *item;
    struct xExpList *next_item;
} ExpList_Item_t;

ExpList_Item_t* mt_GetExpList();

BaseType_t mt_RegisterExp(mt_exp *exp);

BaseType_t mt_StartExperiment(ExpList_Item_t* ExpItem);

#endif // !M_TOOL_H
