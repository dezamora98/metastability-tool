#include "mtool.h"

mtool_error mtool_set_experiment(mtool_exp_param *list_exp_param, uint8_t n_exp_param)
{
    uint8_t i;
    mtool_frame frame = {
        .start = ">",
        .command = set_experiment,
        .size = n_exp_param * sizeof(mtool_exp_param),
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

mtool_error mtool_get_data(mtool_exp_data *list_exp_data, uint8_t n_exp_data)
{

    return 0;
}

mtool_error mtool_start()
{
    return NO_ERROR;
}

mtool_error mtool_stop()
{
    return NO_ERROR;
}

mtool_error mtool_clear()
{
    return NO_ERROR;
}
