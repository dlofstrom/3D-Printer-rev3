#include <stdbool.h>
#include <stdint.h>
#include "nrf_delay.h"
#include "nrf_gpio.h"

#include "uart.h"
#include "adc.h"
#include "time.h"

char line[100];
char adc[10];

uint32_t tic;
uint32_t toc;

int main(void)
{
    nrf_gpio_pin_dir_set(11, NRF_GPIO_PIN_DIR_OUTPUT);

    adc_init((1<<AIN3)|(1<<AIN4));
    uart_init();
    
    time_init();
    
    tic = millis();
    toc = millis();
    
    uart_print("Hello world!\n");
    
    while (1)
    {
        toc = millis();
        if (uart_read_line(line) != 0) {
            uart_print("Got a line: ");
            uart_print(line);
            uart_print("Sampling adc: ");
            if (adc_sample()) uart_print("OK\n");
            else uart_print("NOK\n");
        }
        
        if (adc_available()) {
            sprintf(adc, "%d\n", adc_get(0));
            uart_print(adc);
            sprintf(adc, "%d\n", adc_get(1));
            uart_print(adc);
            sprintf(adc, "%lu\n", toc);
            uart_print(adc);
        }

        if (toc - tic >= 500) {
            nrf_gpio_pin_toggle(11);   
            tic = toc;
        }
    }
}

