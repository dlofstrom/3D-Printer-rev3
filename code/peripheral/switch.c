//
// switch.c
//

#include "switch.h"

#include "nrf.h"
#include "nrf_gpio.h"

static const uint32_t switches[NUMBER_OF_SWITCHES] = {SWITCH_X_PIN, SWITCH_Y_PIN, SWITCH_Z_PIN};

//Initialize switches as inputs
void switch_init(void)
{
    uint32_t i;
    for (i = 0; i < NUMBER_OF_SWITCHES; i++) {
        nrf_gpio_pin_dir_set(switches[i], NRF_GPIO_PIN_DIR_INPUT);
    }
}

//Switches have an external pull-up and closes to ground
bool switch_get(uint32_t s)
{
    if (s >= NUMBER_OF_SWITCHES) return false;
    else return nrf_gpio_pin_read(switches[s]) == 0;
}
