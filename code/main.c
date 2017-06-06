#include <stdbool.h>
#include <stdint.h>
#include "nrf_delay.h"
#include "nrf_gpio.h"

#include "uart.h"
#include "adc.h"

char line[100];
char adc[10];
int main(void)
{
    nrf_gpio_pin_dir_set(11, NRF_GPIO_PIN_DIR_OUTPUT);

    uart_init();

    uart_print("Hello world!\n");
    
    while (1)
    {
        if (uart_read_line(line) != 0) {
            uart_print("Got a line: ");
            uart_print(line);
            uart_print("Reading adc: ");
            sprintf(adc, "%lu\n", adc_get());
            uart_print(adc);
        }
        
        nrf_gpio_pin_set(11);
        nrf_delay_ms(500);
        nrf_gpio_pin_clear(11);
        nrf_delay_ms(500);
    }
}
