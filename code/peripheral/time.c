//
// time.c
//

#include "time.h"
#include "adc.h"

#include "nrf.h"
#include "nrf_delay.h"

static uint32_t ms;

void TIMER1_IRQHandler(void)
{
    if ((NRF_TIMER1->EVENTS_COMPARE[0] != 0) && ((NRF_TIMER1->INTENSET & TIMER_INTENSET_COMPARE0_Msk) != 0))
    {
        NRF_TIMER1->EVENTS_COMPARE[0] = 0; //Clear compare register 0 event	
        ms += 1;
        if (ms % 10 == 0) adc_sample(); //100Hz
        NRF_TIMER1->TASKS_CLEAR = 1;
    }
}

//Initialize timer 1
void time_init(void)
{
    //Use external 16MHz crystal
    NRF_CLOCK->TASKS_HFCLKSTART = 1;

    ms = 0;

    NRF_TIMER1->MODE = TIMER_MODE_MODE_Timer; // Set the timer in Timer Mode
    NRF_TIMER1->TASKS_CLEAR = 1; // clear the task first to be usable for later
    NRF_TIMER1->BITMODE = TIMER_BITMODE_BITMODE_16Bit; //Set counter to 16 bit resolution
    NRF_TIMER1->PRESCALER = 7; //125kHz
    NRF_TIMER1->CC[0] = 125;//Enable interrupt for CC[0]
    NRF_TIMER1->INTENSET = (TIMER_INTENSET_COMPARE0_Enabled << TIMER_INTENSET_COMPARE0_Pos);
    NVIC_EnableIRQ(TIMER1_IRQn);
    
    NRF_TIMER1->TASKS_START = 1; // Start TIMER2
}

//Get milliseconds
uint32_t millis(void)
{
    return ms;
}

//Blocking delay
void delay_ms(uint32_t ms) {
    nrf_delay_ms(1);
}