#ifndef M_TOOL_H
#define M_TOOL_H

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

/**
 * @struct mtool_frame
 * @brief Structure for defining the frame in mtool protocol
 */
typedef struct 
{
    uint8_t start;      /// frame start byte
    uint8_t command;    /// byte for command in protocol
    uint8_t size;       /// define the size of the data section in the protocol
    uint8_t data[256];  /// data section
    uint8_t checksum;   /// checksum section
}mtool_frame;


void mtool_set_param();
void mtool_start();
void mtool_stop();
void mtool_get_data(mtool_exp_data *data);

#endif // !M_TOOL_H