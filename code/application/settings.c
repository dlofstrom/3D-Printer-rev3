//
// settings.c
//

#include "settings.h"
#include "uart.h"

static settings_t s;

settings_t *settings_load(void) {
    debug("Settings load\n");
    s = (settings_t){4,4,4,4,100,100,100};
    return &s;
}

settings_t *settings(void) {
    return &s;
}

void settings_store(settings_t *s) {
    debug("Settings store\n");
}
