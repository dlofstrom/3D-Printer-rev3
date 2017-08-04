//
// axis.h
//

#ifndef AXIS_H
#define AXIS_H

#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

typedef struct {
    int position;
    float error;

    uint32_t stepper_channel;
    uint32_t switch_channel;
} axis_t;

void axis_init(void);
void axis_move(int8_t x, int8_t y, int8_t z, int8_t e);

#endif
