//
// heater.h
//


#ifndef HEATER_H
#define HEATER_H

#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

typedef struct {
    int enabled;
    uint8_t adc_channel;
    uint32_t pwm_channel;
} heater_t;

void heater_init(void);
void heater_regulate(void);
void heater_enable(void);
void heater_disable(void);
void heater_set_temperature(float t);
float heater_temperature(void);

#endif
