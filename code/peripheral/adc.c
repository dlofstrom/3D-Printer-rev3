//
// adc.c
//

#include "adc.h"

#include "nrf.h"

static int16_t adc_value[2];
static uint8_t adc_channel;
static bool adc_is_available;

char buf[10];

//ADC interrupt handler
void ADC_IRQHandler(void)
{
    //Clear event
    NRF_ADC->EVENTS_END = 0;
    adc_value[adc_channel] = NRF_ADC->RESULT;

    //ADC values are available after both channels have been sampled
    if (adc_channel == 1) {
        adc_channel = BED_ADC_CHANNEL;
        NRF_ADC->CONFIG = (ADC_CONFIG_EXTREFSEL_None << ADC_CONFIG_EXTREFSEL_Pos)
            | (BED_ADC_INPUT << ADC_CONFIG_PSEL_Pos)
            | (ADC_CONFIG_REFSEL_SupplyOneThirdPrescaling << ADC_CONFIG_REFSEL_Pos)
            | (ADC_CONFIG_INPSEL_AnalogInputOneThirdPrescaling << ADC_CONFIG_INPSEL_Pos)
            | (ADC_CONFIG_RES_10bit << ADC_CONFIG_RES_Pos);
        adc_is_available = true;
    } else {
        adc_channel = NOZ_ADC_CHANNEL;
        NRF_ADC->CONFIG = (ADC_CONFIG_EXTREFSEL_None << ADC_CONFIG_EXTREFSEL_Pos)
            | (NOZ_ADC_INPUT << ADC_CONFIG_PSEL_Pos)
            | (ADC_CONFIG_REFSEL_SupplyOneThirdPrescaling << ADC_CONFIG_REFSEL_Pos)
            | (ADC_CONFIG_INPSEL_AnalogInputOneThirdPrescaling << ADC_CONFIG_INPSEL_Pos)
            | (ADC_CONFIG_RES_10bit << ADC_CONFIG_RES_Pos);
        NRF_ADC->TASKS_START = 1;
    }
}

//Initialize adc
void adc_init(void)
{
    adc_value[0] = 0;
    adc_value[1] = 0;
    adc_channel = BED_ADC_CHANNEL;
    adc_is_available = false;
    
    //Enable interrupt on ADC sample ready event
    NRF_ADC->INTENSET = ADC_INTENSET_END_Msk;
    NVIC_EnableIRQ(ADC_IRQn);	
	
    //Configure ADC
    NRF_ADC->CONFIG = (ADC_CONFIG_EXTREFSEL_None << ADC_CONFIG_EXTREFSEL_Pos) //ADC external reference pin selection
        | (BED_ADC_INPUT << ADC_CONFIG_PSEL_Pos) //Use analog input
        | (ADC_CONFIG_REFSEL_SupplyOneThirdPrescaling << ADC_CONFIG_REFSEL_Pos) //Use internal 1.2V bandgap voltage as reference for conversion
        | (ADC_CONFIG_INPSEL_AnalogInputOneThirdPrescaling << ADC_CONFIG_INPSEL_Pos) //Analog input with no prescaling
        | (ADC_CONFIG_RES_10bit << ADC_CONFIG_RES_Pos); //10bit ADC resolution
	
    //Enable ADC
    NRF_ADC->ENABLE = ADC_ENABLE_ENABLE_Enabled;
}

//adc functions
int16_t adc_get(uint8_t channel)
{
    adc_is_available = false;
    return adc_value[channel];
}

void adc_sample(void)
{
    adc_is_available = false;
    NRF_ADC->TASKS_START = 1;
}

