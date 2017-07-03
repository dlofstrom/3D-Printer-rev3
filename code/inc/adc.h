//
// adc.h
//


#ifndef ADC_H
#define ADC_H

#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

#define BED_ADC_INPUT ADC_CONFIG_PSEL_AnalogInput3
#define NOZ_ADC_INPUT ADC_CONFIG_PSEL_AnalogInput4

#define BED_ADC_CHANNEL 0
#define NOZ_ADC_CHANNEL 1

//Initialize adc
void adc_init(void);

//adc functions
int16_t adc_get(uint8_t channel);
void adc_sample(void);

#endif
