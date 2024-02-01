#ifndef MET_TOOL_H
#define MET_TOOL_H

#include <stdint.h>

typedef struct{
    uint32_t n_met;
    float temp_chip;
    float volt_source;
}tool_frame;

typedef struct{
    uint32_t n_met;
    float temp_chip;
    float volt_source;
}host_frame;



#endif // !MET_TOOL_H