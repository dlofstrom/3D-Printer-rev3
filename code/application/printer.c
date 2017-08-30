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

static uint32_t mtic, mtoc;
static uint32_t rtic, rtoc;

void printer_init(void) {
    //Perippheral layer
    time_init();
    led_init();

    //Application layer
    settings_load();
    axis_init();
    heater_init();

    mtic = millis();
    mtoc = millis();
    rtic = millis();
    rtoc = millis();
}

void printer_loop(void) {
    //Movement timing
    if (axis_available()) {
        mtoc = millis();
        if (mtoc - mtic >= 10) {
            led_toggle();   
            mtic = mtoc;
            axis_move();
        }
    } else {
        mtic = millis();
    }

    //Regulator timing
    rtoc = millis();
    if (rtoc - rtic >= 10) {
        if (heater_enabled(&bed)) {
            heater_regulate(&bed);
        }
        if (heater_enabled(&nozzle)) {
            heater_regulate(&nozzle);
        }
        rtic = rtoc;
    }
}


//Private
void printer_print_temperature(void) {
    uart_printf("T:%d B:%d\n", (int)heater_get_temperature(&nozzle), (int)heater_get_temperature(&bed));
}

int printer_get_temperature(void) {
    uart_printf("ok ");
    printer_print_temperature();
    return (int)heater_get_temperature(&nozzle);
}

void printer_set_positioning_absolute(void) {
    axis_set_positioning(ABSOLUTE);
    uart_printf("ok\n");
}

void printer_set_positioning_relative(void) {
    axis_set_positioning(RELATIVE);
    uart_printf("ok\n");
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
    int ret = 0;
    for (i = 0; i < nargs; i++) {
        //debug("%c%f\n", gp[i].type, gp[i].value);
        if (gp[i].type == 'X') {
            if (gp[i].value*(s->spmmx) >= axis_get_error(AXIS_X)) xs = (int)(gp[i].value*(s->spmmx) - axis_get_error(AXIS_X) + 0.5); //Calculate mm to steps
            else xs = (int)(gp[i].value*(s->spmmx) - axis_get_error(AXIS_X) - 0.5); //Calculate mm to steps
            if (axis_get_positioning(AXIS_X) == ABSOLUTE) xs -= axis_get_position(AXIS_X); //Handle current postion if absolute
            if (axis_get_position(AXIS_X) + xs < 0 || axis_get_position(AXIS_X) + xs > (s->bvx)*(s->spmmx)) ret = -1; //Check boundries
            if (axis_get_positioning(AXIS_X) == ABSOLUTE) axis_set_error(AXIS_X, xs - (gp[i].value*(s->spmmx) - axis_get_position(AXIS_X) - axis_get_error(AXIS_X))); //Update error
            else axis_set_error(AXIS_X, xs - (gp[i].value*(s->spmmx) - axis_get_error(AXIS_X))); //Update error
            axis_set_position(AXIS_X, axis_get_position(AXIS_X) + xs); //Update position
        }

        else if (gp[i].type == 'Y') {
            if (gp[i].value*(s->spmmy) >= axis_get_error(AXIS_Y)) ys = (int)(gp[i].value*(s->spmmy) - axis_get_error(AXIS_Y) + 0.5);
            else  ys = (int)(gp[i].value*(s->spmmy) - axis_get_error(AXIS_Y) - 0.5);
            if (axis_get_positioning(AXIS_Y) == ABSOLUTE) ys -= axis_get_position(AXIS_Y);
            if (axis_get_position(AXIS_Y) + ys < 0 || axis_get_position(AXIS_Y) + ys > (s->bvy)*(s->spmmy)) ret = -1;
            if (axis_get_positioning(AXIS_Y) == ABSOLUTE) axis_set_error(AXIS_Y, ys - (gp[i].value*(s->spmmy) - axis_get_position(AXIS_Y) - axis_get_error(AXIS_Y)));
            else axis_set_error(AXIS_Y, ys - (gp[i].value*(s->spmmy) - axis_get_error(AXIS_Y)));
            axis_set_position(AXIS_Y, axis_get_position(AXIS_Y) + ys);
        }

        else if (gp[i].type == 'Z') {
            if (gp[i].value*(s->spmmz) >= axis_get_error(AXIS_Z)) zs = (int)(gp[i].value*(s->spmmz) - axis_get_error(AXIS_Z) + 0.5);
            else zs = (int)(gp[i].value*(s->spmmz) - axis_get_error(AXIS_Z) - 0.5);
            if (axis_get_positioning(AXIS_Z) == ABSOLUTE) zs -= axis_get_position(AXIS_Z);
            if (axis_get_position(AXIS_Z) + zs < 0 || axis_get_position(AXIS_Z) + zs > (s->bvz)*(s->spmmz)) ret = -1;
            if (axis_get_positioning(AXIS_Z) == ABSOLUTE) axis_set_error(AXIS_Z, zs - (gp[i].value*(s->spmmz) - axis_get_position(AXIS_Z) - axis_get_error(AXIS_Z)));
            else axis_set_error(AXIS_Z, zs - (gp[i].value*(s->spmmz) - axis_get_error(AXIS_Z)));
            axis_set_position(AXIS_Z, axis_get_position(AXIS_Z) + zs);
        }

        else if (gp[i].type == 'E') {
            if (gp[i].value*(s->spmme) >= axis_get_error(AXIS_E)) es = (int)(gp[i].value*(s->spmme) - axis_get_error(AXIS_E) + 0.5);
            else es = (int)(gp[i].value*(s->spmme) - axis_get_error(AXIS_E) - 0.5);
            if (axis_get_positioning(AXIS_E) == ABSOLUTE) es -= axis_get_position(AXIS_E);
            if (axis_get_positioning(AXIS_E) == ABSOLUTE) axis_set_error(AXIS_E, es - (gp[i].value*(s->spmme) - axis_get_position(AXIS_E) - axis_get_error(AXIS_E)));
            else axis_set_error(AXIS_E, es - (gp[i].value*(s->spmme) - axis_get_error(AXIS_E)));
            axis_set_position(AXIS_E, axis_get_position(AXIS_E) + es);
        } else if (gp[i].type == 'F') {
            fs = (int)gp[i].value;
        }
    }

    
    
    //Schedule motion
    axis_schedule(xs, ys, zs, es, fs);

    if (ret == -1) uart_printf("Error: G1 out of build volume\n");
    else uart_printf("ok\n");
    return 0;
}
