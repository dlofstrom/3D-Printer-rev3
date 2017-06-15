//
// time.c
//

#include "time.h"

#include "nrf.h"
#include "nrf_drv_timer.h"

const nrf_drv_timer_t TIMER_TIME = NRF_DRV_TIMER_INSTANCE(1);
static uint32_t time_ms;

//Handler for timer events.
void timer_event_handler(nrf_timer_event_t event_type, void* p_context)
{
    if (event_type == NRF_TIMER_EVENT_COMPARE0) {
        time_ms++;
    }
}

//Initialize timer 1
void time_init(void)
{
    time_ms = 0;

    nrf_drv_timer_config_t timer_cfg = NRF_DRV_TIMER_DEFAULT_CONFIG;
    nrf_drv_timer_init(&TIMER_TIME, &timer_cfg, timer_event_handler);
   
    //1 ms interrupt
    uint32_t time_ticks;
    time_ticks = nrf_drv_timer_ms_to_ticks(&TIMER_TIME, 1);
    nrf_drv_timer_extended_compare(&TIMER_TIME, NRF_TIMER_CC_CHANNEL0, time_ticks, NRF_TIMER_SHORT_COMPARE0_CLEAR_MASK, true);
    nrf_drv_timer_enable(&TIMER_TIME);
}

uint32_t millis(void)
{
    return time_ms;
}
