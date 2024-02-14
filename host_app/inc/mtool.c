#include "mtool.h"
#include <memory.h>
#include <malloc.h>

mt_error mt_init(mt *mtool, _mt_interface *interface, _mt_interface_init *interface_init,
                 _mt_interface_stop *interface_stop, _mt_interface_rx *_mt_interface_rx,
                 _mt_interface_tx *interface_tx, uint8_t *tx_buffer, uint8_t *rx_buffer)
{
    return NO_ERROR;
}

void create_buffer(uint8_t **buffer, mt_frame *frame)
{
    uint16_t i = 0;
    (*buffer) = malloc(frame->size + 6);
    (*buffer)[i++] = frame->start;
    (*buffer)[i++] = frame->addr & 0x000ff;
    (*buffer)[i++] = frame->addr >> 8;
    (*buffer)[i++] = frame->command;
    (*buffer)[i++] = frame->size;
    for (i; i != frame->size+5; ++i)
    {
        (*buffer)[i] = ((uint8_t*)(frame->data))[i - 5];
    }
    (*buffer)[i] = frame->checksum;
}

void create_frame(mt_frame *frame, uint8_t start_byte, uint16_t addr, mt_command command, uint8_t size, void *data)
{
    void *i;
    frame->start = start_byte;
    frame->addr = addr;
    frame->command = command;
    frame->size = size;
    frame->data = data;

    frame->checksum = 0;

    for (i = &(frame->start); i != &(frame->data); ++i)
    {
        frame->checksum += *(uint8_t *)(i);
    }
    for (i = (frame->data); i != (frame->data + frame->size); ++i)
    {
        frame->checksum += *(uint8_t *)(i);
    }
    frame->checksum = -frame->checksum;
}

/*hay que cambiar a partir de aquí*/
void create_obj(uint8_t *mt_buffer, void **data, size_t data_size, uint8_t *n_data)
{
    *n_data = (mt_buffer[1] - 3) / data_size;
    (*data) = (void *)malloc((*n_data) * data_size);
    memcpy(*data, &mt_buffer[3], (*n_data) * data_size);
}

void get_frame(mt_frame *frame, uint8_t *buffer)
{
    frame->start = buffer[0];
    frame->addr = buffer[1];
    frame->addr |= ((uint16_t)buffer[2]) << 8;
    frame->command = buffer[3];
    frame->size = buffer[4];
    frame->data = (void*)(&buffer[5]);
    frame->checksum = buffer[5 + frame->size];
}

mt_error mt_set_exp(mt *mtool, mt_exp *list_exp, uint8_t n_exp)
{
    uint8_t i = 0;
    // create_frame(&(mtool->tx_buffer), 0x10, set_experiment, 0x0000, list_exp, sizeof(mt_exp), n_exp);
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
