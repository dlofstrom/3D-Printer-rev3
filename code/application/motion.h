//
// motion.h
//


#ifndef MOTION_H
#define MOTION_H

#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

#define MOTION_BUFFER_SIZE 512

void motion_init(void);
void motion_schedule(int x, int y, int z, int e, int f);
int motion_available(void);
int motion_move(void);


#endif
