#include <stdbool.h>
#include <stdint.h>
#include "nrf_delay.h"
#include "nrf_gpio.h"

#include "uart.h"

char line[100];
int main(void)
{
    nrf_gpio_pin_dir_set(11, NRF_GPIO_PIN_DIR_OUTPUT);

    uart_init();

    uart_print("Hello world!\n");
    
    while (true)
    {
        if (uart_read_line(line) != 0) {
            uart_print("Got a line: ");
            uart_print(line);
        }
        
        nrf_gpio_pin_set(11);
        nrf_delay_ms(500);
        nrf_gpio_pin_clear(11);
        nrf_delay_ms(500);
    }
}
