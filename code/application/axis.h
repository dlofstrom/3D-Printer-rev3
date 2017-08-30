//
// axis.h
//

#ifndef AXIS_H
#define AXIS_H

#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

#define ABSOLUTE 0
#define RELATIVE 1

#define AXIS_X 0
#define AXIS_Y 1
#define AXIS_Z 2
#define AXIS_E 3

#define MOVE_BUFFER_SIZE 5

typedef struct {
    int positioning;
    int position;
    float error;

    uint32_t stepper_channel;
    uint32_t switch_channel;
} axis_t;


typedef struct {
    int t;
    int x;
    int y;
    int z;
    int e;
    int steps;
    int x_steps;
    int y_steps;
    int z_steps;
    int e_steps;
    int f_goal;
} axis_move_t;

void axis_init(void);
void axis_set_positioning(int p);
int axis_get_position(int a);
float axis_get_error(int a);
int axis_get_positioning(int a);
void axis_set_position(int a, int p);
void axis_set_error(int a, float e);
void axis_schedule(int xs, int ys, int zs, int es, int fsx);
int axis_available(void);
int axis_buffer_full(void);
int axis_move(void);

#endif
