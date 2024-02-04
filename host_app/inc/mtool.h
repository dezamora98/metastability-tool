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
} mt_command;

typedef enum
{
    NO_ERROR,
    ERROR_FRAME,
    ERROR_NOT_CONFIG,
    ERROR_EXP_STARTED,
} mt_error;

typedef enum
{
    mt_exp_NOT_CONFIG,
    mt_exp_STOP,
    mt_exp_STARTED,
} mt_exp_state;

/**
 * @struct mt_exp_data
 * @brief Structure to store the result of the experiment.
 */
typedef struct
{
    uint32_t n_met;   /// Number of metastability events.
    float temp_chip;  /// Chip temperature
    float power_chip; /// Chip power supply
} mt_exp_data;

/**
 * @struct m_tool_param
 * @brief Structure for defining the experiment setup parameters.
 */
typedef struct
{
    uint32_t exp_clock;       /// frequency
    uint32_t exp_sample_rate; /// experiment sample rate
    uint32_t exp_duration;    /// experiment duration
} mt_exp_param;

/**
 * @struct mt_exp
 * @brief srgtucture for defining experiment
 */
typedef struct
{
    uint32_t id;        /// experiment id or address
    mt_exp_state state; /// experiment state
    mt_exp_param param; /// experiment setup parameters
    mt_exp_data data;   /// experiment data
} mt_exp;

/**
 * @struct mt_frame
 * @brief Structure for defining the frame in mt protocol
 */
typedef struct
{
    uint8_t start;   /// frame start byte
    uint8_t size;    /// define the size of the data section in the protocol
    uint8_t command; /// byte for command in protocol
    union
    {
        uint8_t *byte;
        mt_exp *exp;
        mt_exp_param *exp_param;
        mt_exp_data *exp_data;
    } data;           /// data section vector
    uint8_t checksum; /// checksum section
} mt_frame;

typedef void *_mt_interface;
typedef mt_error(_mt_interface_init)(_mt_interface *);
typedef mt_error(_mt_interface_stop)(_mt_interface *);
typedef mt_error(_mt_interface_tx)(_mt_interface, void *, size_t, uint32_t);
typedef mt_error(_mt_interface_rx)(_mt_interface, void *, size_t, uint32_t);

/**
 * @struct mt
 * @brief <añadir comentario>
 */
typedef struct
{
    _mt_interface *interface;
    _mt_interface_init *interface_init;
    _mt_interface_stop *interface_stop;
    _mt_interface_tx *interface_tx;
    _mt_interface_rx *interface_rx;
    uint8_t *tx_buffer;
    uint8_t *rx_buffer;
    uint16_t size_bufer;
} mt;

mt_error mt_init(mt* mtool, _mt_interface *interface, _mt_interface_init *interface_init,
                 _mt_interface_stop *interface_stop, _mt_interface_rx *_mt_interface_rx,
                 _mt_interface_tx *interface_tx, uint8_t *tx_buffer, uint8_t *rx_buffer,
                 uint16_t size_buffer);

/**
 * @brief set experiment parameters
 * @param list_exp experiment list
 * @param n_exp  number of experiments
 * @return mt_error
 */
mt_error mt_set_exp(mt* mtool,mt_exp *list_exp, uint8_t n_exp);

/**
 * @brief obtain results of experiments
 * @param list_exp
 * @param n_data
 * @return mt_error
 */
mt_error mt_get_exp(mt* mtool,mt_exp *list_exp, uint8_t n_exp);

/**
 * @brief start experiments
 * @return mt_error
 */
mt_error mt_start(mt* mtool,mt_exp *list_exp, uint8_t n_exp);

/**
 * @brief force experiments to stop
 * @return mt_error
 */
mt_error mt_stop(mt* mtool,mt_exp *list_exp, uint8_t n_exp);

/**
 * @brief delete experiment data
 * @return mt_error
 */
mt_error mt_clear(mt* mtool);

#endif // !M_TOOL_H