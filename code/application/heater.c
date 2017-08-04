//
// heater.c
//

#include "heater.h"
#include "uart.h"
#include "adc.h"
#include "pwm.h"

static heater_t nozzle;
static heater_t bed;

void heater_init(void) {
    adc_init();
    pwm_init();
    
    nozzle = (heater_t){0,NOZ_ADC_CHANNEL,NOZ_PWM_CHANNEL};
    bed = (heater_t){0,BED_ADC_CHANNEL,BED_PWM_CHANNEL};
}

void heater_regulate(void) {
}

void heater_enable(void) {
    debug("Heater enable\n");
}

void heater_disable(void) {
    debug("Heater disable\n");
}

void heater_set_temperature(float t) {
}

float heater_temperature(void) {
    return 1.0;
}

