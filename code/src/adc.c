//
// adc.c
//

#include "adc.h"

#include "nrf.h"
#include "nrf_drv_adc.h"
#include "nrf_gpio.h"

#define ADC_BUFFER_SIZE 1
static int16_t adc_buffer[ADC_BUFFER_SIZE];
static bool adc_is_available = false;
static nrf_drv_adc_channel_t m_channel_3_config = NRF_DRV_ADC_DEFAULT_CHANNEL(NRF_ADC_CONFIG_INPUT_3); 

char buf[10];

//ADC interrupt handler
static void adc_event_handler(nrf_drv_adc_evt_t const *p_event)
{
    if (p_event->type == NRF_DRV_ADC_EVT_DONE)
    {
        /*
        uint32_t i;
        for (i = 0; i < p_event->data.done.size; i++)
        {
            //adc_value = p_event->data.done.p_buffer[i];
        }
        */
        adc_is_available = true;
        nrf_drv_adc_buffer_convert(adc_buffer, ADC_BUFFER_SIZE);
    }
     nrf_gpio_pin_set(11);
}

//Initialize adc
void adc_init(void)
{
    //Initialize ADC
    nrf_drv_adc_config_t config = NRF_DRV_ADC_DEFAULT_CONFIG;
    nrf_drv_adc_init(&config, adc_event_handler);
    
    //Configure and enable ADC channel 3
    nrf_drv_adc_channel_enable(&m_channel_3_config);

    nrf_drv_adc_buffer_convert(adc_buffer, ADC_BUFFER_SIZE);
}

//adc functions
bool adc_available(void)
{
    return adc_is_available;
}

int16_t adc_get(void)
{
    adc_is_available = false;
    return adc_buffer[0];
}

bool adc_sample(void)
{
    NRF_ADC->TASKS_START = 1;
    return true;
    if (nrf_drv_adc_is_busy()) return false;
    else nrf_drv_adc_sample();
    return true;
}

