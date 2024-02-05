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
    uint8_t *buffer;
    int out;

    create_frame(&buffer, 10, set_experiment, list, sizeof(mt_exp), 3);

    if (memcmp(list, &buffer[3], sizeof(mt_exp) * 3))
    {
        printf("ERROR >> Create buffer.\n\r");
        delete_frame(buffer);
        return 1;
    }

    printf("PASS >> Create buffer.\n\r");


    mt_exp *list_1;
    uint8_t n_list_1;
    create_obj(buffer, (void**)(&list_1), sizeof(mt_exp), &n_list_1);

    if(memcmp(list,list_1,n_list_1*sizeof(mt_exp)))
    {
        printf("ERROR >> Create object.\n\r");
        delete_frame(buffer);
        delete_obj(list_1); 
        return 1;
    }

    printf("PASS >> Create object.\n\r");

    delete_frame(buffer);
    delete_obj(list_1); 
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