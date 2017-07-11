//
// flash.h
//


#ifndef FLASH_H
#define FLASH_H

#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

void flash_page_erase();
void flash_word_write(uint32_t value);
uint32_t flash_word_read();
    

#endif
