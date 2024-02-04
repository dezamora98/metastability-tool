#include "mtool.h"

mt_error mt_init()
{
    
}

mt_error mt_set_experiment(mt_exp_param *list_exp_param, uint8_t n_exp_param)
{
    uint8_t i;
    mt_frame frame = {
        .start = ">",
        .command = set_experiment,
        .size = n_exp_param * sizeof(mt_exp_param),
        .data.exp_param = list_exp_param,
        .checksum = 0,
    };

    frame.checksum += frame.command;
    frame.checksum += frame.size;
    for (i = 0; i != frame.size; ++i)
    {
        frame.checksum += frame.data.byte[i];
    }

    
    return NO_ERROR;
}

mt_error mt_get_data(mt_exp_data *list_exp_data, uint8_t n_exp_data)
{
    return NO_ERROR;
}

mt_error mt_start()
{
    return NO_ERROR;
}

mt_error mt_stop()
{
    return NO_ERROR;
}

mt_error mt_clear()
{
    return NO_ERROR;
}
