//
// uart.c
//

#include "uart.h"

#include "app_uart.h"
#include "app_error.h"
#include "nrf.h"
#include "nrf_gpio.h"
#include "SEGGER_RTT.h"

//Simple ring buffer for uart data
#define TX_BUFFER_SIZE 1024
static uint8_t tx_buffer[TX_BUFFER_SIZE];
static uint32_t tx_head = 0;
static uint32_t tx_tail = 0;
static uint32_t tx_ready = 1;

#define RX_BUFFER_SIZE 1024
static uint8_t rx_buffer[RX_BUFFER_SIZE];
static uint32_t rx_head = 0;
static uint32_t rx_tail = 0;
static uint32_t rx_newline_count = 0;

//Uart interrupt
void UART0_IRQHandler(void)
{
    if (NRF_UART0->EVENTS_RXDRDY != 0) {
        rx_buffer[rx_head] = NRF_UART0->RXD;
        if (rx_buffer[rx_head] == '\n') rx_newline_count++;
        rx_head = (rx_head + 1) % RX_BUFFER_SIZE;
        NRF_UART0->EVENTS_RXDRDY = 0;
    }

    if (NRF_UART0->EVENTS_TXDRDY != 0) {
        //If buffer has data
        if (tx_head != tx_tail) {
            //Pop and send
            NRF_UART0->TXD = (char)tx_buffer[tx_tail];
            tx_tail = (tx_tail + 1) % TX_BUFFER_SIZE;
        } else {
            tx_ready = 1;
        }
        NRF_UART0->EVENTS_TXDRDY = 0;
    }

    if (NRF_UART0->EVENTS_ERROR != 0) {
        debug("ERROR\n");
        NRF_UART0->EVENTS_ERROR = 0;
    }
}

//Initialize uart
void uart_init(void)
{
    nrf_gpio_cfg_output(UART_TX_PIN);
    nrf_gpio_cfg_input(UART_RX_PIN, NRF_GPIO_PIN_PULLUP);

    NRF_UART0->PSELTXD = UART_TX_PIN;
    NRF_UART0->PSELRXD = UART_RX_PIN;

    NRF_UART0->BAUDRATE = (UART_BAUDRATE_BAUDRATE_Baud115200 << UART_BAUDRATE_BAUDRATE_Pos);

    NRF_UART0->INTENSET = (UART_INTENSET_TXDRDY_Enabled << UART_INTENSET_TXDRDY_Pos) |
        (UART_INTENSET_RXDRDY_Enabled << UART_INTENSET_RXDRDY_Pos) |
        (UART_INTENSET_ERROR_Enabled << UART_INTENSET_ERROR_Pos);
    NVIC_EnableIRQ(UART0_IRQn);

    NRF_UART0->ENABLE = (UART_ENABLE_ENABLE_Enabled << UART_ENABLE_ENABLE_Pos);

    NRF_UART0->TASKS_STARTTX = 1;
    NRF_UART0->TASKS_STARTRX = 1;
    NRF_UART0->EVENTS_RXDRDY = 0;
    NRF_UART0->EVENTS_TXDRDY = 0;
    NRF_UART0->EVENTS_ERROR = 0;
}


//Uart functions
bool uart_line_available(void) {
    if (rx_newline_count > 0) return true;
    else return false;
}

uint32_t uart_read_line(char *data) {
    uint32_t count = 0;
    if (uart_line_available()) {
        do {
            *data = (char)rx_buffer[rx_tail];
            rx_tail = (rx_tail + 1) % RX_BUFFER_SIZE;
            count++;
        } while (*(data++) != '\n');
        *data = '\0';
        rx_newline_count--;
    }
    return count;
}

uint32_t uart_print(const char *data){
    debug("Uart send: %s", data);
    uint32_t count = 0;
    char *d = (char *)data;
    //debug("pushing:");
    while (*d != '\0') {
        //Push to buffer
        //debug("%c", (char)*d);
        tx_buffer[tx_head] = *d++;
        tx_head = (tx_head + 1) % TX_BUFFER_SIZE;

        //If transmitter is ready start transmission
        if (tx_ready) {
            tx_ready = 0;
            //debug("\nTX ready, sending\n");
            NRF_UART0->TXD = (char)tx_buffer[tx_tail];
            tx_tail = (tx_tail + 1) % TX_BUFFER_SIZE;
        }
    }
    return count;
}

static char str[UART_TX_BUF_SIZE];
uint32_t uart_printf(const char *format, ...) {
    va_list argp;
    va_start(argp, format);

    vsprintf(str, format, argp);
    return uart_print(str);
}

static char dstr[UART_TX_BUF_SIZE];
unsigned int debug(const char *format, ...) {
#ifdef DEBUG
    va_list argp;
    va_start(argp, format);

    vsprintf(dstr, format, argp);
    return SEGGER_RTT_WriteString(0,dstr);
    //return uart_print(str);
#else
    return 0;
#endif
}
