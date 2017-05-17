#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>

#include "gcode.h"

int main() {
    printf("Testing G-code parser!\n");

    gcode_parse("G1 X100 Y100 Z100\n");
    gcode_parse("N3 T0*57 ; This is a comment\n");
    gcode_parse("G\n");
    gcode_parse("G X100\n");
    
    return 1;
}
