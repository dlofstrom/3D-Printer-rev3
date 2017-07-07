//
// switch.h
//


#ifndef SWITCH_H
#define SWITCH_H

#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

#define NUMBER_OF_SWITCHES 3
#define SWITCH_X_CHANNEL 0
#define SWITCH_X_PIN 30
#define SWITCH_Y_CHANNEL 1
#define SWITCH_Y_PIN 0
#define SWITCH_Z_CHANNEL 2
#define SWITCH_Z_PIN 1

void switch_init(void);
bool switch_get(uint32_t s);

#endif
