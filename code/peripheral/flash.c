//
// flash.c
//

#include "flash.h"

#include "nrf.h"

void flash_page_erase()
{
    uint32_t pg_size = NRF_FICR->CODEPAGESIZE;
    uint32_t pg_num  = NRF_FICR->CODESIZE - 1;  // Use last page in flash
    uint32_t *page_address = (uint32_t *)(pg_size * pg_num);
    
    // Turn on flash erase enable and wait until the NVMC is ready:
    NRF_NVMC->CONFIG = (NVMC_CONFIG_WEN_Een << NVMC_CONFIG_WEN_Pos);
    while (NRF_NVMC->READY == NVMC_READY_READY_Busy); //Do nothing.
    // Erase page:
    NRF_NVMC->ERASEPAGE = (uint32_t)page_address;
    while (NRF_NVMC->READY == NVMC_READY_READY_Busy); //Do nothing.
    // Turn off flash erase enable and wait until the NVMC is ready:
    NRF_NVMC->CONFIG = (NVMC_CONFIG_WEN_Ren << NVMC_CONFIG_WEN_Pos);
    while (NRF_NVMC->READY == NVMC_READY_READY_Busy); //Do nothing.
}

void flash_word_write(uint32_t value)
{
    uint32_t pg_size = NRF_FICR->CODEPAGESIZE;
    uint32_t pg_num  = NRF_FICR->CODESIZE - 1;  // Use last page in flash
    uint32_t *address = (uint32_t *)(pg_size * pg_num);
    
    // Turn on flash write enable and wait until the NVMC is ready:
    NRF_NVMC->CONFIG = (NVMC_CONFIG_WEN_Wen << NVMC_CONFIG_WEN_Pos);
    while (NRF_NVMC->READY == NVMC_READY_READY_Busy); //Do nothing.
    *address = value;
    while (NRF_NVMC->READY == NVMC_READY_READY_Busy); //Do nothing.
    // Turn off flash write enable and wait until the NVMC is ready:
    NRF_NVMC->CONFIG = (NVMC_CONFIG_WEN_Ren << NVMC_CONFIG_WEN_Pos);
    while (NRF_NVMC->READY == NVMC_READY_READY_Busy); //Do nothing.
}

uint32_t flash_word_read()
{
    uint32_t pg_size = NRF_FICR->CODEPAGESIZE;
    uint32_t pg_num  = NRF_FICR->CODESIZE - 1;  // Use last page in flash
    uint32_t *address = (uint32_t *)(pg_size * pg_num);
    return *address;
}

