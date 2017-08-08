//
// stepper.h
//


#ifndef STEPPER_H
#define STEPPER_H

#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

#define NUMBER_OF_STEPPERS 4
#define STEPPER_DIR_POS 1
#define STEPPER_DIR_NEG 0
#define STEPPER_X_CHANNEL 0
#define STEPPER_X_STEP 18
#define STEPPER_X_DIR 19
#define STEPPER_X_EN 20
#define STEPPER_Y_CHANNEL 1
#define STEPPER_Y_STEP 14
#define STEPPER_Y_DIR 15
#define STEPPER_Y_EN 16
#define STEPPER_Z_CHANNEL 2
#define STEPPER_Z_STEP 25
#define STEPPER_Z_DIR 23
#define STEPPER_Z_EN 22
#define STEPPER_E_CHANNEL 3
#define STEPPER_E_STEP 28
#define STEPPER_E_DIR 27
#define STEPPER_E_EN 26

typedef struct {
    int x;
    int y;
    int z;
    int e;
} step_t;

void stepper_init();
void stepper_step(uint32_t s, uint32_t dir);
void stepper_enable(uint32_t s);
void stepper_disable(uint32_t s);

#endif
