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


//Save printer function until movements are done
typedef void (*saved_f)();
typedef struct {
    int available;
    saved_f function;
} sf_t;

static sf_t saved_function;

//Private
void printer_print_temperature(void) {
    uart_printf("T:%d B:%d\n", (int)heater_get_temperature(&nozzle), (int)heater_get_temperature(&bed));
}

void printer_init(void) {
    //Perippheral layer
    time_init();
    led_init();

    //Application layer
    settings_load();
    axis_init();
    heater_init();

    //Printer ready
    saved_function.available = 0;
}

int printer_ready(void) {
    //Printer is ready if:
    //No function is buffered (in saved_f)
    if (saved_function.available) return 0;
    //Movement queue is full
    if (axis_buffer_full()) return 0;
    //Waiting for heatup
    if (heater_waiting(&nozzle)) return 0;
    if (heater_waiting(&bed)) return 0;
    return 1;
}

void printer_loop(void) {
    static uint32_t mtic = 0;
    static uint32_t rtic = 0;
    static uint32_t wtic = 0;
    static uint32_t mtoc, rtoc, wtoc;
    
    //Movement timing
    if (axis_available()) {
        //Move axis every 10 ms
        //TODO: Use feedrate
        mtoc = millis();
        if (mtoc - mtic >= 10) {
            led_toggle();   
            mtic = mtoc;
            axis_move();
        }
    } else {
        //Else adjust tic and check if any function is saved
        mtic = millis();
        if (saved_function.available) {
            //Run saved function
            (*(saved_function.function))();
            saved_function.available = 0;
        }
    }

    //Regulator timing
    static int regulator_modulus_count = 0;
    rtoc = millis();
    if (rtoc - rtic >= 10) {
        //Regulate every 20th
        regulator_modulus_count = (regulator_modulus_count + 1) % 20;
        heater_regulate(&bed, regulator_modulus_count);
        heater_regulate(&nozzle, regulator_modulus_count);
        rtic = rtoc;
    }

    //Wait for printer communication
    wtoc = millis();
    if (!printer_ready()) {
        if (wtoc - wtic >= 1000) {
            wtic = wtoc;
            //Also print temperature during heatup
            if (heater_waiting(&nozzle) || heater_waiting(&bed)) {
                uart_printf("wait: ");
                printer_print_temperature();
            } else {
                uart_print("wait\n");
            }
        }
    } else {
        wtic = millis();
    }
}

int printer_get_temperature(void) {
    uart_printf("ok ");
    printer_print_temperature();
    return (int)heater_get_temperature(&nozzle);
}

void printer_set_nozzle_temperature(float temp, int wait) {
    debug("Nozzle temperature set: %f\n", temp);
    heater_set_temperature(&nozzle, temp);
    if (wait == 0) {
        uart_printf("ok\n");
    } else {
        heater_wait(&nozzle);
    }
}

void printer_set_bed_temperature(float temp, int wait) {
    debug("Bed temperature set: %f\n", temp);
    heater_set_temperature(&bed, temp);
    if (wait == 0) {
        uart_printf("ok\n");
    } else {
        heater_wait(&bed);
    }
}

void printer_set_nozzle_p_value(float p) {
    settings_t *s = settings();
    s->nozzle_kp = p;
    uart_printf("ok\n");
}

void printer_set_nozzle_i_value(float i) {
    settings_t *s = settings();
    s->nozzle_ki = i;
    uart_printf("ok\n");
}

void printer_set_nozzle_d_value(float d) {
    settings_t *s = settings();
    s->nozzle_kd = d;
    uart_printf("ok\n");
}

void printer_set_nozzle_ilim_value(float ilim) {
    settings_t *s = settings();
    s->nozzle_ilim = ilim;
    uart_printf("ok\n");
}

void printer_set_bed_p_value(float p) {
    settings_t *s = settings();
    s->bed_kp = p;
    uart_printf("ok\n");
}

void printer_set_bed_i_value(float i) {
    settings_t *s = settings();
    s->bed_ki = i;
    uart_printf("ok\n");
}

void printer_set_bed_d_value(float d) {
    settings_t *s = settings();
    s->bed_kd = d;
    uart_printf("ok\n");
}

void printer_set_bed_ilim_value(float ilim) {
    settings_t *s = settings();
    s->bed_ilim = ilim;
    uart_printf("ok\n");
}



void printer_set_positioning_absolute(void) {
    //If movements in buffer, hold on
    if (axis_available()) {
        saved_function.available = 1;
        saved_function.function = &printer_set_positioning_absolute;
        return;
    }
    axis_set_positioning(ABSOLUTE);
    uart_printf("ok\n");
}

void printer_set_positioning_relative(void) {
    //If movements in buffer, hold on
    if (axis_available()) {
        saved_function.available = 1;
        saved_function.function = &printer_set_positioning_relative;
        return;
    }
    axis_set_positioning(RELATIVE);
    uart_printf("ok\n");
}


int printer_reset(int nargs, gcode_parameter_t *gp) {
    int xs = 0;
    int ys = 0;
    int zs = 0;
    settings_t *s = settings();
    int i;
    if (nargs == 0) {
        //move lenght of build volume (+20mm) in direction of endtop
        xs = s->espx * (s->bvx + 20) * s->spmmx;
        axis_set_position(AXIS_X, s->bvx*s->spmmx); //Update position
        ys = s->espy * (s->bvy + 20) * s->spmmy;
        axis_set_position(AXIS_Y, s->bvy*s->spmmy);
        zs = s->espz * (s->bvz + 20) * s->spmmz;
        axis_set_position(AXIS_Z, s->bvz*s->spmmz);
    } else {
        for (i = 0; i < nargs; i++) {
            if (gp[i].type == 'X') {
                //move lenght of build volume (+20mm) in direction of endtop
                xs = s->espx * (s->bvx + 20) * s->spmmx;
                if (s->espx == 1) axis_set_position(AXIS_X, s->bvx*s->spmmx); //Update position endstop end
                else axis_set_position(AXIS_X, 0); //Update position endstop beginning
            } else if (gp[i].type == 'Y') {
                ys = s->espy * (s->bvy + 20) * s->spmmy;
                if (s->espy == 1) axis_set_position(AXIS_Y, s->bvy*s->spmmy);
                else axis_set_position(AXIS_Y, 0);
            } else if (gp[i].type == 'Z') {
                zs = s->espz * (s->bvz + 20) * s->spmmz;
                if (s->espz == 1) axis_set_position(AXIS_Z, s->bvz*s->spmmz);
                else axis_set_position(AXIS_Z, 0);
            }
        }
    }
    axis_schedule(s->sdx*xs, s->sdz*ys, s->sdz*zs, 0, 0);
    uart_printf("ok\n");
    return 0;
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
    axis_schedule(s->sdx*xs, s->sdy*ys, s->sdz*zs, s->sde*es, fs);

    if (ret == -1) uart_printf("Error: G1 out of build volume\n");
    else uart_printf("ok\n");
    return 0;
}
