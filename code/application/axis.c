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
static int feedrate;

static axis_move_t move_buffer[MOVE_BUFFER_SIZE];
static int move_buffer_head;
static int move_buffer_tail;

void axis_init(void) {
    x = (axis_t){.positioning=0, .position=0, .error=0.0, .stepper_channel=STEPPER_X_CHANNEL, .switch_channel=SWITCH_X_CHANNEL};
    y = (axis_t){.positioning=0, .position=0, .error=0.0, .stepper_channel=STEPPER_Y_CHANNEL, .switch_channel=SWITCH_Y_CHANNEL};
    z = (axis_t){.positioning=0, .position=0, .error=0.0, .stepper_channel=STEPPER_Z_CHANNEL, .switch_channel=SWITCH_Z_CHANNEL};
    e = (axis_t){.positioning=0, .position=0, .error=0.0, .stepper_channel=STEPPER_E_CHANNEL, .switch_channel=-1};
    feedrate = 10;
    
    move_buffer_head = 0;
    move_buffer_tail = 0;
    
    stepper_init();
    switch_init();
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

void axis_schedule(int xs, int ys, int zs, int es, int fs) {
    debug("Axis schedule xs:%d ys:%d zs:%d es:%d fs:%d\n", xs, ys, zs, es, fs);

    axis_move_t *am = &move_buffer[move_buffer_head];
    move_buffer_head = (move_buffer_head + 1) % MOVE_BUFFER_SIZE;

    am->t = 0;
    am->x = 0;
    am->y = 0;
    am->z = 0;
    am->e = 0;
    
    am->x_steps = xs;
    am->y_steps = ys;
    am->z_steps = zs;
    am->e_steps = es;
    am->f_goal = fs;
    
    int a[4] = {xs, ys, zs, es};
    int max = 0;
    int i;
    for (i = 0; i < 4; i++) {
        if (a[i] < 0) max = (-a[i] > max) ? -a[i] : max;
        else max = (a[i] > max) ? a[i] : max;
    }
    am->steps = max;
}

int axis_available(void) {
    if (move_buffer_head != move_buffer_tail) return 1;
    else return 0;
}

int axis_move(void) {
    //Look att the first item in buffer and do move
    axis_move_t *am = &move_buffer[move_buffer_tail];
    if (am->steps > 0) {
        if (am->f_goal > 0) feedrate += (am->f_goal - feedrate)/(am->steps - am->t);
        am->t++;
        
        //Calculate which move to do
        step_t step_to_take = {0,0,0,0};
        if ((int)((float)(am->t*am->x_steps)/(am->steps) - am->x + 0.5) >= 1) step_to_take.x = 1; //Step x positive
        else if ((int)((float)(am->t*am->x_steps)/(am->steps) - am->x - 0.5) <= -1) step_to_take.x = -1; //Step x negative
        if ((int)((float)(am->t*am->y_steps)/(am->steps) - am->y + 0.5) >= 1) step_to_take.y = 1;
        else if ((int)((float)(am->t*am->y_steps)/(am->steps) - am->y - 0.5) <= -1) step_to_take.y = -1;
        if ((int)((float)(am->t*am->z_steps)/(am->steps) - am->z + 0.5) >= 1) step_to_take.z = 1;
        else if ((int)((float)(am->t*am->z_steps)/(am->steps) - am->z - 0.5) <= -1) step_to_take.z = -1;
        if ((int)((float)(am->t*am->e_steps)/(am->steps) - am->e + 0.5) >= 1) step_to_take.e = 1;
        else if ((int)((float)(am->t*am->e_steps)/(am->steps) - am->e - 0.5) <= -1) step_to_take.e = -1;

        //Set steps
        am->x += step_to_take.x;
        am->y += step_to_take.y;
        am->z += step_to_take.z;
        am->e += step_to_take.e;
        //debug("x:%d y:%d z:%d e:%d f:%d\n", step_to_take.x, step_to_take.y, step_to_take.z, step_to_take.e, feedrate);

        //Check axis endstop and move direction
        if (step_to_take.x != 0 && switch_get(x.switch_channel)) {
            debug("Switch X is asserted\n");
            return -1;
        }
        if (step_to_take.y != 0 && switch_get(y.switch_channel)) {
            debug("Switch Y is asserted\n");
            return -1;
        }
        if (step_to_take.z != 0 && switch_get(z.switch_channel)) {
            debug("Switch Z is asserted\n");
            return -1;
        }
        if (step_to_take.e != 0 && switch_get(e.switch_channel)) {
            debug("Switch E is asserted\n");
            return -1;
        }
        
        stepper_step(&step_to_take);
    } else {
        if (am->f_goal > 0) feedrate = am->f_goal;
    }
    
    //Check if item done, then remove it from the buffer
    if (am->t >= am->steps) {
        move_buffer_tail = (move_buffer_tail + 1) % MOVE_BUFFER_SIZE;
        debug("Move done x:%d y:%d z:%d e:%d\n", am->x, am->y, am->z, am->e);
    }

    //TODO: return feedrate?
    return 1;
}
