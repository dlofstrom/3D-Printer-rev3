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
uint32_t millis(void);
void delay_ms(uint32_t ms);

#endif
