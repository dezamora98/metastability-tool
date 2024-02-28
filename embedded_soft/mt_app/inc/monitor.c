#include "monitor.h"
#include "FreeRTOS.h"
#include "task.h"
#include "xsysmon.h"
#include <stdio.h>

static monitor_t xMonitor;

void ADCTask(void *vp);

float get_temp()
{
    return xMonitor.temp;
}

float get_vint()
{
    return xMonitor.vint;
}

BaseType_t monitor_init()
{
    XSysMon *sysmon = &(xMonitor.sysmon);
    XSysMon_Config *ConfigPtr;

    ConfigPtr = XSysMon_LookupConfig(XPAR_SYSMON_0_DEVICE_ID);
    if (ConfigPtr == NULL)
    {
        printf("\t (E) INIT_MONITOR.\r\n");
        return XST_FAILURE;
    }
    if (XSysMon_CfgInitialize(sysmon, ConfigPtr, ConfigPtr->BaseAddress) != XST_SUCCESS)
    {
        printf("\t (E) INIT_MONITOR.\r\n");
        return XST_FAILURE;
    }

    printf("\t (P) INIT_MONITOR.\r\n");
    /*
     * Self Test the System Monitor/ADC device.
     */
    if (XSysMon_SelfTest(sysmon) != XST_SUCCESS)
    {
        printf("\t (E) TEST_MONITOR.\r\n");
        return XST_FAILURE;
    }

    printf("\t (P) TEST_MONITOR.\r\n");

    /*
     * Disable the Channel Sequencer before configuring the Sequence
     * registers.
     */
    XSysMon_SetSequencerMode(sysmon, XSM_SEQ_MODE_SAFE);

    /*
     * Setup the Averaging to be done for the channels in the
     * Configuration 0 register as 64 samples:
     */
    XSysMon_SetAvg(sysmon, XSM_AVG_64_SAMPLES);

    /*
     * Setup the Sequence register for 1st Auxiliary channel
     * Setting is:
     *	- Add acquisition time by 6 ADCCLK cycles.
     *	- Bipolar Mode
     *
     * Setup the Sequence register for 16th Auxiliary channel
     * Setting is:
     *	- Add acquisition time by 6 ADCCLK cycles.
     *	- Unipolar Mode
     */
    if (XSysMon_SetSeqInputMode(sysmon, XSM_SEQ_CH_VCCINT | XSM_SEQ_CH_TEMP) != XST_SUCCESS)
    {
        printf("\t (E) CONFIG_SEQUENCE_XADC.\r\n");
        return XST_FAILURE;
    }

    printf("\t (P) CONFIG_SEQUENCE.\r\n");

    if (XSysMon_SetSeqAcqTime(sysmon, XSM_SEQ_CH_VCCINT | XSM_SEQ_CH_TEMP) != XST_SUCCESS)
    {
        printf("\t (E) CONFIG_TIME_XADC.\r\n");
        return XST_FAILURE;
    }

    printf("\t (P) CONFIG_TIME_XADC.\r\n");
    /*
     * Enable the averaging on the following channels in the Sequencer
     * registers:
     * 	- On-chip Temperature
     * 	- On-chip VCCINT supply sensor
     */
    if (XSysMon_SetSeqAvgEnables(sysmon, XSM_SEQ_CH_VCCINT | XSM_SEQ_CH_TEMP) != XST_SUCCESS)
    {
        printf("\t (E) CONFIG_ENABLE_AVERAGE_XADC.\r\n");
        return XST_FAILURE;
    }

    printf("\t (P) CONFIG_ENABLE_AVERAGE_XADC.\r\n");

    /*
     * Enable the following channels in the Sequencer registers:
     * 	- On-chip Temperature
     * 	- 1st Auxiliary Channel
     * 	- 16th Auxiliary Channel
     */
    if(XSysMon_SetSeqChEnables(sysmon, XSM_SEQ_CH_TEMP | XSM_SEQ_CH_VCCINT) != XST_SUCCESS)
    {
        printf("\t (E) CONFIG_ENABLE_CH_XADC.\r\n");
        return XST_FAILURE;
    }

    printf("\t (P) CONFIG_ENABLE_CH_XADC.\r\n");

    /*
     * Set the ADCCLK frequency equal to 1/32 of System clock for the System
     * Monitor/ADC in the Configuration Register 2.
     */
    XSysMon_SetAdcClkDivisor(sysmon, 32);

    /*
     * Enable the Channel Sequencer in continuous sequencer cycling mode.
     */
    XSysMon_SetSequencerMode(sysmon, XSM_SEQ_MODE_CONTINPASS);

    if (xTaskCreate(ADCTask, "Monitor_Task", 256, &xMonitor, tskIDLE_PRIORITY+1, xMonitor.ADCTaskHandle) != pdPASS)
    {
        printf("\t (E) RUN_MONITOR.\r\n");
        return XST_FAILURE;
    }

    printf("\t (P) RUN_MONITOR.\r\n");
    return XST_SUCCESS;
}

void ADCTask(void *vp)
{
    monitor_t *sysmon = (monitor_t *)vp;

    while (1)
    {
        /*
         * Wait till the End of Sequence occurs
         */
        XSysMon_GetStatus(&sysmon->sysmon); /* Clear the old status */
        while ((XSysMon_GetStatus(&sysmon->sysmon) & XSM_SR_EOS_MASK) != XSM_SR_EOS_MASK)
        {
            vTaskDelay(100);
        }

        sysmon->temp = XSysMon_RawToTemperature(XSysMon_GetAdcData(&sysmon->sysmon, XSM_CH_TEMP));
        sysmon->vint = XSysMon_RawToVoltage(XSysMon_GetAdcData(&sysmon->sysmon, XSM_CH_VCCINT));

        printf("\t(I) Temperatura = %f\r\n \t(I) VCC = %f\r\n", sysmon->temp, sysmon->vint);

        vTaskDelay(pdMS_TO_TICKS(250));
    }
}
