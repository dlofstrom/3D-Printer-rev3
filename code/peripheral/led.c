//
// led.c
//

#include "led.h"

#include "nrf.h"
#include "nrf_gpio.h"

void led_init(void)
{
    nrf_gpio_pin_dir_set(LED_PIN, NRF_GPIO_PIN_DIR_OUTPUT);
}

void led_set(void)
{
    nrf_gpio_pin_set(LED_PIN);
}

void led_clear(void)
{
    nrf_gpio_pin_clear(LED_PIN);
}

void led_toggle(void)
{
    nrf_gpio_pin_toggle(LED_PIN);
}
