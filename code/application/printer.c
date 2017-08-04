//
// printer.c
//

#include "printer.h"
#include "settings.h"

#include "time.h"
#include "flash.h"
#include "led.h"

#include "settings.h"
#include "heater.h"
#include "motion.h"


static uint32_t tic;
static uint32_t toc;

void printer_init(void) {
    //Perippheral layer
    time_init();
    led_init();

    //Application layer
    settings_load();
    motion_init();
    heater_init();

    tic = millis();
    toc = millis();
}

void printer_loop(void) {
    if (motion_available()) {
        toc = millis();
        if (toc - tic >= 500) {
            led_toggle();   
            tic = toc;
            motion_execute();
        }
    }
}

