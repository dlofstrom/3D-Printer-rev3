//
// axis.c
//

#include "axis.h"
#include "stepper.h"
#include "switch.h"

static axis_t x;
static axis_t y;
static axis_t z;
static axis_t e;

void axis_init(void) {
    x = (axis_t){0, 0.0, STEPPER_X_CHANNEL, SWITCH_X_CHANNEL};
    y = (axis_t){0, 0.0, STEPPER_Y_CHANNEL, SWITCH_Y_CHANNEL};
    z = (axis_t){0, 0.0, STEPPER_Z_CHANNEL, SWITCH_Z_CHANNEL};
    e = (axis_t){0, 0.0, STEPPER_E_CHANNEL, -1};
    
    stepper_init();
    switch_init();
}

void axis_move(int8_t x, int8_t y, int8_t z, int8_t e) {
    //Check axis endstop, position and move direction
}
