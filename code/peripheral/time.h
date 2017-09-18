//
// time.h
//


#ifndef TIME_H
#define TIME_H

#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

#define TIME_FREQUENCY 50000 //If this is changed, fix prescaler settings

void time_init(void);
uint32_t millis(void);
uint32_t ticks(void);
void delay_us(uint32_t us);
void system_reset(void);

#endif
