//
// stepper.c
//

#include "stepper.h"

#include "nrf.h"
#include "nrf_gpio.h"
#include "nrf_delay.h"

static const stepper_t stepper_x = {STEPPER_X_STEP, STEPPER_X_DIR, STEPPER_X_EN};
static const stepper_t stepper_y = {STEPPER_Y_STEP, STEPPER_Y_DIR, STEPPER_Y_EN};
static const stepper_t stepper_z = {STEPPER_Z_STEP, STEPPER_Z_DIR, STEPPER_Z_EN};
static const stepper_t stepper_e = {STEPPER_E_STEP, STEPPER_E_DIR, STEPPER_E_EN};
static const stepper_t *steppers[NUMBER_OF_STEPPERS] = {&stepper_x, &stepper_y, &stepper_z, &stepper_e};

void stepper_init() {
    uint32_t i;
    for (i = 0; i < NUMBER_OF_STEPPERS; i++) {
        nrf_gpio_pin_dir_set(steppers[i]->step_pin, NRF_GPIO_PIN_DIR_OUTPUT);
        nrf_gpio_pin_dir_set(steppers[i]->enable_pin, NRF_GPIO_PIN_DIR_OUTPUT);
        nrf_gpio_pin_dir_set(steppers[i]->direction_pin, NRF_GPIO_PIN_DIR_OUTPUT);    
    }
}

uint32_t stepper_enabled(uint32_t s) {
    if (nrf_gpio_pin_out_read(steppers[s]->enable_pin) == 0) return 1;
    else return 0;
}

void stepper_step(step_t *s) {
    if (s->x != 0) {
        //Enable if not already enabled
        if (!stepper_enabled(STEPPER_X_CHANNEL)) stepper_enable(STEPPER_X_CHANNEL);
        //Set direction
        if (s->x > 0) nrf_gpio_pin_set(STEPPER_X_DIR);
        else  nrf_gpio_pin_clear(STEPPER_X_DIR);
        //Set step
        nrf_gpio_pin_set(STEPPER_X_STEP);
    }

    if (s->y != 0) {
        if (!stepper_enabled(STEPPER_Y_CHANNEL)) stepper_enable(STEPPER_Y_CHANNEL);
        if (s->y > 0) nrf_gpio_pin_set(STEPPER_Y_DIR);
        else  nrf_gpio_pin_clear(STEPPER_Y_DIR);
        nrf_gpio_pin_set(STEPPER_Y_STEP);
    }

    if (s->z != 0) {
        if (!stepper_enabled(STEPPER_Z_CHANNEL)) stepper_enable(STEPPER_Z_CHANNEL);
        if (s->z > 0) nrf_gpio_pin_set(STEPPER_Z_DIR);
        else  nrf_gpio_pin_clear(STEPPER_Z_DIR);
        nrf_gpio_pin_set(STEPPER_Z_STEP);
    }

    if (s->e != 0) {
        if (!stepper_enabled(STEPPER_E_CHANNEL)) stepper_enable(STEPPER_E_CHANNEL);
        if (s->e > 0) nrf_gpio_pin_set(STEPPER_E_DIR);
        else  nrf_gpio_pin_clear(STEPPER_E_DIR);
        nrf_gpio_pin_set(STEPPER_E_STEP);
    }

    //Reset all step pins
    nrf_delay_us(10);
    nrf_gpio_pin_clear(STEPPER_X_STEP);
    nrf_gpio_pin_clear(STEPPER_Y_STEP);
    nrf_gpio_pin_clear(STEPPER_Z_STEP);
    nrf_gpio_pin_clear(STEPPER_E_STEP);
}

void stepper_enable(uint32_t s) {
    nrf_gpio_pin_clear(steppers[s]->enable_pin);
}

void stepper_disable(uint32_t s) {
    nrf_gpio_pin_set(steppers[s]->enable_pin);
}
