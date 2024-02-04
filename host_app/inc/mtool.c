#include "mtool.h"

mt_error mt_init(mt* mtool, _mt_interface *interface, _mt_interface_init *interface_init,
                 _mt_interface_stop *interface_stop, _mt_interface_rx *_mt_interface_rx,
                 _mt_interface_tx *interface_tx, uint8_t *tx_buffer, uint8_t *rx_buffer,
                 uint16_t size_buffer)
{
    return NO_ERROR;
}

mt_error mt_set_exp(mt* mtool,mt_exp *list_exp, uint8_t n_exp)
{
    uint8_t i;
    mt_frame frame = {
        .start = 0x10,
        .command = set_experiment,
        .size = n_exp * sizeof(mt_exp_param),
        .data.exp = list_exp,
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

mt_error mt_get_exp(mt* mtool,mt_exp *list_exp, uint8_t n_exp)
{
    return NO_ERROR;
}

mt_error mt_start(mt* mtool,mt_exp *list_exp, uint8_t n_exp)
{
    return NO_ERROR;
}

mt_error mt_stop(mt* mtool,mt_exp *list_exp, uint8_t n_exp)
{
    return NO_ERROR;
}

mt_error mt_clear()
{
    return NO_ERROR;
}
