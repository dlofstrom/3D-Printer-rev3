//
// uart.h
//


#ifndef UART_H
#define UART_H

#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include <stdarg.h>

#define MAX_TEST_DATA_BYTES (15U) //max number of test bytes to be used for tx and rx.
#define UART_TX_BUF_SIZE 256 //UART TX buffer size.
#define UART_RX_BUF_SIZE 256 //UART RX buffer size.

#define UART_RX_PIN 6
#define UART_TX_PIN 7

//Initialize uart
void uart_init(void);

//Uart functions
bool uart_line_available(void);
uint32_t uart_read_line(char *data);
uint32_t uart_print(const char *data);
uint32_t uart_printf(const char *format, ...);
unsigned int debug(const char *format, ...);

#endif
