//
// uart.c
//

#include "uart.h"

#include "app_uart.h"
#include "app_error.h"
#include "nrf.h"

//Simple ring buffer for uart data
#define RX_BUFFER_SIZE 1024
static uint8_t rx_buffer[RX_BUFFER_SIZE];
static uint32_t rx_head = 0;
static uint32_t rx_tail = 0;
static uint32_t rx_newline_count = 0;

//Handle uart interrupts
//TODO: Maybe use while (app_uart_get(&cr) != NRF_SUCCESS)?
void uart_evt_callback(app_uart_evt_t * p_event)
{
    //Received byte
    if (p_event->evt_type == APP_UART_DATA_READY) {
        app_uart_get(&rx_buffer[rx_head]);
        if (rx_buffer[rx_head] == '\n') rx_newline_count++;
        rx_head = (rx_head + 1) % RX_BUFFER_SIZE;
    }

    else if (p_event->evt_type == APP_UART_COMMUNICATION_ERROR) {
        APP_ERROR_HANDLER(p_event->data.error_communication);
    }

    else if (p_event->evt_type == APP_UART_FIFO_ERROR) {
        APP_ERROR_HANDLER(p_event->data.error_code);
    }
}

//Initialize uart
void uart_init(void)
{
    uint32_t err_code;
    
    const app_uart_comm_params_t comm_params = {
        UART_RX_PIN,
        UART_TX_PIN,
        0,
        0,
        APP_UART_FLOW_CONTROL_DISABLED,
        false,
        UART_BAUDRATE_BAUDRATE_Baud115200
    };

    APP_UART_FIFO_INIT(
        &comm_params,
        UART_RX_BUF_SIZE,
        UART_TX_BUF_SIZE,
        uart_evt_callback,
        APP_IRQ_PRIORITY_LOWEST,
        err_code);

    APP_ERROR_CHECK(err_code);
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

//TODO: Maybe use while (app_uart_put(cr) != NRF_SUCCESS)?
uint32_t uart_print(const char *data){
    uint32_t count = 0;
    char *d = (char *)data;
    while (*d != '\0') {
        app_uart_put((uint8_t)*(d++));
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

unsigned int debug(const char *format, ...) {
#if DEBUG
    va_list argp;
    va_start(argp, format);

    vsprintf(str, format, argp);
    return uart_print(str);
#else
    return 0;
#endif
}
