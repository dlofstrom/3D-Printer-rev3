//
// time.h
//


#ifndef TIME_H
#define TIME_H

#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

void time_init(void);
uint32_t micros(void);
uint32_t millis(void);

#endif
