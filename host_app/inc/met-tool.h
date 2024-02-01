#ifndef MET_TOOL_H
#define MET_TOOL_H

#include <stdint.h>

/**
 * @struct mtool_exp_data
 * @brief Structure to store the result of the experiment.
 */
typedef struct
{
    uint32_t n_met;     ///< Number of metastability events.
    float temp_chip;    ///< Chip temperature
    float power_chip;   ///< Chip power supply
} mtool_exp_data;


/**
 * @struct m_tool_param
 * @brief Structure for defining the experiment setup parameters.
 */
typedef struct 
{
    uint64_t exp_clock;
    uint64_t sample_rate;

}mtool_exp_param;


void mtool_set_param();
void mtool_start();
void mtool_stop();
void mtool_get_data(mtool_exp_data *data);

#endif // !MET_TOOL_H