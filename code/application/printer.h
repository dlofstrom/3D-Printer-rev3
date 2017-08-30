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
void printer_loop(void);

int printer_get_temperature(void);

void printer_set_positioning_absolute(void);
void printer_set_positioning_relative(void);

int printer_move(int nargs, gcode_parameter_t *gp);

#endif
