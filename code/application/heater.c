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
    
    nozzle = (heater_t){.enabled=0, .target_temperature=0.0, .adc_channel=NOZ_ADC_CHANNEL, .pwm_channel=NOZ_PWM_CHANNEL};
    bed = (heater_t){.enabled=0, .target_temperature=0.0, .adc_channel=BED_ADC_CHANNEL, .pwm_channel=BED_PWM_CHANNEL};
}

void heater_regulate(heater_t *h) {
    //Oversample temperature

    //Regulate (maybe every 10th?)
}

int heater_enabled(heater_t *h) {
    return h->enabled;
}

void heater_enable(heater_t *h) {
    debug("Heater enable\n");
    h->enabled = 1;
}

void heater_disable(heater_t *h) {
    debug("Heater disable\n");
    h->enabled = 0;
}

void heater_set_temperature(heater_t *h, float t) {
    h->target_temperature = t;
    if (t == 0.0) h->enabled = 0;
    else h->enabled = 1;
}

float heater_get_temperature(heater_t *h) {
    return temperature_lookup[adc_get(h->adc_channel)];
}

