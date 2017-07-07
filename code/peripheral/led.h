//
// led.h
//


#ifndef LED_H
#define LED_H

#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

#define LED_PIN 11

void led_init(void);
void led_set(void);
void led_clear(void);
void led_toggle(void);


#endif
