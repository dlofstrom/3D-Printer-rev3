//
// time.c
//

#include "time.h"
#include "adc.h"

#include "nrf.h"
#include "nrf_delay.h"

static uint32_t t;

void TIMER1_IRQHandler(void)
{
    if ((NRF_TIMER1->EVENTS_COMPARE[0] != 0) && ((NRF_TIMER1->INTENSET & TIMER_INTENSET_COMPARE0_Msk) != 0))
    {
        NRF_TIMER1->EVENTS_COMPARE[0] = 0; //Clear compare register 0 event	
        t += 1;
        if (t % 500 == 0) adc_sample(); //100Hz
        NRF_TIMER1->TASKS_CLEAR = 1;
    }
}

//Initialize timer 1
void time_init(void)
{
    //Use external 16MHz crystal
    NRF_CLOCK->TASKS_HFCLKSTART = 1;

    t = 0;

    NRF_TIMER1->MODE = TIMER_MODE_MODE_Timer; // Set the timer in Timer Mode
    NRF_TIMER1->TASKS_CLEAR = 1; // clear the task first to be usable for later
    NRF_TIMER1->BITMODE = TIMER_BITMODE_BITMODE_16Bit; //Set counter to 16 bit resolution
    NRF_TIMER1->PRESCALER = 6; //250kHz
    NRF_TIMER1->CC[0] = 5;//Enable interrupt for CC[0] = 50kHz
    NRF_TIMER1->INTENSET = (TIMER_INTENSET_COMPARE0_Enabled << TIMER_INTENSET_COMPARE0_Pos);
    NVIC_EnableIRQ(TIMER1_IRQn);
    
    NRF_TIMER1->TASKS_START = 1; // Start TIMER2
}

//Get milliseconds
uint32_t millis(void)
{
    return t/50;
}

//Get ticks in 1/10000 of a second
uint32_t ticks(void) {
    return t;
}

//Blocking delay
void delay_us(uint32_t us) {
    nrf_delay_us(us);
}

//Reset nrf51
void system_reset(void) {
    NVIC_SystemReset();
}
