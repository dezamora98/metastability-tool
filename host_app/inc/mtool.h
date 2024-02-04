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
    NO_ERROR,
    ERROR_FRAME,
    ERROR_NOT_CONFIG,
    ERROR_EXP_STARTED,
} mtool_error;

typedef enum
{
    mt_exp_NOT_CONFIG,
    mt_exp_STOP,
    mt_exp_STARTED,
} mtool_exp_state;

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
 * @struct mtool_exp
 * @brief srgtucture for defining experiment
 */
typedef struct
{
    uint32_t id;           /// experiment id or address
    mtool_exp_state state; /// experiment state
    mtool_exp_param param; /// experiment setup parameters
    mtool_exp_data data;   /// experiment data
} mtool_exp;

/**
 * @struct mtool_frame
 * @brief Structure for defining the frame in mtool protocol
 */
typedef struct
{
    uint8_t start;   /// frame start byte
    uint8_t size;    /// define the size of the data section in the protocol
    uint8_t command; /// byte for command in protocol
    uint32_t addr;   ///
    union
    {
        uint8_t *byte;
        mtool_exp *exp;
        mtool_exp_param *exp_param;
        mtool_exp_data *exp_data;
    } data;           /// data section vector
    uint8_t checksum; /// checksum section
} mtool_frame;

typedef void* _mt_interface;
typedef mtool_error (_mt_interface_init)(_mt_interface*);
typedef mtool_error (_mt_interface_stop)(_mt_interface*);
typedef mtool_error (_mt_interface_tx)(_mt_interface,void*,size_t,uint32_t);
typedef mtool_error (_mt_interface_rx)(_mt_interface,void*,size_t,uint32_t);

typedef struct
{
    _mt_interface *interface;
    uint8_t tx_buffer[256];
    uint8_t tx_buffer[256];
} mtool;

mtool_error mt_init();

/**
 * @brief set experiment parameters
 * @param list_exp experiment list
 * @param n_exp  number of experiments
 * @return mtool_error
 */
mtool_error mt_set_experiment(mtool_exp *list_exp_param, uint8_t n_exp_param);

/**
 * @brief obtain results of experiments
 * @param list_exp
 * @param n_exp_data
 * @return mtool_error
 */
mtool_error mt_get_data(mtool_exp *list_exp_data, uint8_t n_exp);

/**
 * @brief start experiments
 * @return mtool_error
 */
mtool_error mt_start();

/**
 * @brief force experiments to stop
 * @return mtool_error
 */
mtool_error mt_stop();

/**
 * @brief delete experiment data
 * @return mtool_error
 */
mtool_error mt_clear();

#endif // !M_TOOL_H