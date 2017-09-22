//
// settings.c
//

#include "settings.h"
#include "uart.h"

static settings_t s;

settings_t *settings_load(void) {
    debug("Settings load\n");
    s = (settings_t){.spmmx=160.0, .spmmy=160.0, .spmmz=400.0, .spmme=155.0,
                     .bvx=120, .bvy=115, .bvz=112,
                     .espx=-1, .espy=-1, .espz=1,
                     .sdx=-1, .sdy=-1, .sdz=-1, .sde=1,
                     .nozzle_kp=25.0, .nozzle_ki=0.35, .nozzle_kd=10.0, .nozzle_ilim=1024.0,
                     .bed_kp=20.0, .bed_ki=0.8, .bed_kd=10.0, .bed_ilim=1024.0};
    return &s;
}

settings_t *settings(void) {
    return &s;
}

void settings_store(settings_t *s) {
    debug("Settings store\n");
}
