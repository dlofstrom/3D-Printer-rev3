//
// adc.h
//


#ifndef ADC_H
#define ADC_H

#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

//Initialize adc
void adc_init(void);

//adc functions
bool adc_available(void);
int16_t adc_get(void);
bool adc_sample(void);

#endif
