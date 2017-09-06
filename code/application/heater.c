//
// heater.c
//

#include "heater.h"
#include "uart.h"
#include "adc.h"
#include "pwm.h"
#include "lut.h"
#include "settings.h"
#include "time.h"

void heater_init(void) {
    adc_init();
    pwm_init();

    settings_t *s = settings();
    nozzle = (heater_t){.enabled=0, .waiting=0, .tune_count=0,
                        .current_temperature=0.0, .target_temperature=0.0, .max_temperature=255.0,
                        .adc_channel=NOZ_ADC_CHANNEL, .pwm_channel=NOZ_PWM_CHANNEL, .fan_channel=FAN1_PWM_CHANNEL,
                        .P=0.0, .I=0.0, .D=0.0,
                        .kp=&(s->nozzle_kp), .ki=&(s->nozzle_ki), .kd=&(s->nozzle_kd), .ilim=&(s->nozzle_ilim)};
    bed = (heater_t){.enabled=0, .waiting=0, .tune_count=0,
                     .current_temperature=0.0, .target_temperature=0.0, .max_temperature=110.0,
                     .adc_channel=BED_ADC_CHANNEL, .pwm_channel=BED_PWM_CHANNEL, .fan_channel=NO_PWM,
                     .P=0.0, .I=0.0, .D=0.0,
                     .kp=&(s->bed_kp), .ki=&(s->bed_ki), .kd=&(s->bed_kd), .ilim=&(s->bed_ilim)};
}

float fabs(float n) {
    return (n < 0.0) ? -n : n;
}

void heater_regulate(heater_t *h, int regulate) {
    //Oversample temperature
    float t = heater_get_temperature(h);
    if (heater_enabled(h)) {
        if (t == ERROR) {
            uart_printf("error: thermistor returned non valid temperature\n");
            heater_disable(h);
            return;
        } else if (t > h->max_temperature) {
            uart_printf("error: heater too hot\n");
            delay_us(10000);
            system_reset();
        }
    }
    h->current_temperature = 9*h->current_temperature/10 + t/10;

    if (regulate == 0) {
        //Regulate (maybe every 10th?)
        if (heater_enabled(h)) {
            //Calculate error
            float error = h->target_temperature - h->current_temperature;
            //Calculate D
            h->D = error - h->P; //difference between current and last error
            //Calculate I
            h->I += error; //Discrete integration
            //Set P
            h->P = error;

            //Integral windup protection
            if (h->I < -*(h->ilim)) h->I = -*(h->ilim);
            else if (h->I > *(h->ilim)) h->I = *(h->ilim);

            //Regulate
            float pid = *(h->kp)*h->P + *(h->ki)*h->I + *(h->kd)*h->D;
            debug("P:%f I:%f D:%f PID: %f\n", h->P, h->I, h->D, pid);
            if (pid <= 0.0) pwm_set_duty(h->pwm_channel, 0);
            else if (pid > 1024.0) pwm_set_duty(h->pwm_channel, 1024);
            else pwm_set_duty(h->pwm_channel, (uint32_t)pid);
            
            if (h->waiting) {
                if (fabs(error) < 2.0) {
                    if (h->tune_count >= 50) {
                        debug("Waiting done");
                        h->waiting = 0;
                        uart_print("ok\n");
                    } else {
                        h->tune_count++;
                    }
                } else {
                    h->tune_count = 0;
                }
            }
        } else {
            pwm_set_duty(h->pwm_channel, 0);
            if (h->current_temperature < 50) pwm_set_duty(h->fan_channel, 0);
        }
    }
}

int heater_enabled(heater_t *h) {
    return h->enabled;
}

void heater_enable(heater_t *h) {
    debug("Heater enable\n");
    pwm_set_duty(h->fan_channel, 1);
    h->enabled = 1;
}

void heater_disable(heater_t *h) {
    debug("Heater disable\n");
    pwm_set_duty(h->pwm_channel, 0);
    //pwm_set_duty(h->fan_channel, 0);
    h->enabled = 0;
    h->waiting = 0;
}

void heater_set_temperature(heater_t *h, float t) {
    h->target_temperature = t;
    h->tune_count = 0;
    if (t < 20.0) heater_disable(h);
    else heater_enable(h);
}

float heater_get_temperature(heater_t *h) {
    return temperature_lookup[adc_get(h->adc_channel)];
}

void heater_wait(heater_t *h) {
    debug("Waiting for heater\n");
    h->waiting = 1;
}

int heater_waiting(heater_t *h) {
    if (h->waiting) return 1;
    else return 0;
}
