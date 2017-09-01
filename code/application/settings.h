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
    int spmmx;
    int spmmy;
    int spmmz;
    int spmme;
    //Build volume
    int bvx;
    int bvy;
    int bvz;
    //Endstop position (-1 beginning, 1 end)
    int espx;
    int espy;
    int espz;
    //Stepper direction (1,-1)
    int sdx;
    int sdy;
    int sdz;
    int sde;
} settings_t;

settings_t *settings_load(void);
settings_t *settings(void);
void settings_store(settings_t *s);

#endif
