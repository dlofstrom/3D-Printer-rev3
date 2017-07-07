//
// This is the main include file for the gcode library
// It parses and executes G-code functions
//
// gcode.c
//

#include "gcode.h"
#include "gcode_lookup.h"

#ifndef NRF51
// G-code debug print
unsigned int debug(const char *format, ...) {
    va_list argp;
    va_start(argp, format);
    return vprintf(format, argp);
}
#endif

//Parse G-code command
int gcode_parse(const char *s) {
    //Create a copy of the input that we can modify
    char command[strlen(s)+1];
    strncpy(command, s, strlen(s)+1);
    debug("Command length after copy: %u (%s)\n", (unsigned int)strlen(command), command);
    
    //Filter out comments, newlines and trailing spaces
    unsigned int i = 0;
    while (command[i] != ';' && command[i] != '\n' && command[i] != '\0') i++;
    while (command[i-1] == ' ') i--;
    command[i] = '\0';
    debug("Command length after comment filter: %u (%s)\n", (unsigned int)strlen(command), command);

    //Extract Xnnn
    char type = 'X';
    int id = -1;
    if (sscanf(command, "%c%d", &type, &id) == 0) {
        debug("Something is wrong with sscanf command");
        return 1;
    }

    //Lookup G-code function in lookup tree
    gcode_type_t *gt;
    gcode_function_t *gf;
    for (gt = gcode_types; gt->type != 0; gt++) if (gt->type == type) break;
    //If a valid subtree was found (e.g 'G' or 'M')
    if (gt-> type != 0) {
        //Run until nnn part is found
        //The last element in array contains function without nnn
        for (gf = gt->subtree; gf->type != 0; gf++) if (gf->id == id) break;
        //Run function
        return (*(gf->fp))(command);
    } else {
        debug("Not a valid G-code command\n");
        return 2;
    }
    
    return 0;
}


// Extract G-code parameter (similar to strtok)
int gcode_get_parameter(char **s, gcode_parameter_t *gp) {
    //Get first Xnnn
    int n = sscanf(*s, "%c%d", &(gp->type), &(gp->value));
    //Move pointer forward;
    while (*((*s)++) != ' ') if (**s == '\0') break;
    if (n == 1) gp->value = -1;
    return n;
}

