#include <stdbool.h>
#include <stdint.h>

#include "uart.h"
#include "gcode.h"
#include "printer.h"

char line[100];
int i;

int main(void)
{
    //Serial peripheral
    uart_init();

    //Application
    printer_init();

    debug("3D Printer\n");
    while (1)
    {
        if (printer_ready()) {
            if (uart_read_line(line) != 0) {
                //debug("Got a line: %s", line);
                gcode_parse(line);
            }
        }

        printer_loop();
    }
}
