//
// axis.c
//

#include "axis.h"
#include "stepper.h"
#include "switch.h"
#include "uart.h"

static axis_t x;
static axis_t y;
static axis_t z;
static axis_t e;
static axis_t *axis_array[4] = {&x, &y, &z, &e};

void axis_init(void) {
    x = (axis_t){0, 0, 0.0, STEPPER_X_CHANNEL, SWITCH_X_CHANNEL};
    y = (axis_t){0, 0, 0.0, STEPPER_Y_CHANNEL, SWITCH_Y_CHANNEL};
    z = (axis_t){0, 0, 0.0, STEPPER_Z_CHANNEL, SWITCH_Z_CHANNEL};
    e = (axis_t){0, 0, 0.0, STEPPER_E_CHANNEL, -1};
    
    stepper_init();
    switch_init();
}

void axis_move(int8_t x, int8_t y, int8_t z, int8_t e) {
    //Check axis endstop, position and move direction
}

void axis_set_positioning(int p) {
    debug("Set positioning %d\n", p);
    x.positioning = p;
    y.positioning = p;
    z.positioning = p;
    e.positioning = p;
}

int axis_get_position(int a) {
    return axis_array[a]->position;
}

float axis_get_error(int a) {
    return axis_array[a]->error;
}

int axis_get_positioning(int a) {
    return axis_array[a]->positioning;
}

void axis_set_position(int a, int p) {
    axis_array[a]->position = p;
}

void axis_set_error(int a, float e) {
    axis_array[a]->error = e;
}
