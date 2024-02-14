#include "../inc/mtool.h"
#include <memory.h>
#include <stdio.h>

int test_create_buffer()
{
    mt_exp exp = {
        .id = 1,
        .data = {
            .n_met = 5,
            .power_chip = 5.5,
            .temp_chip = 20.2,
        },
        .param = {
            .exp_clock = 1000,
            .exp_duration = 10,
            .exp_sample_rate = 20,
        },
        .state = mt_exp_NOT_CONFIG,
    };

    mt_exp list[3] = {exp, exp, exp};
    mt_frame frame;

    create_frame(&frame, 10, 0x0001, set_experiment, sizeof(list), list);

    uint8_t *buffer;
    int i;

    create_buffer(&buffer, &frame);

    uint8_t sum = 0;
    for (i = 0; i != (sizeof(list) + 5); ++i)
    {
        sum += buffer[i];
    }
    sum = -sum;

    if(sum != buffer[frame.size+5] || sum != frame.checksum)
    {
        printf("ERROR>> Create buffer (checksum).");
        delete_frame(buffer);
        return 1;
    }

    if (memcmp(list, &buffer[5], sizeof(list)))
    {
        printf("ERROR >> Create buffer (data).\n\r");
        delete_frame(buffer);
        return 1;
    }

    if(memcmp(buffer, (uint8_t*)(&frame), 5))
    {
        printf("ERROR >> buffer != frame (start,addr,command,size).\n\r");
        delete_frame(buffer);
        return 1;
    }

    if (memcmp(&(buffer[5]), frame.data, frame.size))
    {
        printf("ERROR >> buffer != frame (data).\n\r");
        delete_frame(buffer);
        return 1;
    }

    printf("PASS >> Create buffer.\n\r");
    /*---------------------------------------------------------------------------------------*/
    /*hay que cambiar a partir de aquí*/
    
    mt_exp *list_1;
    uint8_t n_list_1;
    mt_frame frame_1;
    get_frame(&frame_1,buffer);

    if(memcmp(&frame,&frame_1,5))
    {
        printf("ERROR >> Create frame of buffer.\n\r");
        delete_frame(buffer);
        return 1;
    }

    mt_exp list_2[3];
    memcpy(list_2, list_1, n_list_1 * sizeof(mt_exp));

    if (memcmp(list, list_1, n_list_1 * sizeof(mt_exp)))
    {
        printf("ERROR >> Create object.\n\r");
        delete_frame(buffer);
        delete_obj(list_1);
        return 1;
    }

    printf("PASS >> Create object.\n\r");

    delete_frame(buffer);
    return 0;
}


int main()
{
    int test;
    printf("--------->Init TEST<---------\n\n\r");
    test = test_create_buffer();
    printf("\n\r---------->End TEST<---------\n\n\r");
    return test;
}