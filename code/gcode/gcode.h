//
// This is the main include file for the gcode library
// It parses and executes G-code functions
//
// gcode.h
//

#ifndef GCODE_H
#define GCODE_H

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// Single G-code parameter
typedef struct {
    char type;
    int32_t value;
} gcode_parameter_t;

// Parse G-code command
int32_t gcode_parse(const char *s);

// Extract G-code parameter (similar to strtok)
int32_t gcode_get_parameter(char **s, gcode_parameter_t *gp);

#endif
