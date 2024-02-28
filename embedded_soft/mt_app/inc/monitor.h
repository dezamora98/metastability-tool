/**
 * @file monitor.h
 * @author Daniel Enquique Zamora Sifredo (dezamora98@gmail.com)
 * @brief 
 * @version 0.1
 * @date 2024-02-27
 * 
 * @copyright Copyright (c) 2024
 * 
 */

#ifndef MONITOR_H
#define MONITOR_H

#include "FreeRTOS.h"
#include "task.h"
#include "xsysmon.h"

typedef struct {
    float temp;
    float vint;
    XSysMon sysmon;
    xTaskHandle ADCTaskHandle;
}monitor_t;

BaseType_t monitor_init();
float get_temp();
float get_vint();

#endif // !MONITOR_H