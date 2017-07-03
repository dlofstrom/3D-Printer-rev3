//
// time.c
//

#include "time.h"

#include "nrf.h"

static uint16_t overflow_counter;

void TIMER1_IRQHandler(void)
{
    if ((NRF_TIMER1->EVENTS_COMPARE[0] != 0) && ((NRF_TIMER1->INTENSET & TIMER_INTENSET_COMPARE0_Msk) != 0))
    {
        NRF_TIMER1->EVENTS_COMPARE[0] = 0; //Clear compare register 0 event	
        overflow_counter++;
        //NRF_TIMER1->TASKS_CLEAR = 1;
    }
}

//Initialize timer 1
void time_init(void)
{
    overflow_counter = 0;

    NRF_TIMER1->MODE = TIMER_MODE_MODE_Timer; // Set the timer in Timer Mode
    NRF_TIMER1->TASKS_CLEAR = 1; // clear the task first to be usable for later
    NRF_TIMER1->BITMODE = TIMER_BITMODE_BITMODE_16Bit; //Set counter to 16 bit resolution
    NRF_TIMER1->PRESCALER = 4;
    NRF_TIMER1->CC[0] = 0xFFFF; //Top (simulate overflow)
		
    // Enable interrupt for CC[0]
    NRF_TIMER1->INTENSET = (TIMER_INTENSET_COMPARE0_Enabled << TIMER_INTENSET_COMPARE0_Pos);
    NVIC_EnableIRQ(TIMER1_IRQn);
    
    NRF_TIMER1->TASKS_START = 1; // Start TIMER2
}

uint32_t micros(void)
{
    NRF_TIMER1->TASKS_CAPTURE[1] = 1;
    return ((uint32_t)overflow_counter << 16) | NRF_TIMER1->CC[1];
}

uint32_t millis(void)
{
    return micros()/1000;
}
