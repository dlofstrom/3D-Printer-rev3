//
// motion.c
//

#include "motion.h"
#include "settings.h"
#include "uart.h"
#include "axis.h"

static int feedrate;

typedef struct {
    int8_t x;
    int8_t y;
    int8_t z;
    int8_t e;
    uint32_t f;
} __attribute__((packed)) motion_t;

static motion_t motion_buffer[MOTION_BUFFER_SIZE];
static uint32_t motion_buffer_head;
static uint32_t motion_buffer_tail;

void motion_init(void) {
    debug("Motion init\n");
    motion_buffer_head = 0;
    motion_buffer_tail = 0;
    feedrate = 1000;

    axis_init();
}

void motion_schedule(int x, int y, int z, int e, int f) {
    //head
    debug("Motion schedule\n");
}

int motion_available(void) {
    if (motion_buffer_head != motion_buffer_tail) return 1;
    else return 0;
}

int motion_execute(void) {
    motion_t m = motion_buffer[motion_buffer_head];
    motion_buffer_head = (motion_buffer_head + 1) % MOTION_BUFFER_SIZE;

    //Do stuff
    debug("Motion execute\n");

    //Go through motion and step axes
    axis_move(m.x, m.y, m.z, m.e);

    return 1; //Convert and return f -> delay
}
