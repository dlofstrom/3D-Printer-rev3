//
// settings.h
//


#ifndef SETTINGS_H
#define SETTINGS_H

#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

typedef struct {
    //Steps per mm
    float spmmx;
    float spmmy;
    float spmmz;
    float spmme;
    //Build volume
    float bvx;
    float bvy;
    float bvz;
    //Endstop position (-1 beginning, 1 end)
    int espx;
    int espy;
    int espz;
    //Stepper direction (1,-1)
    int sdx;
    int sdy;
    int sdz;
    int sde;
    //PID constants
    float nozzle_kp;
    float nozzle_ki;
    float nozzle_kd;
    float nozzle_ilim;
    float bed_kp;
    float bed_ki;
    float bed_kd;
    float bed_ilim;
} settings_t;

settings_t *settings_load(void);
settings_t *settings(void);
void settings_store(settings_t *s);

#endif
