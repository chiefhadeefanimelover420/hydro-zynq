#ifndef ADC_H
#define ADC_H

#include "spi.h"
#include "types.h"

result_t init_adc(spi_driver_t *spi);

result_t write_adc_register(spi_driver_t *spi, const uint8_t reg, uint8_t data);

result_t read_adc_register(spi_driver_t *spi, const uint8_t reg, uint8_t *data);

#endif
