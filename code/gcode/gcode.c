//
// This is the main include file for the gcode library
// It parses and executes G-code functions
//
// gcode.c
//

#include "gcode.h"
#include "gcode_lookup.h"

//Parse G-code command
int32_t gcode_parse(const char *s) {
    //Create a copy of the input that we can modify
    char command[strlen(s)+1];
    strncpy(command, s, strlen(s)+1);
    printf("Command length after copy: %lu (%s)\n", strlen(command), command);
    
    //Filter out comments, newlines and trailing spaces
    uint32_t i = 0;
    while (command[i] != ';' && command[i] != '\n' && command[i] != '\0') i++;
    while (command[i-1] == ' ') i--;
    command[i] = '\0';
    printf("Command length after comment filter: %lu (%s)\n", strlen(command), command);

    //Extract Xnnn
    char type = 'X';
    int32_t id = -1;
    if (sscanf(command, "%c%d", &type, &id) == 0) {
        printf("Something is wrong with sscanf command");
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
        return 2;
    }
    
    return 0;
}


// Extract G-code parameter (similar to strtok)
int32_t gcode_get_parameter(char **s, gcode_parameter_t *gp) {
    //Get first Xnnn
    int32_t n = sscanf(*s, "%c%d", &(gp->type), &(gp->value));
    //Move pointer forward;
    while (*((*s)++) != ' ') if (**s == '\0') break;
    if (n == 1) gp->value = -1;
    return n;
}
