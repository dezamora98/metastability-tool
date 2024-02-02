#ifndef M_TOOL_H
#define M_TOOL_H

#include <stdint.h>

typedef enum
{
    set_experiment = 0,
    get_experiment_data,
    start_experiment,
    stop_experiment,
    clear_data,
    end_enum_command,
} mtool_command;

typedef enum
{
    NO_ERROR = end_enum_command,
    ERROR_FRAME,
    ERROR_NOT_CONFIG,
    ERROR_EXP_STARTED,
} mtool_error;

/**
 * @struct mtool_exp_data
 * @brief Structure to store the result of the experiment.
 */
typedef struct
{
    uint32_t n_met;   /// Number of metastability events.
    float temp_chip;  /// Chip temperature
    float power_chip; /// Chip power supply
} mtool_exp_data;

/**
 * @struct m_tool_param
 * @brief Structure for defining the experiment setup parameters.
 */
typedef struct
{
    uint32_t exp_clock;       /// frequency
    uint32_t exp_sample_rate; /// experiment sample rate
    uint32_t exp_duration;    /// experiment duration
} mtool_exp_param;

/**
 * @struct mtool_frame
 * @brief Structure for defining the frame in mtool protocol
 */
struct
{
    uint8_t start;   /// frame start byte
    uint8_t command; /// byte for command in protocol
    uint8_t size;    /// define the size of the data section in the protocol
    union data       /// data section vector
    {
        uint8_t *byte;
        mtool_exp_data *exp;
        mtool_exp_param *param;
    };
    uint8_t checksum; /// checksum section
} mtool_frame;

/**
 * @brief set experiment parameters
 * @param list_exp experiment list
 * @param n_exp  number of experiments
 * @return mtool_error 
 */
mtool_error mtool_set_experiment(mtool_exp_param *list_exp_param, uint8_t n_exp_param);

/**
 * @brief obtain results of experiments
 * @param list_exp 
 * @param n_exp_data 
 * @return mtool_error 
 */
mtool_error mtool_get_data(mtool_exp_data *list_exp_data, uint8_t n_exp_data);

/**
 * @brief start experiments
 * @return mtool_error 
 */
mtool_error mtool_start();

/**
 * @brief force experiments to stop
 * @return mtool_error 
 */
mtool_error mtool_stop();

/**
 * @brief delete experiment data
 * @return mtool_error 
 */
mtool_error mtool_clear();

#endif // !M_TOOL_H