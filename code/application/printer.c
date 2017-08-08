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
#include "axis.h"
#include "uart.h"

static uint32_t tic;
static uint32_t toc;

void printer_init(void) {
    //Perippheral layer
    time_init();
    led_init();

    //Application layer
    settings_load();
    axis_init();
    heater_init();

    tic = millis();
    toc = millis();
}

void printer_loop(void) {
    if (axis_available()) {
        toc = millis();
        if (toc - tic >= 500) {
            led_toggle();   
            tic = toc;
            axis_move();
        }
    }
}



int printer_get_temp_nozzle(void) {
    return (int)heater_get_temperature(&nozzle);
}

int printer_get_temp_bed(void) {
    return (int)heater_get_temperature(&bed);
}

void printer_set_positioning_absolute(void) {
    axis_set_positioning(ABSOLUTE);
}

void printer_set_positioning_relative(void) {
    axis_set_positioning(RELATIVE);
}

int printer_move(int nargs, gcode_parameter_t *gp) {
    int xs = 0;
    int ys = 0;
    int zs = 0;
    int es = 0;
    int fs = 0;

    debug("Before: xp%d xe%f yp%d ye%f zp%d ze%f ep%d ee%f\n",
          axis_get_position(AXIS_X), axis_get_error(AXIS_X),
          axis_get_position(AXIS_Y), axis_get_error(AXIS_Y),
          axis_get_position(AXIS_Z), axis_get_error(AXIS_Z),
          axis_get_position(AXIS_E), axis_get_error(AXIS_E));
    
    //Convert floats (in mm) to integer steps
    //Handle axis positioning mode
    //Set new position and error
    settings_t *s = settings();
    int i;
    for (i = 0; i < nargs; i++) {
        //debug("%c%f\n", gp[i].type, gp[i].value);
        if (gp[i].type == 'X') {
            xs = (int)(gp[i].value*(s->spmmx) - axis_get_error(AXIS_X) + 0.5); //Calculate mm to steps
            if (axis_get_positioning(AXIS_X) == ABSOLUTE) xs -= axis_get_position(AXIS_X); //Handle current postion if absolute
            if (axis_get_position(AXIS_X) + xs < 0 || axis_get_position(AXIS_X) + xs > s->bvx) return -1; //Check boundries
            axis_set_position(AXIS_X, axis_get_position(AXIS_X) + xs); //Update position
            axis_set_error(AXIS_X, xs - (gp[i].value*(s->spmmx) - axis_get_error(AXIS_X))); //Update error
        } else if (gp[i].type == 'Y') {
            ys = (int)(gp[i].value*(s->spmmy) - axis_get_error(AXIS_Y) + 0.5);
            if (axis_get_positioning(AXIS_Y) == ABSOLUTE) ys -= axis_get_position(AXIS_Y);
            if (axis_get_position(AXIS_Y) + ys < 0 || axis_get_position(AXIS_Y) + ys > s->bvy) return -1;
            axis_set_position(AXIS_Y, axis_get_position(AXIS_Y) + ys);
            axis_set_error(AXIS_Y, ys - (gp[i].value*(s->spmmy) - axis_get_error(AXIS_Y)));
        } else if (gp[i].type == 'Z') {
            zs = (int)(gp[i].value*(s->spmmz) - axis_get_error(AXIS_Z) + 0.5);
            if (axis_get_positioning(AXIS_Z) == ABSOLUTE) zs -= axis_get_position(AXIS_Z);
            if (axis_get_position(AXIS_Z) + zs < 0 || axis_get_position(AXIS_Z) + zs > s->bvz) return -1;
            axis_set_position(AXIS_Z, axis_get_position(AXIS_Z) + zs);
            axis_set_error(AXIS_Z, zs - (gp[i].value*(s->spmmz) - axis_get_error(AXIS_Z)));
        } else if (gp[i].type == 'E') {
            xs = (int)(gp[i].value*(s->spmme) - axis_get_error(AXIS_E) + 0.5);
            if (axis_get_positioning(AXIS_E) == ABSOLUTE) es -= axis_get_position(AXIS_E);
            axis_set_position(AXIS_E, axis_get_position(AXIS_E) + es);
            axis_set_error(AXIS_E, es - (gp[i].value*(s->spmme) - axis_get_error(AXIS_E)));
        } else if (gp[i].type == 'F') {
            fs = (int)gp[i].value;
        }
    }
    
    //Schedule motion
    axis_schedule(xs, ys, zs, es, fs);
    
    return 0;
}
