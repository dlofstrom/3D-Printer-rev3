//
// adc.c
//

#include "adc.h"

#include "nrf.h"
#include "nrf_drv_adc.h"
#include "nrf_gpio.h"

#define ADC_BUFFER_SIZE 8
static int16_t adc_buffer[ADC_BUFFER_SIZE];
static int16_t adc_channels;
static bool adc_is_available;

char buf[10];

//ADC interrupt handler
static void adc_event_handler(nrf_drv_adc_evt_t const *p_event)
{
    if (p_event->type == NRF_DRV_ADC_EVT_DONE)
    {
        adc_is_available = true;
        nrf_drv_adc_buffer_convert(adc_buffer, adc_channels);
    }
    //nrf_gpio_pin_set(11);
}

//Initialize adc
void adc_init(uint8_t channels)
{
    //Initialize ADC
    nrf_drv_adc_config_t config = NRF_DRV_ADC_DEFAULT_CONFIG;
    nrf_drv_adc_init(&config, adc_event_handler);

    //Init selected channels
    adc_channels = 0;
    
    //Configure and enable ADC channel 0
    if (channels & (1 << AIN0)) {
        static nrf_drv_adc_channel_t m_channel_0_config = NRF_DRV_ADC_DEFAULT_CHANNEL(NRF_ADC_CONFIG_INPUT_0);
        nrf_drv_adc_channel_enable(&m_channel_0_config);
        adc_channels++;
    }
    //Configure and enable ADC channel 1
    if (channels & (1 << AIN1)) {
        static nrf_drv_adc_channel_t m_channel_1_config = NRF_DRV_ADC_DEFAULT_CHANNEL(NRF_ADC_CONFIG_INPUT_1);
        nrf_drv_adc_channel_enable(&m_channel_1_config);
        adc_channels++;
    }
    //Configure and enable ADC channel 2
    if (channels & (1 << AIN2)) {
        static nrf_drv_adc_channel_t m_channel_2_config = NRF_DRV_ADC_DEFAULT_CHANNEL(NRF_ADC_CONFIG_INPUT_2);
        nrf_drv_adc_channel_enable(&m_channel_2_config);
        adc_channels++;
    }
    //Configure and enable ADC channel 3
    if (channels & (1 << AIN3)) {
        static nrf_drv_adc_channel_t m_channel_3_config = NRF_DRV_ADC_DEFAULT_CHANNEL(NRF_ADC_CONFIG_INPUT_3);
        nrf_drv_adc_channel_enable(&m_channel_3_config);
        adc_channels++;
    }
    //Configure and enable ADC channel 4
    if (channels & (1 << AIN4)) {
        static nrf_drv_adc_channel_t m_channel_4_config = NRF_DRV_ADC_DEFAULT_CHANNEL(NRF_ADC_CONFIG_INPUT_4);
        nrf_drv_adc_channel_enable(&m_channel_4_config);
        adc_channels++;
    }
    //Configure and enable ADC channel 5
    if (channels & (1 << AIN5)) {
        static nrf_drv_adc_channel_t m_channel_5_config = NRF_DRV_ADC_DEFAULT_CHANNEL(NRF_ADC_CONFIG_INPUT_5);
        nrf_drv_adc_channel_enable(&m_channel_5_config);
        adc_channels++;
    }
    //Configure and enable ADC channel 6
    if (channels & (1 << AIN6)) {
        static nrf_drv_adc_channel_t m_channel_6_config = NRF_DRV_ADC_DEFAULT_CHANNEL(NRF_ADC_CONFIG_INPUT_6);
        nrf_drv_adc_channel_enable(&m_channel_6_config);
        adc_channels++;
    }
    //Configure and enable ADC channel 7
    if (channels & (1 << AIN7)) {
        static nrf_drv_adc_channel_t m_channel_7_config = NRF_DRV_ADC_DEFAULT_CHANNEL(NRF_ADC_CONFIG_INPUT_7);
        nrf_drv_adc_channel_enable(&m_channel_7_config);
        adc_channels++;
    }
    
    nrf_drv_adc_buffer_convert(adc_buffer, adc_channels);
    adc_is_available = false;
}

//adc functions
bool adc_available(void)
{
    return adc_is_available;
}

int16_t adc_get(uint8_t channel)
{
    adc_is_available = false;
    return adc_buffer[channel];
}

bool adc_sample(void)
{
    //NRF_ADC->TASKS_START = 1;
    if (nrf_drv_adc_is_busy()) return false;
    else nrf_drv_adc_sample();
    return true;
}

