//
// pwm.c
//

#include "pwm.h"
#include "nrf.h"
#include "nrf_gpio.h"
#include "uart.h"

void TIMER2_IRQHandler(void)
{
    if ((NRF_TIMER2->EVENTS_COMPARE[0] != 0) && ((NRF_TIMER2->INTENSET & TIMER_INTENSET_COMPARE0_Msk) != 0))
    {
        NRF_TIMER2->EVENTS_COMPARE[0] = 0; //Clear compare register 0 event	
        if (NRF_TIMER2->CC[0] != NRF_TIMER2->CC[3]) nrf_gpio_pin_clear(NOZ_PIN);
    }
	
    if ((NRF_TIMER2->EVENTS_COMPARE[1] != 0) && ((NRF_TIMER2->INTENSET & TIMER_INTENSET_COMPARE1_Msk) != 0))
    {
        NRF_TIMER2->EVENTS_COMPARE[1] = 0; //Clear compare register 1 event
        if (NRF_TIMER2->CC[1] != NRF_TIMER2->CC[3]) nrf_gpio_pin_clear(BED_PIN);
    }

    if ((NRF_TIMER2->EVENTS_COMPARE[2] != 0) && ((NRF_TIMER2->INTENSET & TIMER_INTENSET_COMPARE2_Msk) != 0))
    {
        NRF_TIMER2->EVENTS_COMPARE[2] = 0; //Clear compare register 1 event
        if (NRF_TIMER2->CC[2] != NRF_TIMER2->CC[3]) nrf_gpio_pin_clear(FAN2_PIN);
    }

    if ((NRF_TIMER2->EVENTS_COMPARE[3] != 0) && ((NRF_TIMER2->INTENSET & TIMER_INTENSET_COMPARE3_Msk) != 0))
    {
        NRF_TIMER2->EVENTS_COMPARE[3] = 0; //Clear compare register 1 event

        //Set pwm pins
        if (NRF_TIMER2->CC[0] > 20 ) nrf_gpio_pin_set(NOZ_PIN);
        else nrf_gpio_pin_clear(NOZ_PIN);
        if (NRF_TIMER2->CC[1] > 20) nrf_gpio_pin_set(BED_PIN);
        else nrf_gpio_pin_clear(BED_PIN);
        if (NRF_TIMER2->CC[2] > 20) nrf_gpio_pin_set(FAN2_PIN);
        else nrf_gpio_pin_clear(FAN2_PIN);
        NRF_TIMER2->TASKS_CLEAR = 1; // clear timer
    }
}

//Initialize pwm
void pwm_init(void)
{
    NRF_TIMER2->MODE = TIMER_MODE_MODE_Timer; // Set the timer in Timer Mode
    NRF_TIMER2->TASKS_CLEAR = 1; // clear the task first to be usable for later
    NRF_TIMER2->BITMODE = TIMER_BITMODE_BITMODE_16Bit; //Set counter to 16 bit resolution
    NRF_TIMER2->PRESCALER = 8; //62.5kHz
    NRF_TIMER2->CC[0] = 0x0;
    NRF_TIMER2->CC[1] = 0x0;
    NRF_TIMER2->CC[2] = 0x0;
    NRF_TIMER2->CC[3] = 1024; //Top value for counter 0x8000 => 16000000/(1024*2^7) = 61 Hz
    // Enable interrupt for CC[0], CC[1], CC[2], CC[3] and overflow
    NRF_TIMER2->INTENSET = (TIMER_INTENSET_COMPARE0_Enabled << TIMER_INTENSET_COMPARE0_Pos) |
        (TIMER_INTENSET_COMPARE1_Enabled << TIMER_INTENSET_COMPARE1_Pos) |
        (TIMER_INTENSET_COMPARE2_Enabled << TIMER_INTENSET_COMPARE2_Pos) |
        (TIMER_INTENSET_COMPARE3_Enabled << TIMER_INTENSET_COMPARE3_Pos);
    NVIC_EnableIRQ(TIMER2_IRQn);
    
    nrf_gpio_pin_dir_set(NOZ_PIN, NRF_GPIO_PIN_DIR_OUTPUT);
    nrf_gpio_pin_dir_set(BED_PIN, NRF_GPIO_PIN_DIR_OUTPUT);
    nrf_gpio_pin_dir_set(FAN1_PIN, NRF_GPIO_PIN_DIR_OUTPUT);
    nrf_gpio_pin_dir_set(FAN2_PIN, NRF_GPIO_PIN_DIR_OUTPUT);
    
    NRF_TIMER2->TASKS_START = 1; // Start TIMER2
}


void pwm_set_duty(uint32_t channel, uint32_t value)
{
    //Only allow CC[0-2] for real pwm
    if (channel == 0) {
        if (value >= NRF_TIMER2->CC[3]) NRF_TIMER2->CC[0] = NRF_TIMER2->CC[3];
        else NRF_TIMER2->CC[0] = value;
        if (value == 0) nrf_gpio_pin_clear(NOZ_PIN);
    } else if (channel == 1) {
        if (value >= NRF_TIMER2->CC[3]) NRF_TIMER2->CC[1] = NRF_TIMER2->CC[3];
        else NRF_TIMER2->CC[1] = value;
        if (value == 0) nrf_gpio_pin_clear(BED_PIN);
    } else if (channel == 2) {
        if (value >= NRF_TIMER2->CC[3]) NRF_TIMER2->CC[1] = NRF_TIMER2->CC[3];
        else NRF_TIMER2->CC[1] = value;
        if (value == 0) nrf_gpio_pin_clear(FAN2_PIN);
    } else if (channel == 3) {
        if (value == 0) nrf_gpio_pin_clear(FAN1_PIN);
        else nrf_gpio_pin_set(FAN1_PIN);        
    }
}
