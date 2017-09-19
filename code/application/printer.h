//
// printer.h
//


#ifndef PRINTER_H
#define PRINTER_H

#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

#include "gcode.h"

void printer_init(void);
int printer_ready(void);
int printer_waiting(void);
void printer_loop(void);

int printer_get_temperature(void);
void printer_set_nozzle_temperature(float temp, int wait);
void printer_set_bed_temperature(float temp, int wait);
void printer_set_fan_speed(int speed);

void printer_set_nozzle_p_value(float p);
void printer_set_nozzle_i_value(float i);
void printer_set_nozzle_d_value(float d);
void printer_set_nozzle_ilim_value(float ilim);
void printer_set_bed_p_value(float p);
void printer_set_bed_i_value(float i);
void printer_set_bed_d_value(float d);
void printer_set_bed_ilim_value(float ilim);

void printer_set_positioning_absolute(void);
void printer_set_positioning_relative(void);
void printer_set_position(int nargs, gcode_parameter_t *gp);

int printer_reset(int nargs, gcode_parameter_t *gp);
int printer_move(int nargs, gcode_parameter_t *gp);
void printer_disable_steppers(void);

#endif
