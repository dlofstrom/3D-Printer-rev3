//
// pwm.h
//


#ifndef PWM_H
#define PWM_H

#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

#define NO_PWM 6
#define NOZ_PIN 4
#define NOZ_PWM_CHANNEL 0
#define BED_PIN 5
#define BED_PWM_CHANNEL 1
#define FAN1_PIN 24
#define FAN1_PWM_CHANNEL 3
#define FAN2_PIN 29
#define FAN2_PWM_CHANNEL 2

//Initialize pwm
void pwm_init(void);
void pwm_set_duty(uint32_t channel, uint32_t value);

#endif
