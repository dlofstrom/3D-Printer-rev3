//
// printer.h
//


#ifndef PRINTER_H
#define PRINTER_H

#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

void printer_init(void);
void printer_loop(void);

int printer_get_temp_nozzle(void);
int printer_get_temp_bed(void);

#endif
