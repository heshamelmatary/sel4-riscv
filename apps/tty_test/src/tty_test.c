/*
 * Copyright 2014, NICTA
 *
 * This software may be distributed and modified according to the terms of
 * the BSD 2-Clause license. Note that NO WARRANTY is provided.
 * See "LICENSE_BSD2.txt" for details.
 *
 * @TAG(NICTA_BSD)
 */

/****************************************************************************
 *
 *      $Id:  $
 *
 *      Description: Simple milestone 0 test.
 *
 *      Author:			Godfrey van der Linden
 *      Original Author:	Ben Leslie
 *
 ****************************************************************************/

#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sel4/sel4.h>


#include "ttyout.h"

// Block a thread forever
// we do this by making an unimplemented system call.
static void
thread_block(void){
    seL4_MessageInfo_t tag = seL4_MessageInfo_new(0, 0, 0, 1);
    seL4_SetTag(tag);
    seL4_SetMR(0, 2);
    seL4_Call(SYSCALL_ENDPOINT_SLOT, tag);
}

int main(void){
    /* initialise communication */
    //ttyout_init();
    //seL4_DebugPutChar('\n');

    const char *string = "task:\tHello world, I'm tty_test!\n";
    
    //sos_debug_print(string, 34); 
    sos_write(string, 34);
    do {
    //    int written = sos_write( (void *) string , strlen(string));
         // printf("Number of written character = %d \n", written);
				/* Send data to SOS */
        //thread_block();
        // sleep(1);	// Implement this as a syscall
    } while(1);

    return 0;
}
