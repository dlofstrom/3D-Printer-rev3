#include <stdbool.h>
#include <stdint.h>
#include "nrf_delay.h"
#include "nrf_gpio.h"


int main(void)
{
    nrf_gpio_pin_dir_set(21, NRF_GPIO_PIN_DIR_OUTPUT);
  
    while (true)
    {
        nrf_gpio_pin_set(21);
        nrf_delay_ms(500);
        nrf_gpio_pin_clear(21);
        nrf_delay_ms(500);
    }
}
