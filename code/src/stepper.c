//
// stepper.c
//

#include "stepper.h"

#include "nrf.h"
#include "nrf_gpio.h"
#include "nrf_delay.h"

typedef struct {
    //Pins
    uint32_t step_pin;
    uint32_t direction_pin;
    uint32_t enable_pin;
} stepper_t;

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

void stepper_step(uint32_t s, uint32_t dir) {
    nrf_gpio_pin_write(steppers[s]->step_pin, dir);
    nrf_gpio_pin_set(steppers[s]->step_pin);
    nrf_delay_us(10);
    nrf_gpio_pin_clear(steppers[s]->step_pin);
}

void stepper_enable(uint32_t s) {
    nrf_gpio_pin_clear(steppers[s]->enable_pin);
}

void stepper_disable(uint32_t s) {
    nrf_gpio_pin_set(steppers[s]->enable_pin);
}
