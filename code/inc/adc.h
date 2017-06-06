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
uint32_t adc_get(void);

#endif
