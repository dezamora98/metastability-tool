#include "mtool.h"
#include <memory.h>
#include <malloc.h>

mt_error mt_init(mt *mtool, _mt_interface *interface, _mt_interface_init *interface_init,
                 _mt_interface_stop *interface_stop, _mt_interface_rx *_mt_interface_rx,
                 _mt_interface_tx *interface_tx, uint8_t *tx_buffer, uint8_t *rx_buffer,
                 uint16_t size_buffer)
{
    return NO_ERROR;
}

void create_frame(uint8_t *buffer, uint8_t start_byte, mt_command command, void *data, size_t data_size, uint8_t n_data)
{
    uint16_t i = 0;                               /// iterator
    size_t size_frame = (n_data * data_size) + 4; /// calculando tamaño de trama

    buffer = (uint8_t *)malloc(size_frame);         /// asignando memoria a trama
    buffer[i++] = start_byte;                     /// asignando byte de start
    buffer[i++] = size_frame - 1;                 /// asignando tamaño de trama menos el byte de start
    buffer[i++] = command;                        /// asignando campo command
    memcpy(&(buffer[i]), data, data_size * n_data); /// copiando campo de datos

    for (i = 1; i < size_frame; ++i)
    {
        buffer[size_frame - 1] += buffer[i];
    }
    buffer[size_frame - 1] = (~buffer[size_frame - 1]) + 1;
}

void delete_frame(uint8_t *buffer)
{
    free(buffer);
    buffer = NULL;
}

mt_error mt_set_exp(mt *mtool, mt_exp *list_exp, uint8_t n_exp)
{
    uint8_t i = 0;
    create_frame(mtool->tx_buffer, 0x10, set_experiment, list_exp, sizeof(mt_exp), n_exp);
    return NO_ERROR;
}

mt_error mt_get_exp(mt *mtool, mt_exp *list_exp, uint8_t n_exp)
{
    return NO_ERROR;
}

mt_error mt_start(mt *mtool, mt_exp *list_exp, uint8_t n_exp)
{
    return NO_ERROR;
}

mt_error mt_stop(mt *mtool, mt_exp *list_exp, uint8_t n_exp)
{
    return NO_ERROR;
}

mt_error mt_clear(mt *mtool)
{
    return NO_ERROR;
}
