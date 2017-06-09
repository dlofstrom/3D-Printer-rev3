//
// adc.h
//


#ifndef ADC_H
#define ADC_H

#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

#define AIN0 0
#define AIN1 1
#define AIN2 2
#define AIN3 3
#define AIN4 4
#define AIN5 5
#define AIN6 6
#define AIN7 7

//Initialize adc
void adc_init(uint8_t channels);

//adc functions
bool adc_available(void);
int16_t adc_get(uint8_t channel);
bool adc_sample(void);

#endif
