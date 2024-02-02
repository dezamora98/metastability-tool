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
typedef struct
{
    uint8_t start;     /// frame start byte
    uint8_t command;   /// byte for command in protocol
    uint16_t size;     /// define the size of the data section in the protocol
    uint8_t data[256]; /// data section
    uint8_t checksum;  /// checksum section
} mtool_frame;

/**
 * @brief mtool_set_experiment()
 * @param[in] list_exp experiment list
 * @param[in] n_exp  number of experiments
 * @return
 */
mtool_error mtool_set_experiment(mtool_exp_param *list_exp_param, uint16_t n_exp_param);

mtool_error mtool_start();
mtool_error mtool_stop();
mtool_error mtool_clear();
mtool_error mtool_get_data(mtool_exp_data *list_exp, uint16_t n_exp_data);

#endif // !M_TOOL_H