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
    int a;
} settings_t;

settings_t *settings_load(void);
void settings_store(settings_t *s);

#endif
