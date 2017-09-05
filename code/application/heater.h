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
    float current_temperature;
    float target_temperature;
    uint8_t adc_channel;
    uint32_t pwm_channel;
    uint32_t fan_channel;

    float *kp;
    float P;
    float *ki;
    float I;
    float *kd;
    float D;
    float *ilim;
} heater_t;

heater_t nozzle;
heater_t bed;

void heater_init(void);
void heater_regulate(heater_t *h, int regulate);
int heater_enabled(heater_t *h);
void heater_enable(heater_t *h);
void heater_disable(heater_t *h);
void heater_set_temperature(heater_t *h, float t);
float heater_get_temperature(heater_t *h);

#endif
