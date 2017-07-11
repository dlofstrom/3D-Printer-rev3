#include <stdbool.h>
#include <stdint.h>
#include "nrf.h"
#include "nrf_delay.h"
#include "nrf_gpio.h"

#include "led.h"
#include "uart.h"
#include "adc.h"
#include "time.h"
#include "pwm.h"
#include "switch.h"
#include "stepper.h"
#include "flash.h"

#include "gcode.h"

char line[100];

uint32_t tic;
uint32_t toc;
int i;

uint32_t pwm_test = 0;

int main(void)
{
    //Perippheral layer
    led_init();
    adc_init();
    uart_init();
    time_init();
    pwm_init();
    switch_init();
    stepper_init();


    //Testing flash read and write
    //flash_page_erase();
    //flash_word_write(31234);
    uint32_t w = flash_word_read();
    uart_printf("Read word from flash memory: %lu\n", w);
    
    stepper_enable(STEPPER_X_CHANNEL);
    stepper_disable(STEPPER_Y_CHANNEL);
    stepper_disable(STEPPER_Z_CHANNEL);
    stepper_disable(STEPPER_E_CHANNEL);
    
    tic = millis();
    toc = millis();
    
    uart_print("Hello world!\n");
    
    while (1)
    {
        toc = millis();
        if (uart_read_line(line) != 0) {
            uart_print("Got a line: ");
            uart_print(line);
            gcode_parse(line);
            
            for (i = 0; i < 200; i++) {
                stepper_step(STEPPER_X_CHANNEL, STEPPER_DIR_POS);
                delay_ms(1);
            }
        }

        for (i = 0; i < NUMBER_OF_SWITCHES; i++) {
            if (switch_get(i)) uart_printf("A switch is closed: %lu\n", i);
        }
        
        if (toc - tic >= 500) {
            led_toggle();   
            tic = toc;
            pwm_set_duty(NOZ_PWM_CHANNEL, pwm_test);
            pwm_set_duty(BED_PWM_CHANNEL, pwm_test);
            pwm_set_duty(FAN1_PWM_CHANNEL, pwm_test);
            pwm_test = (pwm_test + 10) % 1024;
            //uart_printf("%d\n", adc_get(0));
            //uart_printf("%d\n", adc_get(1));
            //uart_printf("%lu\n", toc);
        }
    }
}

