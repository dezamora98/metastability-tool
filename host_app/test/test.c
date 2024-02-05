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

    mt_exp list[3] = {exp,exp,exp};
    uint8_t *buffer;
    int out;

    create_frame(&buffer, 10, set_experiment, list, sizeof(mt_exp), 3);
    
    if(memcmp(list,&buffer[3],sizeof(mt_exp)*3)){
        printf("ERROR >> Create buffer.\n\r");
        return 1;
    }
    
    printf("PASS >> Create buffer.\n\r");
    delete_frame(&buffer);
    return 0;
}

int main()
{
   int test;
   printf("init test\n\r");
   test = test_create_buffer();
   return test;
}