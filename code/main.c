#include <stdbool.h>
#include <stdint.h>
#include "nrf_delay.h"
#include "nrf_gpio.h"

#include "uart.h"
#include "adc.h"
#include "time.h"
#include "pwm.h"


char line[100];
char adc[10];

uint32_t tic;
uint32_t toc;

uint32_t pwm_test = 0;

int main(void)
{
    //Use external 16MHz crystal
    NRF_CLOCK->TASKS_HFCLKSTART = 1;
    
    nrf_gpio_pin_dir_set(11, NRF_GPIO_PIN_DIR_OUTPUT);

    adc_init((1<<AIN3)|(1<<AIN4));
    uart_init();
    
    time_init();

    pwm_init();
    
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
            pwm_set_duty(NOZ_PWM_CHANNEL, pwm_test);
            pwm_set_duty(BED_PWM_CHANNEL, pwm_test);
            pwm_set_duty(FAN1_PWM_CHANNEL, pwm_test);
            pwm_test = (pwm_test + 100) % 0x8000;
        }
    }
}

