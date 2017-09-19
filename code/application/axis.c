//
// axis.c
//

#include "axis.h"
#include "stepper.h"
#include "switch.h"
#include "uart.h"
#include "time.h"
#include "settings.h"

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
    feedrate = 1000;
    
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
    settings_t *s = settings();
    
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
    
    int steps[4] = {xs, ys, zs, es};
    const float *spmms[4] = {&(s->spmmx), &(s->spmmy), &(s->spmmy), &(s->spmmz)};
    am->steps = 0;
    am->spmm = spmms[0];
    int i;
    for (i = 0; i < 4; i++) {
        if (steps[i] < 0) {
            if (-steps[i] > am->steps) {
                am->steps = -steps[i];
                am->spmm = spmms[i];
            }
        } else {
            if (steps[i] > am->steps) {
                am->steps = steps[i];
                am->spmm = spmms[i];
            }
        }
    }
}

int axis_available(void) {
    if (move_buffer_head != move_buffer_tail) return 1;
    else return 0;
}

int axis_buffer_full(void) {
    if (((move_buffer_head + 1) % MOVE_BUFFER_SIZE) == move_buffer_tail) return 1;
    else return 0;
}

void axis_move_from_switch(int a) {
    settings_t *s = settings();
    uint32_t sc;
    step_t ts = {0,0,0,0};
    float spmm;
    if (a == AXIS_X) {
        sc = x.switch_channel;
        ts.x = -1*s->sdx*s->espx;
        spmm = s->spmmx;
    } else if (a == AXIS_Y) {
        sc = y.switch_channel;
        ts.y = -1*s->sdy*s->espy;
        spmm = s->spmmy;
    } else if (a == AXIS_Z) {
        sc = z.switch_channel;
        ts.z = -1*s->sdz*s->espz;
        spmm = s->spmmz;
    } else return;
        
    //Force step back from switch
    while (switch_get(sc)) {
        stepper_step(&ts);
        delay_us(100);
    }
    int i;
    for (i = 0; i < 3*spmm; i++) {
        stepper_step(&ts);
        delay_us(100);
    }
}

int axis_move(void) {
    //Look att the first item in buffer and do move
    axis_move_t *am = &move_buffer[move_buffer_tail];
    if (am->steps > 0) {
        if (am->f_goal > 0) feedrate += (am->f_goal - feedrate)/(am->steps - am->t);
        am->t++;
        
        //Calculate which move to do
        step_t step_to_take = {0,0,0,0};
        if ((int)((float)am->t/am->steps*am->x_steps - am->x + 0.5) >= 1) step_to_take.x = 1; //Step x positive
        else if ((int)((float)am->t/am->steps*am->x_steps - am->x - 0.5) <= -1) step_to_take.x = -1; //Step x negative
        if ((int)((float)am->t/am->steps*am->y_steps - am->y + 0.5) >= 1) step_to_take.y = 1;
        else if ((int)((float)am->t/am->steps*am->y_steps - am->y - 0.5) <= -1) step_to_take.y = -1;
        if ((int)((float)am->t/am->steps*am->z_steps - am->z + 0.5) >= 1) step_to_take.z = 1;
        else if ((int)((float)am->t/am->steps*am->z_steps - am->z - 0.5) <= -1) step_to_take.z = -1;
        if ((int)((float)am->t/am->steps*am->e_steps - am->e + 0.5) >= 1) step_to_take.e = 1;
        else if ((int)((float)am->t/am->steps*am->e_steps - am->e - 0.5) <= -1) step_to_take.e = -1;

        //Set steps
        am->x += step_to_take.x;
        am->y += step_to_take.y;
        am->z += step_to_take.z;
        am->e += step_to_take.e;
        //debug("x:%d y:%d z:%d e:%d f:%d\n", step_to_take.x, step_to_take.y, step_to_take.z, step_to_take.e, feedrate);

        //Check axis endstop and move direction
        if (step_to_take.x != 0 && switch_get(x.switch_channel)) {
            debug("Switch X is asserted\n");
            //Force step back from switch
            axis_move_from_switch(AXIS_X);
            am->x = 0;
            am->x_steps = 0;
            step_to_take.x = 0;
            //Check if reset is done if so force quit
            if (am->x_steps == 0 && am->y_steps == 0 && am->z_steps == 0) am->steps = 0;
        }
        if (step_to_take.y != 0 && switch_get(y.switch_channel)) {
            debug("Switch Y is asserted\n");
            //Force step back from switch
            axis_move_from_switch(AXIS_Y);
            am->y = 0;
            am->y_steps = 0;
            step_to_take.y = 0;
            //Check if reset is done if so force quit
            if (am->x_steps == 0 && am->y_steps == 0 && am->z_steps == 0) am->steps = 0;
        }
        if (step_to_take.z != 0 && switch_get(z.switch_channel)) {
            debug("Switch Z is asserted\n");
            //Force step back from switch
            axis_move_from_switch(AXIS_Z);
            am->z = 0;
            am->z_steps = 0;
            step_to_take.z = 0;
            //Check if reset is done if so force quit
            if (am->x_steps == 0 && am->y_steps == 0 && am->z_steps == 0) am->steps = 0;
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



    //Return feedrate converted to delay time
    float wait_time = (float)(60 * TIME_FREQUENCY)/(*am->spmm * feedrate);
    if (wait_time < 1.0) return 1;
    else return (int)(wait_time + 0.5);
}


void axis_disable(void) {
    stepper_disable(x.stepper_channel);
    stepper_disable(y.stepper_channel);
    stepper_disable(z.stepper_channel);
    stepper_disable(e.stepper_channel);
}
