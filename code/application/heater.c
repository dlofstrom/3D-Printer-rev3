//
// heater.c
//

#include "heater.h"
#include "uart.h"
#include "adc.h"
#include "pwm.h"
#include "lut.h"

void heater_init(void) {
    adc_init();
    pwm_init();
    
    nozzle = (heater_t){0,NOZ_ADC_CHANNEL,NOZ_PWM_CHANNEL};
    bed = (heater_t){0,BED_ADC_CHANNEL,BED_PWM_CHANNEL};
}

void heater_regulate(heater_t *h) {
}

void heater_enable(heater_t *h) {
    debug("Heater enable\n");
}

void heater_disable(heater_t *h) {
    debug("Heater disable\n");
}

void heater_set_temperature(heater_t *h, float t) {
}

float heater_get_temperature(heater_t *h) {
    return temperature_lookup[adc_get(h->adc_channel)];
}

