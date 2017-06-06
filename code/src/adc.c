//
// adc.c
//

#include "adc.h"

#include "nrf.h"
#include "nrf_drv_adc.h"
#include "nrf_gpio.h"

static uint16_t adc_value;
static nrf_drv_adc_channel_t m_channel_3_config = NRF_DRV_ADC_DEFAULT_CHANNEL(NRF_ADC_CONFIG_INPUT_3); 

//ADC interrupt handler
static void adc_event_handler(nrf_drv_adc_evt_t const * p_event)
{
    if (p_event->type == NRF_DRV_ADC_EVT_DONE)
    {
        uint32_t i;
        for (i = 0; i < p_event->data.done.size; i++)
        {
            adc_value = p_event->data.done.p_buffer[i];
        }
    }
}

//Initialize adc
void adc_init(void)
{
    //Initialize ADC
    nrf_drv_adc_config_t config = NRF_DRV_ADC_DEFAULT_CONFIG;
    nrf_drv_adc_init(&config, adc_event_handler);
    
    //Configure and enable ADC channel 3
    nrf_drv_adc_channel_enable(&m_channel_3_config);
}

//adc functions
uint32_t adc_get(void)
{
    int16_t v;
    nrf_drv_adc_sample_convert(&m_channel_3_config, &v);
    return v;
}

