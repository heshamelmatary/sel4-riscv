# 1 "kernel_all.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "kernel_all.c"
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/api/syscall.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/stdint.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/stdint.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




typedef unsigned char uint8_t;
typedef unsigned short uint16_t;
typedef unsigned int uint32_t;
typedef unsigned long long uint64_t;

typedef signed char int8_t;
typedef signed short int16_t;
typedef signed int int32_t;
typedef signed long long int64_t;
# 15 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/stdint.h" 2
# 15 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/types.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/api/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/config.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




/* Compile-time configuration parameters. Might be set by the build system. */


# 1 "/home/hesham/MSc-York/seL4/seL4test/include/generated/autoconf.h" 1
/*
 * Automatically generated C config: don't edit
 * Project Configuration
 * Wed May  6 18:27:19 2015
 */
# 18 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/config.h" 2


/* size of the initial thread's root CNode (2^x slots, x >= 4) */




/* number of timer ticks until a thread is preempted  */




/* the number of scheduler domains */




/* number of priorities per domain */




/* maximum number of caps that can be created in one retype invocation */




/* maximum number of iterations until we preempt a delete/revoke invocation */




/* address range to flush per preemption work unit */




/* maximum number of untyped caps in bootinfo */
/* WARNING: must match value in libsel4! */
/* CONSTRAINT: (5 * CONFIG_MAX_NUM_BOOTINFO_UNTYPED_CAPS) <= 4036 */




/* length of a timer tick in ms  */




/* Configuration parameters below are for IA-32 only. */

/* maximum number of nodes supported (if 1, a uniprocessor version is compiled) */




/* maximum number of memory regions to report in bootinfo */




/* maximum number of IOMMU RMRR entries we can record while ACPI parsing */
# 15 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/api/types.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/stdint.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/api/types.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/util.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 43 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/util.h"
/* Borrowed from linux/include/linux/compiler.h */







/* need that for compiling with c99 instead of gnu99 */


/* Evaluate a Kconfig-provided configuration setting at compile-time. */






/** MODIFIES:
    FNSPEC
        halt_spec: "\<Gamma> \<turnstile> {} Call halt_'proc {}"
*/
void halt(void) __attribute__((__noreturn__));
void memzero(void *s, unsigned int n);
void *memset(void *s, unsigned int c, unsigned int n);
void *memcpy(void* ptr_dst, const void* ptr_src, unsigned int n);
int strncmp(const char *s1, const char *s2, int n);
int __attribute__((__const__)) char_to_int(char c);
int __attribute__((__pure__)) str_to_int(const char* str);
# 17 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/api/types.h" 2
# 1 "./api/types_gen.h" 1



# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/assert.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/util.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/assert.h" 2



void _fail(
    const char* str,
    const char* file,
    unsigned int line,
    const char* function
) __attribute__((__noreturn__));



void _assert_fail(
    const char* assertion,
    const char* file,
    unsigned int line,
    const char* function
) __attribute__((__noreturn__));




/* Create an assert that will trigger a compile error if it fails. */
# 5 "./api/types_gen.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/config.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 6 "./api/types_gen.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/stdint.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 7 "./api/types_gen.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/util.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 8 "./api/types_gen.h" 2
struct message_info {
    uint32_t words[1];
};
typedef struct message_info message_info_t;

static inline message_info_t __attribute__((__const__))
message_info_new(uint32_t msgLabel, uint32_t msgCapsUnwrapped, uint32_t msgExtraCaps, uint32_t msgLength) {
    message_info_t message_info;

    message_info.words[0] = 0;

    /* fail if user has passed bits that we will override */
    if(!((msgLabel & ~0xfffff) == 0)) _assert_fail("(msgLabel & ~0xfffff) == 0", "./api/types_gen.h", 20, __FUNCTION__);
    message_info.words[0] |= (msgLabel & 0xfffff) << 12;
    /* fail if user has passed bits that we will override */
    if(!((msgCapsUnwrapped & ~0x7) == 0)) _assert_fail("(msgCapsUnwrapped & ~0x7) == 0", "./api/types_gen.h", 23, __FUNCTION__);
    message_info.words[0] |= (msgCapsUnwrapped & 0x7) << 9;
    /* fail if user has passed bits that we will override */
    if(!((msgExtraCaps & ~0x3) == 0)) _assert_fail("(msgExtraCaps & ~0x3) == 0", "./api/types_gen.h", 26, __FUNCTION__);
    message_info.words[0] |= (msgExtraCaps & 0x3) << 7;
    /* fail if user has passed bits that we will override */
    if(!((msgLength & ~0x7f) == 0)) _assert_fail("(msgLength & ~0x7f) == 0", "./api/types_gen.h", 29, __FUNCTION__);
    message_info.words[0] |= (msgLength & 0x7f) << 0;

    return message_info;
}

static inline uint32_t __attribute__((__const__))
message_info_get_msgLabel(message_info_t message_info) {
    return (message_info.words[0] & 0xfffff000) >> 12;
}

static inline uint32_t __attribute__((__const__))
message_info_get_msgCapsUnwrapped(message_info_t message_info) {
    return (message_info.words[0] & 0xe00) >> 9;
}

static inline message_info_t __attribute__((__const__))
message_info_set_msgCapsUnwrapped(message_info_t message_info, uint32_t v) {
    /* fail if user has passed bits that we will override */
    if(!(((~0xe00 >> 9) & v) == 0)) _assert_fail("((~0xe00 >> 9) & v) == 0", "./api/types_gen.h", 48, __FUNCTION__);
    message_info.words[0] &= ~0xe00;
    message_info.words[0] |= (v << 9) & 0xe00;
    return message_info;
}

static inline uint32_t __attribute__((__const__))
message_info_get_msgExtraCaps(message_info_t message_info) {
    return (message_info.words[0] & 0x180) >> 7;
}

static inline message_info_t __attribute__((__const__))
message_info_set_msgExtraCaps(message_info_t message_info, uint32_t v) {
    /* fail if user has passed bits that we will override */
    if(!(((~0x180 >> 7) & v) == 0)) _assert_fail("((~0x180 >> 7) & v) == 0", "./api/types_gen.h", 62, __FUNCTION__);
    message_info.words[0] &= ~0x180;
    message_info.words[0] |= (v << 7) & 0x180;
    return message_info;
}

static inline uint32_t __attribute__((__const__))
message_info_get_msgLength(message_info_t message_info) {
    return (message_info.words[0] & 0x7f) >> 0;
}

static inline message_info_t __attribute__((__const__))
message_info_set_msgLength(message_info_t message_info, uint32_t v) {
    /* fail if user has passed bits that we will override */
    if(!(((~0x7f >> 0) & v) == 0)) _assert_fail("((~0x7f >> 0) & v) == 0", "./api/types_gen.h", 76, __FUNCTION__);
    message_info.words[0] &= ~0x7f;
    message_info.words[0] |= (v << 0) & 0x7f;
    return message_info;
}

struct cap_rights {
    uint32_t words[1];
};
typedef struct cap_rights cap_rights_t;

static inline cap_rights_t __attribute__((__const__))
cap_rights_new(uint32_t capAllowGrant, uint32_t capAllowRead, uint32_t capAllowWrite) {
    cap_rights_t cap_rights;

    cap_rights.words[0] = 0;

    /* fail if user has passed bits that we will override */
    if(!((capAllowGrant & ~0x1) == 0)) _assert_fail("(capAllowGrant & ~0x1) == 0", "./api/types_gen.h", 94, __FUNCTION__);
    cap_rights.words[0] |= (capAllowGrant & 0x1) << 2;
    /* fail if user has passed bits that we will override */
    if(!((capAllowRead & ~0x1) == 0)) _assert_fail("(capAllowRead & ~0x1) == 0", "./api/types_gen.h", 97, __FUNCTION__);
    cap_rights.words[0] |= (capAllowRead & 0x1) << 1;
    /* fail if user has passed bits that we will override */
    if(!((capAllowWrite & ~0x1) == 0)) _assert_fail("(capAllowWrite & ~0x1) == 0", "./api/types_gen.h", 100, __FUNCTION__);
    cap_rights.words[0] |= (capAllowWrite & 0x1) << 0;

    return cap_rights;
}

static inline uint32_t __attribute__((__const__))
cap_rights_get_capAllowGrant(cap_rights_t cap_rights) {
    return (cap_rights.words[0] & 0x4) >> 2;
}

static inline uint32_t __attribute__((__const__))
cap_rights_get_capAllowRead(cap_rights_t cap_rights) {
    return (cap_rights.words[0] & 0x2) >> 1;
}

static inline uint32_t __attribute__((__const__))
cap_rights_get_capAllowWrite(cap_rights_t cap_rights) {
    return (cap_rights.words[0] & 0x1) >> 0;
}
# 18 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/api/types.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/api/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/api/objecttype.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




typedef enum api_object {
    seL4_UntypedObject,
    seL4_TCBObject,
    seL4_EndpointObject,
    seL4_AsyncEndpointObject,
    seL4_CapTableObject,
    seL4_NonArchObjectTypeCount,
} seL4_ObjectType;

typedef uint32_t api_object_t;
# 15 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/api/types.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/config.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/api/types.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/api/objecttype.h" 1



typedef enum _object {
    seL4_RISCV_4K = seL4_NonArchObjectTypeCount,
    seL4_RISCV_PageTableObject,
    seL4_RISCV_PageDirectoryObject,
    seL4_ObjectTypeCount
} seL4_ArchObjectType;
typedef uint32_t object_t;
# 17 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/api/types.h" 2



enum asidConstants {
    asidInvalid = 0
};



typedef uint32_t asid_t;
# 19 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/api/types.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/stdint.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/types.h" 2

typedef uint32_t word_t;
typedef uint32_t vptr_t;
typedef uint32_t paddr_t;
typedef uint32_t pptr_t;

typedef uint32_t dev_id_t;
typedef uint32_t cpu_id_t;
typedef uint32_t node_id_t;
# 20 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/api/types.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/api/constants.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */






enum priorityConstants {
    seL4_InvalidPrio = -1,
    seL4_MinPrio = 0,
    seL4_MaxPrio = 255
};

/* message_info_t defined in api/types.bf */

enum seL4_MsgLimits {
    seL4_MsgLengthBits = 7,
    seL4_MsgExtraCapBits = 2
};

enum {
    seL4_MsgMaxLength = 120,
};
# 21 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/api/types.h" 2

/* cap_rights_t defined in api/types.bf */

typedef uint32_t prio_t;
typedef uint32_t dom_t;
typedef uint32_t cptr_t;

struct cap_transfer {
    cptr_t ctReceiveRoot;
    cptr_t ctReceiveIndex;
    unsigned int ctReceiveDepth;
};
typedef struct cap_transfer cap_transfer_t;

enum ctLimits {
    capTransferDataSize = 3
};

static inline cap_rights_t __attribute__((__const__))
rightsFromWord(word_t w)
{
    cap_rights_t cap_rights;

    cap_rights.words[0] = w;
    return cap_rights;
}

static inline word_t __attribute__((__const__))
wordFromRights(cap_rights_t cap_rights)
{
    return cap_rights.words[0] & ((1ul<<(3))-1ul);
}

static inline cap_transfer_t __attribute__((__pure__))
capTransferFromWords(word_t *wptr)
{
    cap_transfer_t transfer;

    transfer.ctReceiveRoot = (cptr_t)wptr[0];
    transfer.ctReceiveIndex = (cptr_t)wptr[1];
    transfer.ctReceiveDepth = (unsigned int)wptr[2];
    return transfer;
}

static inline message_info_t __attribute__((__const__))
messageInfoFromWord_raw(word_t w)
{
    message_info_t mi;

    mi.words[0] = w;
    return mi;
}

static inline message_info_t __attribute__((__const__))
messageInfoFromWord(word_t w)
{
    message_info_t mi;
    word_t len;

    mi.words[0] = w;

    len = message_info_get_msgLength(mi);
    if (len > seL4_MsgMaxLength) {
        mi = message_info_set_msgLength(mi, seL4_MsgMaxLength);
    }

    return mi;
}

static inline message_info_t __attribute__((__const__))
messageInfoFromWord_nolencheck(word_t w)
{
    message_info_t mi;
    mi.words[0] = w;
    return mi;
}

static inline word_t __attribute__((__const__))
wordFromMessageInfo(message_info_t mi)
{
    return mi.words[0];
}
# 111 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/api/types.h"
/*
 * Print to serial a message helping userspace programmers to determine why the
 * kernel is not performing their requested operation.
 */
# 16 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/types.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/structures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/api/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/structures.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/stdint.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/structures.h" 2

enum irq_state {
    IRQInactive = 0,
    IRQNotifyAEP = 1,
    IRQTimer = 2,
    IRQReserved = 3,
};
typedef uint32_t irq_state_t;

typedef struct dschedule {
    dom_t domain;
    uint32_t length;
} dschedule_t;

/* Arch-independent object types */

enum endpoint_state {
    EPState_Idle = 0,
    EPState_Send = 1,
    EPState_Recv = 2
};
typedef uint32_t endpoint_state_t;





enum async_endpoint_state {
    AEPState_Idle = 0,
    AEPState_Waiting = 1,
    AEPState_Active = 2
};
typedef uint32_t async_endpoint_state_t;

/* A TCB CNode and a TCB are always allocated together, and adjacently,
 *  * such that they fill a 1024-byte aligned block. The CNode comes first. */
enum tcb_cnode_index {
    /* CSpace root, 16 bytes */
    tcbCTable = 0,

    /* VSpace root, 16 bytes */
    tcbVTable = 1,

    /* Reply cap slot, 16 bytes */
    tcbReply = 2,

    /* TCB of most recent IPC sender, 16 bytes */
    tcbCaller = 3,

    /* IPC buffer cap slot, 16 bytes */
    tcbBuffer = 4,

    tcbCNodeEntries
};
typedef uint32_t tcb_cnode_index_t;



# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/object/structures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/assert.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/object/structures.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/util.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/object/structures.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/api/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 17 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/object/structures.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 18 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/object/structures.h" 2
# 1 "./arch/object/structures_gen.h" 1



# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/assert.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 5 "./arch/object/structures_gen.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/config.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 6 "./arch/object/structures_gen.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/stdint.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 7 "./arch/object/structures_gen.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/util.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 8 "./arch/object/structures_gen.h" 2
struct stored_hw_asid {
    uint32_t words[1];
};
typedef struct stored_hw_asid stored_hw_asid_t;

struct async_endpoint {
    uint32_t words[4];
};
typedef struct async_endpoint async_endpoint_t;

static inline uint32_t __attribute__((__pure__))
async_endpoint_ptr_get_aepBoundTCB(async_endpoint_t *async_endpoint_ptr) {
    return (async_endpoint_ptr->words[3] & 0xfffffff0) << 0;
}

static inline void
async_endpoint_ptr_set_aepBoundTCB(async_endpoint_t *async_endpoint_ptr, uint32_t v) {
    /* fail if user has passed bits that we will override */
    if(!(((~0xfffffff0 << 0) & v) == 0)) _assert_fail("((~0xfffffff0 << 0) & v) == 0", "./arch/object/structures_gen.h", 26, __FUNCTION__);
    async_endpoint_ptr->words[3] &= ~0xfffffff0;
    async_endpoint_ptr->words[3] |= (v >> 0) & 0xfffffff0;
}

static inline uint32_t __attribute__((__pure__))
async_endpoint_ptr_get_aepMsgIdentifier(async_endpoint_t *async_endpoint_ptr) {
    return (async_endpoint_ptr->words[2] & 0xffffffff) >> 0;
}

static inline void
async_endpoint_ptr_set_aepMsgIdentifier(async_endpoint_t *async_endpoint_ptr, uint32_t v) {
    /* fail if user has passed bits that we will override */
    if(!(((~0xffffffff >> 0) & v) == 0)) _assert_fail("((~0xffffffff >> 0) & v) == 0", "./arch/object/structures_gen.h", 39, __FUNCTION__);
    async_endpoint_ptr->words[2] &= ~0xffffffff;
    async_endpoint_ptr->words[2] |= (v << 0) & 0xffffffff;
}

static inline uint32_t __attribute__((__pure__))
async_endpoint_ptr_get_aepQueue_head(async_endpoint_t *async_endpoint_ptr) {
    return (async_endpoint_ptr->words[1] & 0xfffffff0) << 0;
}

static inline void
async_endpoint_ptr_set_aepQueue_head(async_endpoint_t *async_endpoint_ptr, uint32_t v) {
    /* fail if user has passed bits that we will override */
    if(!(((~0xfffffff0 << 0) & v) == 0)) _assert_fail("((~0xfffffff0 << 0) & v) == 0", "./arch/object/structures_gen.h", 52, __FUNCTION__);
    async_endpoint_ptr->words[1] &= ~0xfffffff0;
    async_endpoint_ptr->words[1] |= (v >> 0) & 0xfffffff0;
}

static inline uint32_t __attribute__((__pure__))
async_endpoint_ptr_get_aepQueue_tail(async_endpoint_t *async_endpoint_ptr) {
    return (async_endpoint_ptr->words[0] & 0xfffffff0) << 0;
}

static inline void
async_endpoint_ptr_set_aepQueue_tail(async_endpoint_t *async_endpoint_ptr, uint32_t v) {
    /* fail if user has passed bits that we will override */
    if(!(((~0xfffffff0 << 0) & v) == 0)) _assert_fail("((~0xfffffff0 << 0) & v) == 0", "./arch/object/structures_gen.h", 65, __FUNCTION__);
    async_endpoint_ptr->words[0] &= ~0xfffffff0;
    async_endpoint_ptr->words[0] |= (v >> 0) & 0xfffffff0;
}

static inline uint32_t __attribute__((__pure__))
async_endpoint_ptr_get_state(async_endpoint_t *async_endpoint_ptr) {
    return (async_endpoint_ptr->words[0] & 0x3) >> 0;
}

static inline void
async_endpoint_ptr_set_state(async_endpoint_t *async_endpoint_ptr, uint32_t v) {
    /* fail if user has passed bits that we will override */
    if(!(((~0x3 >> 0) & v) == 0)) _assert_fail("((~0x3 >> 0) & v) == 0", "./arch/object/structures_gen.h", 78, __FUNCTION__);
    async_endpoint_ptr->words[0] &= ~0x3;
    async_endpoint_ptr->words[0] |= (v << 0) & 0x3;
}

struct endpoint {
    uint32_t words[4];
};
typedef struct endpoint endpoint_t;

static inline uint32_t __attribute__((__pure__))
endpoint_ptr_get_epQueue_head(endpoint_t *endpoint_ptr) {
    return (endpoint_ptr->words[1] & 0xfffffff0) << 0;
}

static inline void
endpoint_ptr_set_epQueue_head(endpoint_t *endpoint_ptr, uint32_t v) {
    /* fail if user has passed bits that we will override */
    if(!(((~0xfffffff0 << 0) & v) == 0)) _assert_fail("((~0xfffffff0 << 0) & v) == 0", "./arch/object/structures_gen.h", 96, __FUNCTION__);
    endpoint_ptr->words[1] &= ~0xfffffff0;
    endpoint_ptr->words[1] |= (v >> 0) & 0xfffffff0;
}

static inline uint32_t __attribute__((__pure__))
endpoint_ptr_get_epQueue_tail(endpoint_t *endpoint_ptr) {
    return (endpoint_ptr->words[0] & 0xfffffff0) << 0;
}

static inline void
endpoint_ptr_set_epQueue_tail(endpoint_t *endpoint_ptr, uint32_t v) {
    /* fail if user has passed bits that we will override */
    if(!(((~0xfffffff0 << 0) & v) == 0)) _assert_fail("((~0xfffffff0 << 0) & v) == 0", "./arch/object/structures_gen.h", 109, __FUNCTION__);
    endpoint_ptr->words[0] &= ~0xfffffff0;
    endpoint_ptr->words[0] |= (v >> 0) & 0xfffffff0;
}

static inline uint32_t __attribute__((__pure__))
endpoint_ptr_get_state(endpoint_t *endpoint_ptr) {
    return (endpoint_ptr->words[0] & 0x3) >> 0;
}

static inline void
endpoint_ptr_set_state(endpoint_t *endpoint_ptr, uint32_t v) {
    /* fail if user has passed bits that we will override */
    if(!(((~0x3 >> 0) & v) == 0)) _assert_fail("((~0x3 >> 0) & v) == 0", "./arch/object/structures_gen.h", 122, __FUNCTION__);
    endpoint_ptr->words[0] &= ~0x3;
    endpoint_ptr->words[0] |= (v << 0) & 0x3;
}

struct vm_attributes {
    uint32_t words[1];
};
typedef struct vm_attributes vm_attributes_t;

struct cnode_capdata {
    uint32_t words[1];
};
typedef struct cnode_capdata cnode_capdata_t;

static inline uint32_t __attribute__((__const__))
cnode_capdata_get_guard(cnode_capdata_t cnode_capdata) {
    return (cnode_capdata.words[0] & 0x3ffff00) >> 8;
}

static inline uint32_t __attribute__((__const__))
cnode_capdata_get_guardSize(cnode_capdata_t cnode_capdata) {
    return (cnode_capdata.words[0] & 0xf8) >> 3;
}

struct thread_state {
    uint32_t words[3];
};
typedef struct thread_state thread_state_t;

static inline uint32_t __attribute__((__pure__))
thread_state_ptr_get_blockingIPCBadge(thread_state_t *thread_state_ptr) {
    return (thread_state_ptr->words[2] & 0xfffffff0) >> 4;
}

static inline void
thread_state_ptr_set_blockingIPCBadge(thread_state_t *thread_state_ptr, uint32_t v) {
    /* fail if user has passed bits that we will override */
    if(!(((~0xfffffff0 >> 4) & v) == 0)) _assert_fail("((~0xfffffff0 >> 4) & v) == 0", "./arch/object/structures_gen.h", 160, __FUNCTION__);
    thread_state_ptr->words[2] &= ~0xfffffff0;
    thread_state_ptr->words[2] |= (v << 4) & 0xfffffff0;
}

static inline uint32_t __attribute__((__pure__))
thread_state_ptr_get_blockingIPCCanGrant(thread_state_t *thread_state_ptr) {
    return (thread_state_ptr->words[2] & 0x8) >> 3;
}

static inline void
thread_state_ptr_set_blockingIPCCanGrant(thread_state_t *thread_state_ptr, uint32_t v) {
    /* fail if user has passed bits that we will override */
    if(!(((~0x8 >> 3) & v) == 0)) _assert_fail("((~0x8 >> 3) & v) == 0", "./arch/object/structures_gen.h", 173, __FUNCTION__);
    thread_state_ptr->words[2] &= ~0x8;
    thread_state_ptr->words[2] |= (v << 3) & 0x8;
}

static inline uint32_t __attribute__((__pure__))
thread_state_ptr_get_blockingIPCIsCall(thread_state_t *thread_state_ptr) {
    return (thread_state_ptr->words[2] & 0x4) >> 2;
}

static inline void
thread_state_ptr_set_blockingIPCIsCall(thread_state_t *thread_state_ptr, uint32_t v) {
    /* fail if user has passed bits that we will override */
    if(!(((~0x4 >> 2) & v) == 0)) _assert_fail("((~0x4 >> 2) & v) == 0", "./arch/object/structures_gen.h", 186, __FUNCTION__);
    thread_state_ptr->words[2] &= ~0x4;
    thread_state_ptr->words[2] |= (v << 2) & 0x4;
}

static inline uint32_t __attribute__((__const__))
thread_state_get_blockingIPCDiminishCaps(thread_state_t thread_state) {
    return (thread_state.words[2] & 0x1) >> 0;
}

static inline void
thread_state_ptr_set_blockingIPCDiminishCaps(thread_state_t *thread_state_ptr, uint32_t v) {
    /* fail if user has passed bits that we will override */
    if(!(((~0x1 >> 0) & v) == 0)) _assert_fail("((~0x1 >> 0) & v) == 0", "./arch/object/structures_gen.h", 199, __FUNCTION__);
    thread_state_ptr->words[2] &= ~0x1;
    thread_state_ptr->words[2] |= (v << 0) & 0x1;
}

static inline uint32_t __attribute__((__const__))
thread_state_get_tcbQueued(thread_state_t thread_state) {
    return (thread_state.words[1] & 0x1) >> 0;
}

static inline void
thread_state_ptr_set_tcbQueued(thread_state_t *thread_state_ptr, uint32_t v) {
    /* fail if user has passed bits that we will override */
    if(!(((~0x1 >> 0) & v) == 0)) _assert_fail("((~0x1 >> 0) & v) == 0", "./arch/object/structures_gen.h", 212, __FUNCTION__);
    thread_state_ptr->words[1] &= ~0x1;
    thread_state_ptr->words[1] |= (v << 0) & 0x1;
}

static inline uint32_t __attribute__((__pure__))
thread_state_ptr_get_blockingIPCEndpoint(thread_state_t *thread_state_ptr) {
    return (thread_state_ptr->words[0] & 0xfffffff0) << 0;
}

static inline void
thread_state_ptr_set_blockingIPCEndpoint(thread_state_t *thread_state_ptr, uint32_t v) {
    /* fail if user has passed bits that we will override */
    if(!(((~0xfffffff0 << 0) & v) == 0)) _assert_fail("((~0xfffffff0 << 0) & v) == 0", "./arch/object/structures_gen.h", 225, __FUNCTION__);
    thread_state_ptr->words[0] &= ~0xfffffff0;
    thread_state_ptr->words[0] |= (v >> 0) & 0xfffffff0;
}

static inline uint32_t __attribute__((__const__))
thread_state_get_tsType(thread_state_t thread_state) {
    return (thread_state.words[0] & 0xf) >> 0;
}

static inline uint32_t __attribute__((__pure__))
thread_state_ptr_get_tsType(thread_state_t *thread_state_ptr) {
    return (thread_state_ptr->words[0] & 0xf) >> 0;
}

static inline void
thread_state_ptr_set_tsType(thread_state_t *thread_state_ptr, uint32_t v) {
    /* fail if user has passed bits that we will override */
    if(!(((~0xf >> 0) & v) == 0)) _assert_fail("((~0xf >> 0) & v) == 0", "./arch/object/structures_gen.h", 243, __FUNCTION__);
    thread_state_ptr->words[0] &= ~0xf;
    thread_state_ptr->words[0] |= (v << 0) & 0xf;
}

struct mdb_node {
    uint32_t words[2];
};
typedef struct mdb_node mdb_node_t;

static inline mdb_node_t __attribute__((__const__))
mdb_node_new(uint32_t cdtRight_, uint32_t cdtDepth, uint32_t cdtLeft_, uint32_t cdtLevel) {
    mdb_node_t mdb_node;

    mdb_node.words[0] = 0;
    mdb_node.words[1] = 0;

    /* fail if user has passed bits that we will override */
    if(!((cdtRight_ & ~0x7ffffff) == 0)) _assert_fail("(cdtRight_ & ~0x7ffffff) == 0", "./arch/object/structures_gen.h", 261, __FUNCTION__);
    mdb_node.words[1] |= (cdtRight_ & 0x7ffffff) << 5;
    /* fail if user has passed bits that we will override */
    if(!((cdtDepth & ~0x1f) == 0)) _assert_fail("(cdtDepth & ~0x1f) == 0", "./arch/object/structures_gen.h", 264, __FUNCTION__);
    mdb_node.words[1] |= (cdtDepth & 0x1f) << 0;
    /* fail if user has passed bits that we will override */
    if(!((cdtLeft_ & ~0x7ffffff) == 0)) _assert_fail("(cdtLeft_ & ~0x7ffffff) == 0", "./arch/object/structures_gen.h", 267, __FUNCTION__);
    mdb_node.words[0] |= (cdtLeft_ & 0x7ffffff) << 5;
    /* fail if user has passed bits that we will override */
    if(!((cdtLevel & ~0x1f) == 0)) _assert_fail("(cdtLevel & ~0x1f) == 0", "./arch/object/structures_gen.h", 270, __FUNCTION__);
    mdb_node.words[0] |= (cdtLevel & 0x1f) << 0;

    return mdb_node;
}

static inline uint32_t __attribute__((__const__))
mdb_node_get_cdtRight_(mdb_node_t mdb_node) {
    return (mdb_node.words[1] & 0xffffffe0) >> 5;
}

static inline void
mdb_node_ptr_set_cdtRight_(mdb_node_t *mdb_node_ptr, uint32_t v) {
    /* fail if user has passed bits that we will override */
    if(!(((~0xffffffe0 >> 5) & v) == 0)) _assert_fail("((~0xffffffe0 >> 5) & v) == 0", "./arch/object/structures_gen.h", 284, __FUNCTION__);
    mdb_node_ptr->words[1] &= ~0xffffffe0;
    mdb_node_ptr->words[1] |= (v << 5) & 0xffffffe0;
}

static inline uint32_t __attribute__((__const__))
mdb_node_get_cdtDepth(mdb_node_t mdb_node) {
    return (mdb_node.words[1] & 0x1f) >> 0;
}

static inline uint32_t __attribute__((__const__))
mdb_node_get_cdtLeft_(mdb_node_t mdb_node) {
    return (mdb_node.words[0] & 0xffffffe0) >> 5;
}

static inline void
mdb_node_ptr_set_cdtLeft_(mdb_node_t *mdb_node_ptr, uint32_t v) {
    /* fail if user has passed bits that we will override */
    if(!(((~0xffffffe0 >> 5) & v) == 0)) _assert_fail("((~0xffffffe0 >> 5) & v) == 0", "./arch/object/structures_gen.h", 302, __FUNCTION__);
    mdb_node_ptr->words[0] &= ~0xffffffe0;
    mdb_node_ptr->words[0] |= (v << 5) & 0xffffffe0;
}

static inline uint32_t __attribute__((__const__))
mdb_node_get_cdtLevel(mdb_node_t mdb_node) {
    return (mdb_node.words[0] & 0x1f) >> 0;
}

static inline void
mdb_node_ptr_set_cdtLevel(mdb_node_t *mdb_node_ptr, uint32_t v) {
    /* fail if user has passed bits that we will override */
    if(!(((~0x1f >> 0) & v) == 0)) _assert_fail("((~0x1f >> 0) & v) == 0", "./arch/object/structures_gen.h", 315, __FUNCTION__);
    mdb_node_ptr->words[0] &= ~0x1f;
    mdb_node_ptr->words[0] |= (v << 0) & 0x1f;
}

struct fault {
    uint32_t words[2];
};
typedef struct fault fault_t;

enum fault_tag {
    fault_null_fault = 0,
    fault_cap_fault = 1,
    fault_vm_fault = 2,
    fault_unknown_syscall = 3,
    fault_user_exception = 4
};
typedef enum fault_tag fault_tag_t;

static inline uint32_t __attribute__((__const__))
fault_get_faultType(fault_t fault) {
    return (fault.words[0] >> 0) & 0x7;
}

static inline uint32_t __attribute__((__pure__))
fault_ptr_get_faultType(fault_t *fault_ptr) {
    return (fault_ptr->words[0] >> 0) & 0x7;
}

static inline void
fault_null_fault_ptr_new(fault_t *fault_ptr) {
    fault_ptr->words[0] = 0;
    fault_ptr->words[1] = 0;

    /* fail if user has passed bits that we will override */
    if(!(((uint32_t)fault_null_fault & ~0x7) == 0)) _assert_fail("((uint32_t)fault_null_fault & ~0x7) == 0", "./arch/object/structures_gen.h", 350, __FUNCTION__);
    fault_ptr->words[0] |= ((uint32_t)fault_null_fault & 0x7) << 0;
}

static inline fault_t __attribute__((__const__))
fault_cap_fault_new(uint32_t address, uint32_t inReceivePhase) {
    fault_t fault;

    fault.words[0] = 0;
    fault.words[1] = 0;

       fault.words[1] |= address << 0;
    /* fail if user has passed bits that we will override */
    if(!((inReceivePhase & ~0x1) == 0)) _assert_fail("(inReceivePhase & ~0x1) == 0", "./arch/object/structures_gen.h", 363, __FUNCTION__);
    fault.words[0] |= (inReceivePhase & 0x1) << 31;
    /* fail if user has passed bits that we will override */
    if(!(((uint32_t)fault_cap_fault & ~0x7) == 0)) _assert_fail("((uint32_t)fault_cap_fault & ~0x7) == 0", "./arch/object/structures_gen.h", 366, __FUNCTION__);
    fault.words[0] |= ((uint32_t)fault_cap_fault & 0x7) << 0;

    return fault;
}

static inline uint32_t __attribute__((__const__))
fault_cap_fault_get_address(fault_t fault) {
    if(!(((fault.words[0] >> 0) & 0x7) == fault_cap_fault)) _assert_fail("((fault.words[0] >> 0) & 0x7) == fault_cap_fault",
                          "./arch/object/structures_gen.h"
# 374 "./arch/object/structures_gen.h"
    ,
                          375
# 374 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                           ;

    return (fault.words[1] & 0xffffffff) >> 0;
}

static inline uint32_t __attribute__((__const__))
fault_cap_fault_get_inReceivePhase(fault_t fault) {
    if(!(((fault.words[0] >> 0) & 0x7) == fault_cap_fault)) _assert_fail("((fault.words[0] >> 0) & 0x7) == fault_cap_fault",
                          "./arch/object/structures_gen.h"
# 382 "./arch/object/structures_gen.h"
    ,
                          383
# 382 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                           ;

    return (fault.words[0] & 0x80000000) >> 31;
}

static inline uint32_t __attribute__((__const__))
fault_vm_fault_get_address(fault_t fault) {
    if(!(((fault.words[0] >> 0) & 0x7) == fault_vm_fault)) _assert_fail("((fault.words[0] >> 0) & 0x7) == fault_vm_fault",
                         "./arch/object/structures_gen.h"
# 390 "./arch/object/structures_gen.h"
    ,
                         391
# 390 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                          ;

    return (fault.words[1] & 0xffffffff) >> 0;
}

static inline uint32_t __attribute__((__const__))
fault_vm_fault_get_FSR(fault_t fault) {
    if(!(((fault.words[0] >> 0) & 0x7) == fault_vm_fault)) _assert_fail("((fault.words[0] >> 0) & 0x7) == fault_vm_fault",
                         "./arch/object/structures_gen.h"
# 398 "./arch/object/structures_gen.h"
    ,
                         399
# 398 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                          ;

    return (fault.words[0] & 0xfffc0000) >> 18;
}

static inline uint32_t __attribute__((__const__))
fault_vm_fault_get_instructionFault(fault_t fault) {
    if(!(((fault.words[0] >> 0) & 0x7) == fault_vm_fault)) _assert_fail("((fault.words[0] >> 0) & 0x7) == fault_vm_fault",
                         "./arch/object/structures_gen.h"
# 406 "./arch/object/structures_gen.h"
    ,
                         407
# 406 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                          ;

    return (fault.words[0] & 0x20000) >> 17;
}

static inline fault_t __attribute__((__const__))
fault_unknown_syscall_new(uint32_t syscallNumber) {
    fault_t fault;

    fault.words[0] = 0;
    fault.words[1] = 0;

       fault.words[1] |= syscallNumber << 0;
    /* fail if user has passed bits that we will override */
    if(!(((uint32_t)fault_unknown_syscall & ~0x7) == 0)) _assert_fail("((uint32_t)fault_unknown_syscall & ~0x7) == 0", "./arch/object/structures_gen.h", 421, __FUNCTION__);
    fault.words[0] |= ((uint32_t)fault_unknown_syscall & 0x7) << 0;

    return fault;
}

static inline uint32_t __attribute__((__const__))
fault_unknown_syscall_get_syscallNumber(fault_t fault) {
    if(!(((fault.words[0] >> 0) & 0x7) == fault_unknown_syscall)) _assert_fail("((fault.words[0] >> 0) & 0x7) == fault_unknown_syscall",
                                "./arch/object/structures_gen.h"
# 429 "./arch/object/structures_gen.h"
    ,
                                430
# 429 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                                 ;

    return (fault.words[1] & 0xffffffff) >> 0;
}

static inline fault_t __attribute__((__const__))
fault_user_exception_new(uint32_t number, uint32_t code) {
    fault_t fault;

    fault.words[0] = 0;
    fault.words[1] = 0;

       fault.words[1] |= number << 0;
    /* fail if user has passed bits that we will override */
    if(!((code & ~0x1fffffff) == 0)) _assert_fail("(code & ~0x1fffffff) == 0", "./arch/object/structures_gen.h", 444, __FUNCTION__);
    fault.words[0] |= (code & 0x1fffffff) << 3;
    /* fail if user has passed bits that we will override */
    if(!(((uint32_t)fault_user_exception & ~0x7) == 0)) _assert_fail("((uint32_t)fault_user_exception & ~0x7) == 0", "./arch/object/structures_gen.h", 447, __FUNCTION__);
    fault.words[0] |= ((uint32_t)fault_user_exception & 0x7) << 0;

    return fault;
}

static inline uint32_t __attribute__((__const__))
fault_user_exception_get_number(fault_t fault) {
    if(!(((fault.words[0] >> 0) & 0x7) == fault_user_exception)) _assert_fail("((fault.words[0] >> 0) & 0x7) == fault_user_exception",
                               "./arch/object/structures_gen.h"
# 455 "./arch/object/structures_gen.h"
    ,
                               456
# 455 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                                ;

    return (fault.words[1] & 0xffffffff) >> 0;
}

static inline uint32_t __attribute__((__const__))
fault_user_exception_get_code(fault_t fault) {
    if(!(((fault.words[0] >> 0) & 0x7) == fault_user_exception)) _assert_fail("((fault.words[0] >> 0) & 0x7) == fault_user_exception",
                               "./arch/object/structures_gen.h"
# 463 "./arch/object/structures_gen.h"
    ,
                               464
# 463 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                                ;

    return (fault.words[0] & 0xfffffff8) >> 3;
}

struct pde {
    uint32_t words[1];
};
typedef struct pde pde_t;

enum pde_tag {
    pde_pde_invalid = 0,
    pde_pde_coarse = 1,
    pde_pde_section = 2,
    pde_pde_reserved = 3
};
typedef enum pde_tag pde_tag_t;

struct cap {
    uint32_t words[2];
};
typedef struct cap cap_t;

enum cap_tag {
    cap_null_cap = 0,
    cap_untyped_cap = 2,
    cap_endpoint_cap = 4,
    cap_async_endpoint_cap = 6,
    cap_reply_cap = 8,
    cap_cnode_cap = 10,
    cap_thread_cap = 12,
    cap_frame_cap = 1,
    cap_page_table_cap = 3,
    cap_page_directory_cap = 5,
    cap_irq_control_cap = 14,
    cap_irq_handler_cap = 30,
    cap_zombie_cap = 46,
    cap_domain_cap = 62
};
typedef enum cap_tag cap_tag_t;

static inline uint32_t __attribute__((__const__))
cap_get_capType(cap_t cap) {
    if ((cap.words[0] & 0xe) != 0xe)
        return (cap.words[0] >> 0) & 0xf;
    return (cap.words[0] >> 0) & 0xff;
}

static inline cap_t __attribute__((__const__))
cap_null_cap_new(void) {
    cap_t cap;

    cap.words[0] = 0;
    cap.words[1] = 0;

    /* fail if user has passed bits that we will override */
    if(!(((uint32_t)cap_null_cap & ~0xf) == 0)) _assert_fail("((uint32_t)cap_null_cap & ~0xf) == 0", "./arch/object/structures_gen.h", 520, __FUNCTION__);
    cap.words[0] |= ((uint32_t)cap_null_cap & 0xf) << 0;

    return cap;
}

static inline cap_t __attribute__((__const__))
cap_untyped_cap_new(uint32_t capDeviceMemory, uint32_t capBlockSize, uint32_t capPtr) {
    cap_t cap;

    cap.words[0] = 0;
    cap.words[1] = 0;

    /* fail if user has passed bits that we will override */
    if(!((capDeviceMemory & ~0x1) == 0)) _assert_fail("(capDeviceMemory & ~0x1) == 0", "./arch/object/structures_gen.h", 534, __FUNCTION__);
    cap.words[1] |= (capDeviceMemory & 0x1) << 5;
    /* fail if user has passed bits that we will override */
    if(!((capBlockSize & ~0x1f) == 0)) _assert_fail("(capBlockSize & ~0x1f) == 0", "./arch/object/structures_gen.h", 537, __FUNCTION__);
    cap.words[1] |= (capBlockSize & 0x1f) << 0;
    /* fail if user has passed bits that we will override */
    if(!((capPtr & ~0xfffffff0) == 0)) _assert_fail("(capPtr & ~0xfffffff0) == 0", "./arch/object/structures_gen.h", 540, __FUNCTION__);
    cap.words[0] |= (capPtr & 0xfffffff0) >> 0;
    /* fail if user has passed bits that we will override */
    if(!(((uint32_t)cap_untyped_cap & ~0xf) == 0)) _assert_fail("((uint32_t)cap_untyped_cap & ~0xf) == 0", "./arch/object/structures_gen.h", 543, __FUNCTION__);
    cap.words[0] |= ((uint32_t)cap_untyped_cap & 0xf) << 0;

    return cap;
}

static inline uint32_t __attribute__((__const__))
cap_untyped_cap_get_capDeviceMemory(cap_t cap) {
    if(!(((cap.words[0] >> 0) & 0xf) == cap_untyped_cap)) _assert_fail("((cap.words[0] >> 0) & 0xf) == cap_untyped_cap",
                          "./arch/object/structures_gen.h"
# 551 "./arch/object/structures_gen.h"
    ,
                          552
# 551 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                           ;

    return (cap.words[1] & 0x20) >> 5;
}

static inline uint32_t __attribute__((__const__))
cap_untyped_cap_get_capBlockSize(cap_t cap) {
    if(!(((cap.words[0] >> 0) & 0xf) == cap_untyped_cap)) _assert_fail("((cap.words[0] >> 0) & 0xf) == cap_untyped_cap",
                          "./arch/object/structures_gen.h"
# 559 "./arch/object/structures_gen.h"
    ,
                          560
# 559 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                           ;

    return (cap.words[1] & 0x1f) >> 0;
}

static inline uint32_t __attribute__((__pure__))
cap_untyped_cap_ptr_get_capBlockSize(cap_t *cap_ptr) {
    if(!(((cap_ptr->words[0] >> 0) & 0xf) == cap_untyped_cap)) _assert_fail("((cap_ptr->words[0] >> 0) & 0xf) == cap_untyped_cap",
                          "./arch/object/structures_gen.h"
# 567 "./arch/object/structures_gen.h"
    ,
                          568
# 567 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                           ;

    return (cap_ptr->words[1] & 0x1f) >> 0;
}

static inline uint32_t __attribute__((__const__))
cap_untyped_cap_get_capPtr(cap_t cap) {
    if(!(((cap.words[0] >> 0) & 0xf) == cap_untyped_cap)) _assert_fail("((cap.words[0] >> 0) & 0xf) == cap_untyped_cap",
                          "./arch/object/structures_gen.h"
# 575 "./arch/object/structures_gen.h"
    ,
                          576
# 575 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                           ;

    return (cap.words[0] & 0xfffffff0) << 0;
}

static inline cap_t __attribute__((__const__))
cap_endpoint_cap_new(uint32_t capEPBadge, uint32_t capCanGrant, uint32_t capCanSend, uint32_t capCanReceive, uint32_t capEPPtr) {
    cap_t cap;

    cap.words[0] = 0;
    cap.words[1] = 0;

    /* fail if user has passed bits that we will override */
    if(!((capEPBadge & ~0xfffffff) == 0)) _assert_fail("(capEPBadge & ~0xfffffff) == 0", "./arch/object/structures_gen.h", 589, __FUNCTION__);
    cap.words[0] |= (capEPBadge & 0xfffffff) << 4;
    /* fail if user has passed bits that we will override */
    if(!((capCanGrant & ~0x1) == 0)) _assert_fail("(capCanGrant & ~0x1) == 0", "./arch/object/structures_gen.h", 592, __FUNCTION__);
    cap.words[1] |= (capCanGrant & 0x1) << 2;
    /* fail if user has passed bits that we will override */
    if(!((capCanSend & ~0x1) == 0)) _assert_fail("(capCanSend & ~0x1) == 0", "./arch/object/structures_gen.h", 595, __FUNCTION__);
    cap.words[1] |= (capCanSend & 0x1) << 0;
    /* fail if user has passed bits that we will override */
    if(!((capCanReceive & ~0x1) == 0)) _assert_fail("(capCanReceive & ~0x1) == 0", "./arch/object/structures_gen.h", 598, __FUNCTION__);
    cap.words[1] |= (capCanReceive & 0x1) << 1;
    /* fail if user has passed bits that we will override */
    if(!((capEPPtr & ~0xfffffff0) == 0)) _assert_fail("(capEPPtr & ~0xfffffff0) == 0", "./arch/object/structures_gen.h", 601, __FUNCTION__);
    cap.words[1] |= (capEPPtr & 0xfffffff0) >> 0;
    /* fail if user has passed bits that we will override */
    if(!(((uint32_t)cap_endpoint_cap & ~0xf) == 0)) _assert_fail("((uint32_t)cap_endpoint_cap & ~0xf) == 0", "./arch/object/structures_gen.h", 604, __FUNCTION__);
    cap.words[0] |= ((uint32_t)cap_endpoint_cap & 0xf) << 0;

    return cap;
}

static inline uint32_t __attribute__((__const__))
cap_endpoint_cap_get_capEPPtr(cap_t cap) {
    if(!(((cap.words[0] >> 0) & 0xf) == cap_endpoint_cap)) _assert_fail("((cap.words[0] >> 0) & 0xf) == cap_endpoint_cap",
                           "./arch/object/structures_gen.h"
# 612 "./arch/object/structures_gen.h"
    ,
                           613
# 612 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                            ;

    return (cap.words[1] & 0xfffffff0) << 0;
}

static inline uint32_t __attribute__((__const__))
cap_endpoint_cap_get_capCanGrant(cap_t cap) {
    if(!(((cap.words[0] >> 0) & 0xf) == cap_endpoint_cap)) _assert_fail("((cap.words[0] >> 0) & 0xf) == cap_endpoint_cap",
                           "./arch/object/structures_gen.h"
# 620 "./arch/object/structures_gen.h"
    ,
                           621
# 620 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                            ;

    return (cap.words[1] & 0x4) >> 2;
}

static inline cap_t __attribute__((__const__))
cap_endpoint_cap_set_capCanGrant(cap_t cap, uint32_t v) {
    if(!(((cap.words[0] >> 0) & 0xf) == cap_endpoint_cap)) _assert_fail("((cap.words[0] >> 0) & 0xf) == cap_endpoint_cap",
                           "./arch/object/structures_gen.h"
# 628 "./arch/object/structures_gen.h"
    ,
                           629
# 628 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                            ;
    /* fail if user has passed bits that we will override */
    if(!(((~0x4 >> 2) & v) == 0)) _assert_fail("((~0x4 >> 2) & v) == 0", "./arch/object/structures_gen.h", 631, __FUNCTION__);

    cap.words[1] &= ~0x4;
    cap.words[1] |= (v << 2) & 0x4;
    return cap;
}

static inline uint32_t __attribute__((__const__))
cap_endpoint_cap_get_capCanReceive(cap_t cap) {
    if(!(((cap.words[0] >> 0) & 0xf) == cap_endpoint_cap)) _assert_fail("((cap.words[0] >> 0) & 0xf) == cap_endpoint_cap",
                           "./arch/object/structures_gen.h"
# 640 "./arch/object/structures_gen.h"
    ,
                           641
# 640 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                            ;

    return (cap.words[1] & 0x2) >> 1;
}

static inline cap_t __attribute__((__const__))
cap_endpoint_cap_set_capCanReceive(cap_t cap, uint32_t v) {
    if(!(((cap.words[0] >> 0) & 0xf) == cap_endpoint_cap)) _assert_fail("((cap.words[0] >> 0) & 0xf) == cap_endpoint_cap",
                           "./arch/object/structures_gen.h"
# 648 "./arch/object/structures_gen.h"
    ,
                           649
# 648 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                            ;
    /* fail if user has passed bits that we will override */
    if(!(((~0x2 >> 1) & v) == 0)) _assert_fail("((~0x2 >> 1) & v) == 0", "./arch/object/structures_gen.h", 651, __FUNCTION__);

    cap.words[1] &= ~0x2;
    cap.words[1] |= (v << 1) & 0x2;
    return cap;
}

static inline uint32_t __attribute__((__const__))
cap_endpoint_cap_get_capCanSend(cap_t cap) {
    if(!(((cap.words[0] >> 0) & 0xf) == cap_endpoint_cap)) _assert_fail("((cap.words[0] >> 0) & 0xf) == cap_endpoint_cap",
                           "./arch/object/structures_gen.h"
# 660 "./arch/object/structures_gen.h"
    ,
                           661
# 660 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                            ;

    return (cap.words[1] & 0x1) >> 0;
}

static inline cap_t __attribute__((__const__))
cap_endpoint_cap_set_capCanSend(cap_t cap, uint32_t v) {
    if(!(((cap.words[0] >> 0) & 0xf) == cap_endpoint_cap)) _assert_fail("((cap.words[0] >> 0) & 0xf) == cap_endpoint_cap",
                           "./arch/object/structures_gen.h"
# 668 "./arch/object/structures_gen.h"
    ,
                           669
# 668 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                            ;
    /* fail if user has passed bits that we will override */
    if(!(((~0x1 >> 0) & v) == 0)) _assert_fail("((~0x1 >> 0) & v) == 0", "./arch/object/structures_gen.h", 671, __FUNCTION__);

    cap.words[1] &= ~0x1;
    cap.words[1] |= (v << 0) & 0x1;
    return cap;
}

static inline uint32_t __attribute__((__const__))
cap_endpoint_cap_get_capEPBadge(cap_t cap) {
    if(!(((cap.words[0] >> 0) & 0xf) == cap_endpoint_cap)) _assert_fail("((cap.words[0] >> 0) & 0xf) == cap_endpoint_cap",
                           "./arch/object/structures_gen.h"
# 680 "./arch/object/structures_gen.h"
    ,
                           681
# 680 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                            ;

    return (cap.words[0] & 0xfffffff0) >> 4;
}

static inline cap_t __attribute__((__const__))
cap_endpoint_cap_set_capEPBadge(cap_t cap, uint32_t v) {
    if(!(((cap.words[0] >> 0) & 0xf) == cap_endpoint_cap)) _assert_fail("((cap.words[0] >> 0) & 0xf) == cap_endpoint_cap",
                           "./arch/object/structures_gen.h"
# 688 "./arch/object/structures_gen.h"
    ,
                           689
# 688 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                            ;
    /* fail if user has passed bits that we will override */
    if(!(((~0xfffffff0 >> 4) & v) == 0)) _assert_fail("((~0xfffffff0 >> 4) & v) == 0", "./arch/object/structures_gen.h", 691, __FUNCTION__);

    cap.words[0] &= ~0xfffffff0;
    cap.words[0] |= (v << 4) & 0xfffffff0;
    return cap;
}

static inline cap_t __attribute__((__const__))
cap_async_endpoint_cap_new(uint32_t capAEPBadge, uint32_t capAEPCanReceive, uint32_t capAEPCanSend, uint32_t capAEPPtr) {
    cap_t cap;

    cap.words[0] = 0;
    cap.words[1] = 0;

    /* fail if user has passed bits that we will override */
    if(!((capAEPBadge & ~0xfffffff) == 0)) _assert_fail("(capAEPBadge & ~0xfffffff) == 0", "./arch/object/structures_gen.h", 706, __FUNCTION__);
    cap.words[1] |= (capAEPBadge & 0xfffffff) << 4;
    /* fail if user has passed bits that we will override */
    if(!((capAEPCanReceive & ~0x1) == 0)) _assert_fail("(capAEPCanReceive & ~0x1) == 0", "./arch/object/structures_gen.h", 709, __FUNCTION__);
    cap.words[1] |= (capAEPCanReceive & 0x1) << 1;
    /* fail if user has passed bits that we will override */
    if(!((capAEPCanSend & ~0x1) == 0)) _assert_fail("(capAEPCanSend & ~0x1) == 0", "./arch/object/structures_gen.h", 712, __FUNCTION__);
    cap.words[1] |= (capAEPCanSend & 0x1) << 0;
    /* fail if user has passed bits that we will override */
    if(!((capAEPPtr & ~0xfffffff0) == 0)) _assert_fail("(capAEPPtr & ~0xfffffff0) == 0", "./arch/object/structures_gen.h", 715, __FUNCTION__);
    cap.words[0] |= (capAEPPtr & 0xfffffff0) >> 0;
    /* fail if user has passed bits that we will override */
    if(!(((uint32_t)cap_async_endpoint_cap & ~0xf) == 0)) _assert_fail("((uint32_t)cap_async_endpoint_cap & ~0xf) == 0", "./arch/object/structures_gen.h", 718, __FUNCTION__);
    cap.words[0] |= ((uint32_t)cap_async_endpoint_cap & 0xf) << 0;

    return cap;
}

static inline uint32_t __attribute__((__const__))
cap_async_endpoint_cap_get_capAEPBadge(cap_t cap) {
    if(!(((cap.words[0] >> 0) & 0xf) == cap_async_endpoint_cap)) _assert_fail("((cap.words[0] >> 0) & 0xf) == cap_async_endpoint_cap",
                                 "./arch/object/structures_gen.h"
# 726 "./arch/object/structures_gen.h"
    ,
                                 727
# 726 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                                  ;

    return (cap.words[1] & 0xfffffff0) >> 4;
}

static inline cap_t __attribute__((__const__))
cap_async_endpoint_cap_set_capAEPBadge(cap_t cap, uint32_t v) {
    if(!(((cap.words[0] >> 0) & 0xf) == cap_async_endpoint_cap)) _assert_fail("((cap.words[0] >> 0) & 0xf) == cap_async_endpoint_cap",
                                 "./arch/object/structures_gen.h"
# 734 "./arch/object/structures_gen.h"
    ,
                                 735
# 734 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                                  ;
    /* fail if user has passed bits that we will override */
    if(!(((~0xfffffff0 >> 4) & v) == 0)) _assert_fail("((~0xfffffff0 >> 4) & v) == 0", "./arch/object/structures_gen.h", 737, __FUNCTION__);

    cap.words[1] &= ~0xfffffff0;
    cap.words[1] |= (v << 4) & 0xfffffff0;
    return cap;
}

static inline uint32_t __attribute__((__const__))
cap_async_endpoint_cap_get_capAEPCanReceive(cap_t cap) {
    if(!(((cap.words[0] >> 0) & 0xf) == cap_async_endpoint_cap)) _assert_fail("((cap.words[0] >> 0) & 0xf) == cap_async_endpoint_cap",
                                 "./arch/object/structures_gen.h"
# 746 "./arch/object/structures_gen.h"
    ,
                                 747
# 746 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                                  ;

    return (cap.words[1] & 0x2) >> 1;
}

static inline cap_t __attribute__((__const__))
cap_async_endpoint_cap_set_capAEPCanReceive(cap_t cap, uint32_t v) {
    if(!(((cap.words[0] >> 0) & 0xf) == cap_async_endpoint_cap)) _assert_fail("((cap.words[0] >> 0) & 0xf) == cap_async_endpoint_cap",
                                 "./arch/object/structures_gen.h"
# 754 "./arch/object/structures_gen.h"
    ,
                                 755
# 754 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                                  ;
    /* fail if user has passed bits that we will override */
    if(!(((~0x2 >> 1) & v) == 0)) _assert_fail("((~0x2 >> 1) & v) == 0", "./arch/object/structures_gen.h", 757, __FUNCTION__);

    cap.words[1] &= ~0x2;
    cap.words[1] |= (v << 1) & 0x2;
    return cap;
}

static inline uint32_t __attribute__((__const__))
cap_async_endpoint_cap_get_capAEPCanSend(cap_t cap) {
    if(!(((cap.words[0] >> 0) & 0xf) == cap_async_endpoint_cap)) _assert_fail("((cap.words[0] >> 0) & 0xf) == cap_async_endpoint_cap",
                                 "./arch/object/structures_gen.h"
# 766 "./arch/object/structures_gen.h"
    ,
                                 767
# 766 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                                  ;

    return (cap.words[1] & 0x1) >> 0;
}

static inline cap_t __attribute__((__const__))
cap_async_endpoint_cap_set_capAEPCanSend(cap_t cap, uint32_t v) {
    if(!(((cap.words[0] >> 0) & 0xf) == cap_async_endpoint_cap)) _assert_fail("((cap.words[0] >> 0) & 0xf) == cap_async_endpoint_cap",
                                 "./arch/object/structures_gen.h"
# 774 "./arch/object/structures_gen.h"
    ,
                                 775
# 774 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                                  ;
    /* fail if user has passed bits that we will override */
    if(!(((~0x1 >> 0) & v) == 0)) _assert_fail("((~0x1 >> 0) & v) == 0", "./arch/object/structures_gen.h", 777, __FUNCTION__);

    cap.words[1] &= ~0x1;
    cap.words[1] |= (v << 0) & 0x1;
    return cap;
}

static inline uint32_t __attribute__((__const__))
cap_async_endpoint_cap_get_capAEPPtr(cap_t cap) {
    if(!(((cap.words[0] >> 0) & 0xf) == cap_async_endpoint_cap)) _assert_fail("((cap.words[0] >> 0) & 0xf) == cap_async_endpoint_cap",
                                 "./arch/object/structures_gen.h"
# 786 "./arch/object/structures_gen.h"
    ,
                                 787
# 786 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                                  ;

    return (cap.words[0] & 0xfffffff0) << 0;
}

static inline cap_t __attribute__((__const__))
cap_reply_cap_new(uint32_t capInCDT, uint32_t capReplyMaster, uint32_t capTCBPtr) {
    cap_t cap;

    cap.words[0] = 0;
    cap.words[1] = 0;

    /* fail if user has passed bits that we will override */
    if(!((capInCDT & ~0x1) == 0)) _assert_fail("(capInCDT & ~0x1) == 0", "./arch/object/structures_gen.h", 800, __FUNCTION__);
    cap.words[1] |= (capInCDT & 0x1) << 1;
    /* fail if user has passed bits that we will override */
    if(!((capReplyMaster & ~0x1) == 0)) _assert_fail("(capReplyMaster & ~0x1) == 0", "./arch/object/structures_gen.h", 803, __FUNCTION__);
    cap.words[1] |= (capReplyMaster & 0x1) << 0;
    /* fail if user has passed bits that we will override */
    if(!((capTCBPtr & ~0xffffffe0) == 0)) _assert_fail("(capTCBPtr & ~0xffffffe0) == 0", "./arch/object/structures_gen.h", 806, __FUNCTION__);
    cap.words[0] |= (capTCBPtr & 0xffffffe0) >> 0;
    /* fail if user has passed bits that we will override */
    if(!(((uint32_t)cap_reply_cap & ~0xf) == 0)) _assert_fail("((uint32_t)cap_reply_cap & ~0xf) == 0", "./arch/object/structures_gen.h", 809, __FUNCTION__);
    cap.words[0] |= ((uint32_t)cap_reply_cap & 0xf) << 0;

    return cap;
}

static inline uint32_t __attribute__((__const__))
cap_reply_cap_get_capInCDT(cap_t cap) {
    if(!(((cap.words[0] >> 0) & 0xf) == cap_reply_cap)) _assert_fail("((cap.words[0] >> 0) & 0xf) == cap_reply_cap",
                        "./arch/object/structures_gen.h"
# 817 "./arch/object/structures_gen.h"
    ,
                        818
# 817 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                         ;

    return (cap.words[1] & 0x2) >> 1;
}

static inline void
cap_reply_cap_ptr_set_capInCDT(cap_t *cap_ptr,
                                      uint32_t v) {
    if(!(((cap_ptr->words[0] >> 0) & 0xf) == cap_reply_cap)) _assert_fail("((cap_ptr->words[0] >> 0) & 0xf) == cap_reply_cap",
                        "./arch/object/structures_gen.h"
# 826 "./arch/object/structures_gen.h"
    ,
                        827
# 826 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                         ;

    /* fail if user has passed bits that we will override */
    if(!(((~0x2 >> 1) & v) == 0)) _assert_fail("((~0x2 >> 1) & v) == 0", "./arch/object/structures_gen.h", 830, __FUNCTION__);

    cap_ptr->words[1] &= ~0x2;
    cap_ptr->words[1] |= (v << 1) & 0x2;
}

static inline uint32_t __attribute__((__const__))
cap_reply_cap_get_capReplyMaster(cap_t cap) {
    if(!(((cap.words[0] >> 0) & 0xf) == cap_reply_cap)) _assert_fail("((cap.words[0] >> 0) & 0xf) == cap_reply_cap",
                        "./arch/object/structures_gen.h"
# 838 "./arch/object/structures_gen.h"
    ,
                        839
# 838 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                         ;

    return (cap.words[1] & 0x1) >> 0;
}

static inline uint32_t __attribute__((__const__))
cap_reply_cap_get_capTCBPtr(cap_t cap) {
    if(!(((cap.words[0] >> 0) & 0xf) == cap_reply_cap)) _assert_fail("((cap.words[0] >> 0) & 0xf) == cap_reply_cap",
                        "./arch/object/structures_gen.h"
# 846 "./arch/object/structures_gen.h"
    ,
                        847
# 846 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                         ;

    return (cap.words[0] & 0xffffffe0) << 0;
}

static inline void
cap_reply_cap_ptr_set_capTCBPtr(cap_t *cap_ptr,
                                      uint32_t v) {
    if(!(((cap_ptr->words[0] >> 0) & 0xf) == cap_reply_cap)) _assert_fail("((cap_ptr->words[0] >> 0) & 0xf) == cap_reply_cap",
                        "./arch/object/structures_gen.h"
# 855 "./arch/object/structures_gen.h"
    ,
                        856
# 855 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                         ;

    /* fail if user has passed bits that we will override */
    if(!(((~0xffffffe0 << 0) & v) == 0)) _assert_fail("((~0xffffffe0 << 0) & v) == 0", "./arch/object/structures_gen.h", 859, __FUNCTION__);

    cap_ptr->words[0] &= ~0xffffffe0;
    cap_ptr->words[0] |= (v >> 0) & 0xffffffe0;
}

static inline cap_t __attribute__((__const__))
cap_cnode_cap_new(uint32_t capCNodeRadix, uint32_t capCNodeGuardSize, uint32_t capCNodeGuard, uint32_t capCNodePtr) {
    cap_t cap;

    cap.words[0] = 0;
    cap.words[1] = 0;

    /* fail if user has passed bits that we will override */
    if(!((capCNodeRadix & ~0x1f) == 0)) _assert_fail("(capCNodeRadix & ~0x1f) == 0", "./arch/object/structures_gen.h", 873, __FUNCTION__);
    cap.words[1] |= (capCNodeRadix & 0x1f) << 0;
    /* fail if user has passed bits that we will override */
    if(!((capCNodeGuardSize & ~0x1f) == 0)) _assert_fail("(capCNodeGuardSize & ~0x1f) == 0", "./arch/object/structures_gen.h", 876, __FUNCTION__);
    cap.words[1] |= (capCNodeGuardSize & 0x1f) << 27;
    /* fail if user has passed bits that we will override */
    if(!((capCNodeGuard & ~0x3ffff) == 0)) _assert_fail("(capCNodeGuard & ~0x3ffff) == 0", "./arch/object/structures_gen.h", 879, __FUNCTION__);
    cap.words[1] |= (capCNodeGuard & 0x3ffff) << 5;
    /* fail if user has passed bits that we will override */
    if(!((capCNodePtr & ~0xffffffe0) == 0)) _assert_fail("(capCNodePtr & ~0xffffffe0) == 0", "./arch/object/structures_gen.h", 882, __FUNCTION__);
    cap.words[0] |= (capCNodePtr & 0xffffffe0) >> 0;
    /* fail if user has passed bits that we will override */
    if(!(((uint32_t)cap_cnode_cap & ~0xf) == 0)) _assert_fail("((uint32_t)cap_cnode_cap & ~0xf) == 0", "./arch/object/structures_gen.h", 885, __FUNCTION__);
    cap.words[0] |= ((uint32_t)cap_cnode_cap & 0xf) << 0;

    return cap;
}

static inline uint32_t __attribute__((__const__))
cap_cnode_cap_get_capCNodeGuardSize(cap_t cap) {
    if(!(((cap.words[0] >> 0) & 0xf) == cap_cnode_cap)) _assert_fail("((cap.words[0] >> 0) & 0xf) == cap_cnode_cap",
                        "./arch/object/structures_gen.h"
# 893 "./arch/object/structures_gen.h"
    ,
                        894
# 893 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                         ;

    return (cap.words[1] & 0xf8000000) >> 27;
}

static inline cap_t __attribute__((__const__))
cap_cnode_cap_set_capCNodeGuardSize(cap_t cap, uint32_t v) {
    if(!(((cap.words[0] >> 0) & 0xf) == cap_cnode_cap)) _assert_fail("((cap.words[0] >> 0) & 0xf) == cap_cnode_cap",
                        "./arch/object/structures_gen.h"
# 901 "./arch/object/structures_gen.h"
    ,
                        902
# 901 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                         ;
    /* fail if user has passed bits that we will override */
    if(!(((~0xf8000000 >> 27) & v) == 0)) _assert_fail("((~0xf8000000 >> 27) & v) == 0", "./arch/object/structures_gen.h", 904, __FUNCTION__);

    cap.words[1] &= ~0xf8000000;
    cap.words[1] |= (v << 27) & 0xf8000000;
    return cap;
}

static inline cap_t __attribute__((__const__))
cap_cnode_cap_set_capCNodeGuard(cap_t cap, uint32_t v) {
    if(!(((cap.words[0] >> 0) & 0xf) == cap_cnode_cap)) _assert_fail("((cap.words[0] >> 0) & 0xf) == cap_cnode_cap",
                        "./arch/object/structures_gen.h"
# 913 "./arch/object/structures_gen.h"
    ,
                        914
# 913 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                         ;
    /* fail if user has passed bits that we will override */
    if(!(((~0x7fffe0 >> 5) & v) == 0)) _assert_fail("((~0x7fffe0 >> 5) & v) == 0", "./arch/object/structures_gen.h", 916, __FUNCTION__);

    cap.words[1] &= ~0x7fffe0;
    cap.words[1] |= (v << 5) & 0x7fffe0;
    return cap;
}

static inline uint32_t __attribute__((__const__))
cap_cnode_cap_get_capCNodeRadix(cap_t cap) {
    if(!(((cap.words[0] >> 0) & 0xf) == cap_cnode_cap)) _assert_fail("((cap.words[0] >> 0) & 0xf) == cap_cnode_cap",
                        "./arch/object/structures_gen.h"
# 925 "./arch/object/structures_gen.h"
    ,
                        926
# 925 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                         ;

    return (cap.words[1] & 0x1f) >> 0;
}

static inline uint32_t __attribute__((__const__))
cap_cnode_cap_get_capCNodePtr(cap_t cap) {
    if(!(((cap.words[0] >> 0) & 0xf) == cap_cnode_cap)) _assert_fail("((cap.words[0] >> 0) & 0xf) == cap_cnode_cap",
                        "./arch/object/structures_gen.h"
# 933 "./arch/object/structures_gen.h"
    ,
                        934
# 933 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                         ;

    return (cap.words[0] & 0xffffffe0) << 0;
}

static inline cap_t __attribute__((__const__))
cap_thread_cap_new(uint32_t capTCBPtr) {
    cap_t cap;

    cap.words[0] = 0;
    cap.words[1] = 0;

    /* fail if user has passed bits that we will override */
    if(!((capTCBPtr & ~0xfffffff0) == 0)) _assert_fail("(capTCBPtr & ~0xfffffff0) == 0", "./arch/object/structures_gen.h", 947, __FUNCTION__);
    cap.words[0] |= (capTCBPtr & 0xfffffff0) >> 0;
    /* fail if user has passed bits that we will override */
    if(!(((uint32_t)cap_thread_cap & ~0xf) == 0)) _assert_fail("((uint32_t)cap_thread_cap & ~0xf) == 0", "./arch/object/structures_gen.h", 950, __FUNCTION__);
    cap.words[0] |= ((uint32_t)cap_thread_cap & 0xf) << 0;

    return cap;
}

static inline uint32_t __attribute__((__const__))
cap_thread_cap_get_capTCBPtr(cap_t cap) {
    if(!(((cap.words[0] >> 0) & 0xf) == cap_thread_cap)) _assert_fail("((cap.words[0] >> 0) & 0xf) == cap_thread_cap",
                         "./arch/object/structures_gen.h"
# 958 "./arch/object/structures_gen.h"
    ,
                         959
# 958 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                          ;

    return (cap.words[0] & 0xfffffff0) << 0;
}

static inline uint32_t __attribute__((__const__))
cap_frame_cap_get_capFMappedObjectHigh(cap_t cap) {
    if(!(((cap.words[0] >> 0) & 0xf) == cap_frame_cap)) _assert_fail("((cap.words[0] >> 0) & 0xf) == cap_frame_cap",
                        "./arch/object/structures_gen.h"
# 966 "./arch/object/structures_gen.h"
    ,
                        967
# 966 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                         ;

    return (cap.words[1] & 0xfffff000) >> 12;
}

static inline cap_t __attribute__((__const__))
cap_frame_cap_set_capFMappedObjectHigh(cap_t cap, uint32_t v) {
    if(!(((cap.words[0] >> 0) & 0xf) == cap_frame_cap)) _assert_fail("((cap.words[0] >> 0) & 0xf) == cap_frame_cap",
                        "./arch/object/structures_gen.h"
# 974 "./arch/object/structures_gen.h"
    ,
                        975
# 974 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                         ;
    /* fail if user has passed bits that we will override */
    if(!(((~0xfffff000 >> 12) & v) == 0)) _assert_fail("((~0xfffff000 >> 12) & v) == 0", "./arch/object/structures_gen.h", 977, __FUNCTION__);

    cap.words[1] &= ~0xfffff000;
    cap.words[1] |= (v << 12) & 0xfffff000;
    return cap;
}

static inline void
cap_frame_cap_ptr_set_capFMappedObjectHigh(cap_t *cap_ptr,
                                      uint32_t v) {
    if(!(((cap_ptr->words[0] >> 0) & 0xf) == cap_frame_cap)) _assert_fail("((cap_ptr->words[0] >> 0) & 0xf) == cap_frame_cap",
                        "./arch/object/structures_gen.h"
# 987 "./arch/object/structures_gen.h"
    ,
                        988
# 987 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                         ;

    /* fail if user has passed bits that we will override */
    if(!(((~0xfffff000 >> 12) & v) == 0)) _assert_fail("((~0xfffff000 >> 12) & v) == 0", "./arch/object/structures_gen.h", 991, __FUNCTION__);

    cap_ptr->words[1] &= ~0xfffff000;
    cap_ptr->words[1] |= (v << 12) & 0xfffff000;
}

static inline uint32_t __attribute__((__const__))
cap_frame_cap_get_capFMappedIndex(cap_t cap) {
    if(!(((cap.words[0] >> 0) & 0xf) == cap_frame_cap)) _assert_fail("((cap.words[0] >> 0) & 0xf) == cap_frame_cap",
                        "./arch/object/structures_gen.h"
# 999 "./arch/object/structures_gen.h"
    ,
                        1000
# 999 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                         ;

    return (cap.words[1] & 0xfff) >> 0;
}

static inline uint32_t __attribute__((__const__))
cap_frame_cap_get_capFSize(cap_t cap) {
    if(!(((cap.words[0] >> 0) & 0xf) == cap_frame_cap)) _assert_fail("((cap.words[0] >> 0) & 0xf) == cap_frame_cap",
                        "./arch/object/structures_gen.h"
# 1007 "./arch/object/structures_gen.h"
    ,
                        1008
# 1007 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                         ;

    return (cap.words[0] & 0xe0000000) >> 29;
}

static inline uint32_t __attribute__((__const__))
cap_frame_cap_get_capFMappedObjectLow(cap_t cap) {
    if(!(((cap.words[0] >> 0) & 0xf) == cap_frame_cap)) _assert_fail("((cap.words[0] >> 0) & 0xf) == cap_frame_cap",
                        "./arch/object/structures_gen.h"
# 1015 "./arch/object/structures_gen.h"
    ,
                        1016
# 1015 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                         ;

    return (cap.words[0] & 0x3000000) >> 24;
}

static inline cap_t __attribute__((__const__))
cap_frame_cap_set_capFMappedObjectLow(cap_t cap, uint32_t v) {
    if(!(((cap.words[0] >> 0) & 0xf) == cap_frame_cap)) _assert_fail("((cap.words[0] >> 0) & 0xf) == cap_frame_cap",
                        "./arch/object/structures_gen.h"
# 1023 "./arch/object/structures_gen.h"
    ,
                        1024
# 1023 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                         ;
    /* fail if user has passed bits that we will override */
    if(!(((~0x3000000 >> 24) & v) == 0)) _assert_fail("((~0x3000000 >> 24) & v) == 0", "./arch/object/structures_gen.h", 1026, __FUNCTION__);

    cap.words[0] &= ~0x3000000;
    cap.words[0] |= (v << 24) & 0x3000000;
    return cap;
}

static inline void
cap_frame_cap_ptr_set_capFMappedObjectLow(cap_t *cap_ptr,
                                      uint32_t v) {
    if(!(((cap_ptr->words[0] >> 0) & 0xf) == cap_frame_cap)) _assert_fail("((cap_ptr->words[0] >> 0) & 0xf) == cap_frame_cap",
                        "./arch/object/structures_gen.h"
# 1036 "./arch/object/structures_gen.h"
    ,
                        1037
# 1036 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                         ;

    /* fail if user has passed bits that we will override */
    if(!(((~0x3000000 >> 24) & v) == 0)) _assert_fail("((~0x3000000 >> 24) & v) == 0", "./arch/object/structures_gen.h", 1040, __FUNCTION__);

    cap_ptr->words[0] &= ~0x3000000;
    cap_ptr->words[0] |= (v << 24) & 0x3000000;
}

static inline uint32_t __attribute__((__const__))
cap_frame_cap_get_capFBasePtr(cap_t cap) {
    if(!(((cap.words[0] >> 0) & 0xf) == cap_frame_cap)) _assert_fail("((cap.words[0] >> 0) & 0xf) == cap_frame_cap",
                        "./arch/object/structures_gen.h"
# 1048 "./arch/object/structures_gen.h"
    ,
                        1049
# 1048 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                         ;

    return (cap.words[0] & 0xfffff0) << 8;
}

static inline uint32_t __attribute__((__const__))
cap_page_table_cap_get_capPTMappedObject(cap_t cap) {
    if(!(((cap.words[0] >> 0) & 0xf) == cap_page_table_cap)) _assert_fail("((cap.words[0] >> 0) & 0xf) == cap_page_table_cap",
                             "./arch/object/structures_gen.h"
# 1056 "./arch/object/structures_gen.h"
    ,
                             1057
# 1056 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                              ;

    return (cap.words[1] & 0xfffff000) << 0;
}

static inline uint32_t __attribute__((__const__))
cap_page_table_cap_get_capPTMappedIndex(cap_t cap) {
    if(!(((cap.words[0] >> 0) & 0xf) == cap_page_table_cap)) _assert_fail("((cap.words[0] >> 0) & 0xf) == cap_page_table_cap",
                             "./arch/object/structures_gen.h"
# 1064 "./arch/object/structures_gen.h"
    ,
                             1065
# 1064 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                              ;

    return (cap.words[1] & 0xfff) >> 0;
}

static inline uint32_t __attribute__((__const__))
cap_page_table_cap_get_capPTBasePtr(cap_t cap) {
    if(!(((cap.words[0] >> 0) & 0xf) == cap_page_table_cap)) _assert_fail("((cap.words[0] >> 0) & 0xf) == cap_page_table_cap",
                             "./arch/object/structures_gen.h"
# 1072 "./arch/object/structures_gen.h"
    ,
                             1073
# 1072 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                              ;

    return (cap.words[0] & 0xfffffc00) << 0;
}

static inline uint32_t __attribute__((__const__))
cap_page_directory_cap_get_capPDBasePtr(cap_t cap) {
    if(!(((cap.words[0] >> 0) & 0xf) == cap_page_directory_cap)) _assert_fail("((cap.words[0] >> 0) & 0xf) == cap_page_directory_cap",
                                 "./arch/object/structures_gen.h"
# 1080 "./arch/object/structures_gen.h"
    ,
                                 1081
# 1080 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                                  ;

    return (cap.words[0] & 0xffffc000) << 0;
}

static inline cap_t __attribute__((__const__))
cap_irq_handler_cap_new(uint32_t capIRQ) {
    cap_t cap;

    cap.words[0] = 0;
    cap.words[1] = 0;

    /* fail if user has passed bits that we will override */
    if(!((capIRQ & ~0xff) == 0)) _assert_fail("(capIRQ & ~0xff) == 0", "./arch/object/structures_gen.h", 1094, __FUNCTION__);
    cap.words[1] |= (capIRQ & 0xff) << 0;
    /* fail if user has passed bits that we will override */
    if(!(((uint32_t)cap_irq_handler_cap & ~0xff) == 0)) _assert_fail("((uint32_t)cap_irq_handler_cap & ~0xff) == 0", "./arch/object/structures_gen.h", 1097, __FUNCTION__);
    cap.words[0] |= ((uint32_t)cap_irq_handler_cap & 0xff) << 0;

    return cap;
}

static inline uint32_t __attribute__((__const__))
cap_irq_handler_cap_get_capIRQ(cap_t cap) {
    if(!(((cap.words[0] >> 0) & 0xff) == cap_irq_handler_cap)) _assert_fail("((cap.words[0] >> 0) & 0xff) == cap_irq_handler_cap",
                              "./arch/object/structures_gen.h"
# 1105 "./arch/object/structures_gen.h"
    ,
                              1106
# 1105 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                               ;

    return (cap.words[1] & 0xff) >> 0;
}

static inline cap_t __attribute__((__const__))
cap_zombie_cap_new(uint32_t capZombieID, uint32_t capZombieType) {
    cap_t cap;

    cap.words[0] = 0;
    cap.words[1] = 0;

       cap.words[1] |= capZombieID << 0;
    /* fail if user has passed bits that we will override */
    if(!((capZombieType & ~0x3f) == 0)) _assert_fail("(capZombieType & ~0x3f) == 0", "./arch/object/structures_gen.h", 1120, __FUNCTION__);
    cap.words[0] |= (capZombieType & 0x3f) << 8;
    /* fail if user has passed bits that we will override */
    if(!(((uint32_t)cap_zombie_cap & ~0xff) == 0)) _assert_fail("((uint32_t)cap_zombie_cap & ~0xff) == 0", "./arch/object/structures_gen.h", 1123, __FUNCTION__);
    cap.words[0] |= ((uint32_t)cap_zombie_cap & 0xff) << 0;

    return cap;
}

static inline uint32_t __attribute__((__const__))
cap_zombie_cap_get_capZombieID(cap_t cap) {
    if(!(((cap.words[0] >> 0) & 0xff) == cap_zombie_cap)) _assert_fail("((cap.words[0] >> 0) & 0xff) == cap_zombie_cap",
                         "./arch/object/structures_gen.h"
# 1131 "./arch/object/structures_gen.h"
    ,
                         1132
# 1131 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                          ;

    return (cap.words[1] & 0xffffffff) >> 0;
}

static inline cap_t __attribute__((__const__))
cap_zombie_cap_set_capZombieID(cap_t cap, uint32_t v) {
    if(!(((cap.words[0] >> 0) & 0xff) == cap_zombie_cap)) _assert_fail("((cap.words[0] >> 0) & 0xff) == cap_zombie_cap",
                         "./arch/object/structures_gen.h"
# 1139 "./arch/object/structures_gen.h"
    ,
                         1140
# 1139 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                          ;
    /* fail if user has passed bits that we will override */
    if(!(((~0xffffffff >> 0) & v) == 0)) _assert_fail("((~0xffffffff >> 0) & v) == 0", "./arch/object/structures_gen.h", 1142, __FUNCTION__);

    cap.words[1] &= ~0xffffffff;
    cap.words[1] |= (v << 0) & 0xffffffff;
    return cap;
}

static inline uint32_t __attribute__((__const__))
cap_zombie_cap_get_capZombieType(cap_t cap) {
    if(!(((cap.words[0] >> 0) & 0xff) == cap_zombie_cap)) _assert_fail("((cap.words[0] >> 0) & 0xff) == cap_zombie_cap",
                         "./arch/object/structures_gen.h"
# 1151 "./arch/object/structures_gen.h"
    ,
                         1152
# 1151 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                          ;

    return (cap.words[0] & 0x3f00) >> 8;
}

static inline cap_t __attribute__((__const__))
cap_domain_cap_new(void) {
    cap_t cap;

    cap.words[0] = 0;
    cap.words[1] = 0;

    /* fail if user has passed bits that we will override */
    if(!(((uint32_t)cap_domain_cap & ~0xff) == 0)) _assert_fail("((uint32_t)cap_domain_cap & ~0xff) == 0", "./arch/object/structures_gen.h", 1165, __FUNCTION__);
    cap.words[0] |= ((uint32_t)cap_domain_cap & 0xff) << 0;

    return cap;
}

struct pte {
    uint32_t words[1];
};
typedef struct pte pte_t;

enum pte_tag {
    pte_pte_large = 0,
    pte_pte_small = 1
};
typedef enum pte_tag pte_tag_t;

static inline uint32_t __attribute__((__const__))
pte_get_pteSize(pte_t pte) {
    return (pte.words[0] >> 1) & 0x1;
}

static inline uint32_t __attribute__((__pure__))
pte_ptr_get_pteSize(pte_t *pte_ptr) {
    return (pte_ptr->words[0] >> 1) & 0x1;
}

static inline uint32_t __attribute__((__const__))
pte_pte_large_get_reserved(pte_t pte) {
    if(!(((pte.words[0] >> 1) & 0x1) == pte_pte_large)) _assert_fail("((pte.words[0] >> 1) & 0x1) == pte_pte_large",
                        "./arch/object/structures_gen.h"
# 1194 "./arch/object/structures_gen.h"
    ,
                        1195
# 1194 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                         ;

    return (pte.words[0] & 0x1) >> 0;
}

static inline uint32_t __attribute__((__pure__))
pte_pte_large_ptr_get_reserved(pte_t *pte_ptr) {
    if(!(((pte_ptr->words[0] >> 1) & 0x1) == pte_pte_large)) _assert_fail("((pte_ptr->words[0] >> 1) & 0x1) == pte_pte_large",
                        "./arch/object/structures_gen.h"
# 1202 "./arch/object/structures_gen.h"
    ,
                        1203
# 1202 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                         ;

    return (pte_ptr->words[0] & 0x1) >> 0;
}

struct lookup_fault {
    uint32_t words[2];
};
typedef struct lookup_fault lookup_fault_t;

enum lookup_fault_tag {
    lookup_fault_invalid_root = 0,
    lookup_fault_missing_capability = 1,
    lookup_fault_depth_mismatch = 2,
    lookup_fault_guard_mismatch = 3
};
typedef enum lookup_fault_tag lookup_fault_tag_t;

static inline lookup_fault_t __attribute__((__const__))
lookup_fault_invalid_root_new(void) {
    lookup_fault_t lookup_fault;

    lookup_fault.words[0] = 0;
    lookup_fault.words[1] = 0;

    /* fail if user has passed bits that we will override */
    if(!(((uint32_t)lookup_fault_invalid_root & ~0x3) == 0)) _assert_fail("((uint32_t)lookup_fault_invalid_root & ~0x3) == 0", "./arch/object/structures_gen.h", 1229, __FUNCTION__);
    lookup_fault.words[0] |= ((uint32_t)lookup_fault_invalid_root & 0x3) << 0;

    return lookup_fault;
}

static inline lookup_fault_t __attribute__((__const__))
lookup_fault_missing_capability_new(uint32_t bitsLeft) {
    lookup_fault_t lookup_fault;

    lookup_fault.words[0] = 0;
    lookup_fault.words[1] = 0;

    /* fail if user has passed bits that we will override */
    if(!((bitsLeft & ~0x3f) == 0)) _assert_fail("(bitsLeft & ~0x3f) == 0", "./arch/object/structures_gen.h", 1243, __FUNCTION__);
    lookup_fault.words[0] |= (bitsLeft & 0x3f) << 2;
    /* fail if user has passed bits that we will override */
    if(!(((uint32_t)lookup_fault_missing_capability & ~0x3) == 0)) _assert_fail("((uint32_t)lookup_fault_missing_capability & ~0x3) == 0", "./arch/object/structures_gen.h", 1246, __FUNCTION__);
    lookup_fault.words[0] |= ((uint32_t)lookup_fault_missing_capability & 0x3) << 0;

    return lookup_fault;
}

static inline lookup_fault_t __attribute__((__const__))
lookup_fault_depth_mismatch_new(uint32_t bitsFound, uint32_t bitsLeft) {
    lookup_fault_t lookup_fault;

    lookup_fault.words[0] = 0;
    lookup_fault.words[1] = 0;

    /* fail if user has passed bits that we will override */
    if(!((bitsFound & ~0x3f) == 0)) _assert_fail("(bitsFound & ~0x3f) == 0", "./arch/object/structures_gen.h", 1260, __FUNCTION__);
    lookup_fault.words[0] |= (bitsFound & 0x3f) << 8;
    /* fail if user has passed bits that we will override */
    if(!((bitsLeft & ~0x3f) == 0)) _assert_fail("(bitsLeft & ~0x3f) == 0", "./arch/object/structures_gen.h", 1263, __FUNCTION__);
    lookup_fault.words[0] |= (bitsLeft & 0x3f) << 2;
    /* fail if user has passed bits that we will override */
    if(!(((uint32_t)lookup_fault_depth_mismatch & ~0x3) == 0)) _assert_fail("((uint32_t)lookup_fault_depth_mismatch & ~0x3) == 0", "./arch/object/structures_gen.h", 1266, __FUNCTION__);
    lookup_fault.words[0] |= ((uint32_t)lookup_fault_depth_mismatch & 0x3) << 0;

    return lookup_fault;
}

static inline lookup_fault_t __attribute__((__const__))
lookup_fault_guard_mismatch_new(uint32_t guardFound, uint32_t bitsLeft, uint32_t bitsFound) {
    lookup_fault_t lookup_fault;

    lookup_fault.words[0] = 0;
    lookup_fault.words[1] = 0;

       lookup_fault.words[1] |= guardFound << 0;
    /* fail if user has passed bits that we will override */
    if(!((bitsLeft & ~0x3f) == 0)) _assert_fail("(bitsLeft & ~0x3f) == 0", "./arch/object/structures_gen.h", 1281, __FUNCTION__);
    lookup_fault.words[0] |= (bitsLeft & 0x3f) << 8;
    /* fail if user has passed bits that we will override */
    if(!((bitsFound & ~0x3f) == 0)) _assert_fail("(bitsFound & ~0x3f) == 0", "./arch/object/structures_gen.h", 1284, __FUNCTION__);
    lookup_fault.words[0] |= (bitsFound & 0x3f) << 2;
    /* fail if user has passed bits that we will override */
    if(!(((uint32_t)lookup_fault_guard_mismatch & ~0x3) == 0)) _assert_fail("((uint32_t)lookup_fault_guard_mismatch & ~0x3) == 0", "./arch/object/structures_gen.h", 1287, __FUNCTION__);
    lookup_fault.words[0] |= ((uint32_t)lookup_fault_guard_mismatch & 0x3) << 0;

    return lookup_fault;
}
# 19 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/object/structures.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/machine/hardware.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/config.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/machine/hardware.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/machine/hardware.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/linker.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/util.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/linker.h" 2

/* code that is only used during kernel bootstrapping */


/* read-only data only used during kernel bootstrapping */


/* read/write data only used during kernel bootstrapping */


/* data will be aligned to n bytes in a special BSS section */
# 17 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/machine/hardware.h" 2

/* Include cache, MMU related functions */



# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 23 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/machine/hardware.h" 2



enum vm_fault_type {
    RISCVDataAbort = 0,
    RISCVPrefetchAbort = 1
};
typedef uint32_t vm_fault_type_t;

enum vm_page_size {
    RISCVSmallPage,
    RISCVLargePage,
    RISCVSection,
    RISCVSuperSection
};
typedef uint32_t vm_page_size_t;

enum frameSizeConstants {
    RISCVSmallPageBits = 12,
    RISCVLargePageBits = 16,
    RISCVSectionBits = 20,
    RISCVSuperSectionBits = 24
};

static inline unsigned int __attribute__((__const__))
pageBitsForSize(vm_page_size_t pagesize)
{
    switch (pagesize) {
    case RISCVSmallPage:
        return RISCVSmallPageBits;

    case RISCVLargePage:
        return RISCVLargePageBits;

    case RISCVSection:
        return RISCVSectionBits;

    case RISCVSuperSection:
        return RISCVSuperSectionBits;

    default:
        _fail("Invalid page size", "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/machine/hardware.h", 64, __func__);
    }
}
# 20 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/object/structures.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/machine/registerset.h" 1



# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/machine/hardware.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 5 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/machine/registerset.h" 2

/* Offsets within the user context, these need to match the order in
 * register_t below */




# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/stdint.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 13 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/machine/registerset.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/util.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 14 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/machine/registerset.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/machine/registerset.h" 2

 /* FIXME: For now just dump all registers */
enum _register {
    X0 = 0, /* Hardwired to zero */

    X1 = 1,
    LR = 1,

    X2 = 2,
    X3 = 3,
    X4 = 4,
    X5 = 5,
    X6 = 6,
    X7 = 7,
    X8 = 8,
    X9 = 9,
    X10 = 10,
    X11 = 11,
    X12 = 12,
    X13 = 13,

    X14 = 14,
    SP = 14,

    X15 = 15,
    X16 = 16,
    X17 = 17,

    /* a0-a7 function arguments */
    X18 = 18,
    capRegister = 18,
    badgeRegister = 18,

    X19 = 19,
    msgInfoRegister = 19,

    X20 = 20,
    X21 = 21,
    X22 = 22,
    X23 = 23,
    X24 = 24,
    X25 = 25,

    X26 = 26,
    X27 = 27,
    X28 = 28,
    X29 = 29,
    X30 = 30,
    X31 = 31,

    /* TODO: Add supervison registers here */

   // LR_svc = 15,
   /* Status, Config registers */

   n_contextRegisters
};

typedef uint32_t register_t;

/* FIXME */
enum messageSizes {
    n_msgRegisters = 4,
    n_frameRegisters = 10,
    n_gpRegisters = 7,
    n_exceptionMessage = 3,
    n_syscallMessage = 12,
};

extern const register_t msgRegisters[] __attribute__((externally_visible));
extern const register_t frameRegisters[] __attribute__((externally_visible));
extern const register_t gpRegisters[] __attribute__((externally_visible));
extern const register_t exceptionMessage[] __attribute__((externally_visible));
extern const register_t syscallMessage[] __attribute__((externally_visible));

/* TODO: Optimize the number of context registers */
struct user_context {
    word_t registers[n_contextRegisters];
};
typedef struct user_context user_context_t;

static inline void Arch_initContext(user_context_t* context)
{
    /*TODO: Status registers, config registers config */
}

static inline word_t __attribute__((__const__))
sanitiseRegister(register_t reg, word_t v)
{
  /* TODO */
 return 0;
}
# 21 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/object/structures.h" 2




enum tcb_arch_cnode_index {
    tcbArchCNodeEntries = tcbCNodeEntries
};

typedef struct arch_tcb {
    /* saved user-level context of thread (72 bytes) */
    user_context_t tcbContext;
} arch_tcb_t;

enum vm_rights {
    VMNoAccess = 0,
    VMKernelOnly = 1,
    VMReadOnly = 2,
    VMReadWrite = 3
};
typedef uint32_t vm_rights_t;

static inline word_t __attribute__((__const__))
wordFromVMRights(vm_rights_t vm_rights)
{
    return (word_t)vm_rights;
}

static inline vm_rights_t __attribute__((__const__))
vmRightsFromWord(word_t w)
{
    return (vm_rights_t)w;
}
# 65 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/object/structures.h"
/* Page directory entries (PDEs) */
enum pde_type {
    PDEInvalid = 0,
    PDECoarse = 1,
    PDEMapping = 2
};
typedef uint32_t pde_type_t;
# 88 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/object/structures.h"
struct user_data {
    word_t words[(1ul<<(RISCVSmallPageBits)) / sizeof(word_t)];
};

typedef struct user_data user_data_t;






static inline uint32_t __attribute__((__const__))
cap_frame_cap_get_capFMappedObject(cap_t cap)
{
    return (cap_frame_cap_get_capFMappedObjectHigh(cap) << 12) + (cap_frame_cap_get_capFMappedObjectLow(cap) << 10);
}

static inline cap_t __attribute__((__const__))
cap_frame_cap_set_capFMappedObject(cap_t cap, uint32_t val)
{
    cap = cap_frame_cap_set_capFMappedObjectHigh(cap, ((val) >> 12));
    return cap_frame_cap_set_capFMappedObjectLow(cap, ( ((val) >> 10) & ((1ul<<(2))-1ul)));
}

static inline void
cap_frame_cap_ptr_set_capFMappedObject(cap_t *cap, uint32_t val)
{
    cap_frame_cap_ptr_set_capFMappedObjectHigh(cap, ((val) >> 12));
    cap_frame_cap_ptr_set_capFMappedObjectLow(cap, ( ((val) >> 10) & ((1ul<<(2))-1ul)));
}

static inline unsigned int __attribute__((__const__))
cap_get_archCapSizeBits(cap_t cap)
{
    cap_tag_t ctag;

    ctag = cap_get_capType(cap);

    switch (ctag) {
    case cap_frame_cap:
        return pageBitsForSize(cap_frame_cap_get_capFSize(cap));

    case cap_page_table_cap:
        return (8 +2);

    case cap_page_directory_cap:
        return (12 +2);

        return 0;

    default:
        if(!(!"Unknown cap type")) _assert_fail("!\"Unknown cap type\"", "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/object/structures.h", 139, __FUNCTION__);
        /* Unreachable, but GCC can't figure that out */
        return 0;
    }
}

static inline void * __attribute__((__const__))
cap_get_archCapPtr(cap_t cap)
{
    cap_tag_t ctag;

    ctag = cap_get_capType(cap);

    switch (ctag) {

    case cap_frame_cap:
        return (void *)(cap_frame_cap_get_capFBasePtr(cap));

    case cap_page_table_cap:
        return ((pte_t *)(cap_page_table_cap_get_capPTBasePtr(cap)));

    case cap_page_directory_cap:
        return ((pde_t *)(cap_page_directory_cap_get_capPDBasePtr(cap)));

        return ((void *)0);

    default:
        if(!(!"Unknown cap type")) _assert_fail("!\"Unknown cap type\"", "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/object/structures.h", 166, __FUNCTION__);
        /* Unreachable, but GCC can't figure that out */
        return ((void *)0);
    }
}

/* We need to supply different type getters for the bitfield generated PTE type
 * because there is an implicit third type that PTEs can be. If the type bit is
 * set but the reserved bit is not set, the type of the PTE is invalid, not a
 * large PTE.
 */
enum { pte_pte_invalid = 2 };

static inline uint32_t __attribute__((__const__))
pte_get_pteType(pte_t pte)
{
    if (pte_get_pteSize(pte) == pte_pte_small) {
        return pte_pte_small;
    } else if (pte_pte_large_get_reserved(pte) == 1) {
        return pte_pte_large;
    } else {
        return pte_pte_invalid;
    }
}

static inline uint32_t __attribute__((__pure__))
pte_ptr_get_pteType(pte_t *pte_ptr)
{
    if (pte_ptr_get_pteSize(pte_ptr) == pte_pte_small) {
        return pte_pte_small;
    } else if (pte_pte_large_ptr_get_reserved(pte_ptr) == 1) {
        return pte_pte_large;
    } else {
        return pte_pte_invalid;
    }
}
# 75 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/structures.h" 2
# 91 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/structures.h"
/* Generate a tcb_t from a tcb block reference */



/* Generate a cte_t pointer from a tcb_t pointer */






static inline uint32_t __attribute__((__const__))
cap_zombie_cap_get_capZombieBits(cap_t cap)
{
    uint32_t type = cap_zombie_cap_get_capZombieType(cap);
    if (type == (1ul<<(5))) {
        return 4;
    }
    return ((type) & ((1ul<<(5))-1ul)); /* cnode radix */
}


static inline cap_t __attribute__((__const__))
Zombie_new(uint32_t number, uint32_t type, uint32_t ptr)
{
    uint32_t mask;

    if (type == (1ul<<(5))) {
        mask = ((1ul<<(4 + 1))-1ul);
    } else {
        mask = ((1ul<<(type + 1))-1ul);
    }

    return cap_zombie_cap_new((ptr & ~mask) | (number & mask), type);
}

static inline uint32_t __attribute__((__const__))
cap_zombie_cap_get_capZombieNumber(cap_t cap)
{
    uint32_t radix = cap_zombie_cap_get_capZombieBits(cap);
    return cap_zombie_cap_get_capZombieID(cap) & ((1ul<<(radix + 1))-1ul);
}

static inline uint32_t __attribute__((__const__))
cap_zombie_cap_get_capZombiePtr(cap_t cap)
{
    uint32_t radix = cap_zombie_cap_get_capZombieBits(cap);
    return cap_zombie_cap_get_capZombieID(cap) & ~((1ul<<(radix + 1))-1ul);
}

static inline cap_t __attribute__((__const__))
cap_zombie_cap_set_capZombieNumber(cap_t cap, uint32_t n)
{
    uint32_t radix = cap_zombie_cap_get_capZombieBits(cap);
    uint32_t ptr = cap_zombie_cap_get_capZombieID(cap) & ~((1ul<<(radix + 1))-1ul);
    return cap_zombie_cap_set_capZombieID(cap, ptr | (n & ((1ul<<(radix + 1))-1ul)));
}


/* Capability table entry (CTE): size = 16 bytes */
struct cte {
    cap_t cap;
    mdb_node_t cteMDBNode;
};
typedef struct cte cte_t;



static inline word_t mdb_node_get_cdtLeft(mdb_node_t mdb)
{
    word_t cte = mdb_node_get_cdtLeft_(mdb) << 2;
    return cte == 0 ? 0 : cte | 0xE0000000;
}

static inline word_t mdb_node_get_cdtRight(mdb_node_t mdb)
{
    word_t cte = mdb_node_get_cdtRight_(mdb) << 2;
    return cte == 0 ? 0 : cte | 0xE0000000;
}

static inline void mdb_node_ptr_set_cdtLeft(mdb_node_t *mdb, word_t cte)
{
    if(!((cte & ((1ul<<(2))-1ul)) == 0)) _assert_fail("(cte & MASK(2)) == 0", "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/structures.h", 173, __FUNCTION__);
    mdb_node_ptr_set_cdtLeft_(mdb, (cte & 0x1FFFFFFF) >> 2);
}

static inline void mdb_node_ptr_set_cdtRight(mdb_node_t *mdb, word_t cte)
{
    if(!((cte & ((1ul<<(2))-1ul)) == 0)) _assert_fail("(cte & MASK(2)) == 0", "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/structures.h", 179, __FUNCTION__);
    mdb_node_ptr_set_cdtRight_(mdb, (cte & 0x1FFFFFFF) >> 2);
}

/* Thread state */
enum _thread_state {
    ThreadState_Inactive = 0,
    ThreadState_Running,
    ThreadState_Restart,
    ThreadState_BlockedOnReceive,
    ThreadState_BlockedOnSend,
    ThreadState_BlockedOnReply,
    ThreadState_BlockedOnAsyncEvent,
    ThreadState_RunningVM,
    ThreadState_IdleThreadState
};
typedef uint32_t _thread_state_t;


/* TCB: size 64 bytes + sizeof(arch_tcb_t) (aligned to nearest power of 2) */
struct tcb {
    /* arch specific tcb state (including context)*/
    arch_tcb_t tcbArch;

    /* Thread state, 12 bytes */
    thread_state_t tcbState;

    /* Bound AEP 4 bytes */
    async_endpoint_t *boundAsyncEndpoint;

    /* Current fault, 8 bytes */
    fault_t tcbFault;

    /* Current lookup failure, 8 bytes */
    lookup_fault_t tcbLookupFailure;

    /* Domain, 1 byte (packed to 4) */
    uint32_t tcbDomain;

    /* Priority, 1 byte (packed to 4) */
    uint32_t tcbPriority;

    /* Timeslice remaining, 4 bytes */
    word_t tcbTimeSlice;

    /* Capability pointer to thread fault handler, 4 bytes */
    cptr_t tcbFaultHandler;

    /* userland virtual address of thread IPC buffer, 4 bytes */
    word_t tcbIPCBuffer;

    /* Previous and next pointers for endpoint & scheduler queues, 16 bytes */
    struct tcb* tcbSchedNext;
    struct tcb* tcbSchedPrev;
    struct tcb* tcbEPNext;
    struct tcb* tcbEPPrev;
};
typedef struct tcb tcb_t;

/* Ensure TCB size is sane. */
typedef int __assert_failed_tcb_size_sane[((1 << (4 + 4)) + sizeof(tcb_t) <= (1 << ((4 + 4) + 1))) ? 1 : -1];



/* helper functions */

static inline vm_attributes_t __attribute__((__const__))
vmAttributesFromWord(word_t w)
{
    vm_attributes_t attr;

    attr.words[0] = w;
    return attr;
}

static inline word_t __attribute__((__const__))
isArchCap(cap_t cap)
{
    return (cap_get_capType(cap) % 2);
}

static inline unsigned int __attribute__((__const__))
cap_get_capSizeBits(cap_t cap)
{

    cap_tag_t ctag;

    ctag = cap_get_capType(cap);

    switch (ctag) {
    case cap_untyped_cap:
        return cap_untyped_cap_get_capBlockSize(cap);

    case cap_endpoint_cap:
        return 4;

    case cap_async_endpoint_cap:
        return 4;

    case cap_cnode_cap:
        return cap_cnode_cap_get_capCNodeRadix(cap) + 4;

    case cap_thread_cap:
        return ((4 + 4) + 1);

    case cap_zombie_cap: {
        uint32_t type = cap_zombie_cap_get_capZombieType(cap);
        if (type == (1ul<<(5))) {
            return ((4 + 4) + 1);
        }
        return ((type) & ((1ul<<(5))-1ul)) + 4;
    }

    case cap_null_cap:
        return 0;

    case cap_domain_cap:
        return 0;

    case cap_reply_cap:
        return 0;

    case cap_irq_control_cap:
        return 0;

    case cap_irq_handler_cap:
        return 0;

    default:
        return cap_get_archCapSizeBits(cap);
    }

}

static inline void * __attribute__((__const__))
cap_get_capPtr(cap_t cap)
{
    cap_tag_t ctag;

    ctag = cap_get_capType(cap);

    switch (ctag) {
    case cap_untyped_cap:
        return ((word_t *)(cap_untyped_cap_get_capPtr(cap)));

    case cap_endpoint_cap:
        return ((endpoint_t *)(cap_endpoint_cap_get_capEPPtr(cap)));

    case cap_async_endpoint_cap:
        return ((async_endpoint_t *)(cap_async_endpoint_cap_get_capAEPPtr(cap)));

    case cap_cnode_cap:
        return ((cte_t *)(cap_cnode_cap_get_capCNodePtr(cap)));

    case cap_thread_cap:
        return (((cte_t *)((unsigned int)(cap_thread_cap_get_capTCBPtr(cap))&~((1ul<<(((4 + 4) + 1)))-1ul)))+(0));

    case cap_zombie_cap:
        return ((cte_t *)(cap_zombie_cap_get_capZombiePtr(cap)));

    case cap_domain_cap:
        return ((void *)0);

    case cap_reply_cap:
        return ((void *)0);

    case cap_irq_control_cap:
        return ((void *)0);

    case cap_irq_handler_cap:
        return ((void *)0);
    default:
        return cap_get_archCapPtr(cap);

    }
}

static inline unsigned int __attribute__((__const__))
cap_get_capBadge(cap_t cap)
{
    switch (cap_get_capType(cap)) {
    case cap_endpoint_cap:
        return cap_endpoint_cap_get_capEPBadge(cap);
    case cap_async_endpoint_cap:
        return cap_async_endpoint_cap_get_capAEPBadge(cap);
    }
    return 0;
}

# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/object/capspace.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */






enum capSpaceType {
    capSpaceUntypedMemory,
    capSpaceTypedMemory,
    capSpaceReply,
    capSpaceIRQ,
    capSpaceDomain,
};

static inline int __attribute__((__const__))
cap_get_capSpaceType(cap_t cap)
{
    cap_tag_t ctag;

    ctag = cap_get_capType(cap);

    switch (ctag) {
    case cap_endpoint_cap:
    case cap_async_endpoint_cap:
    case cap_cnode_cap:
    case cap_thread_cap:
    case cap_frame_cap:
    case cap_page_table_cap:
    case cap_page_directory_cap:
    case cap_zombie_cap:
        return capSpaceTypedMemory;

    case cap_untyped_cap:
        return capSpaceUntypedMemory;

    case cap_reply_cap:
        return capSpaceReply;
    case cap_irq_control_cap:
        return capSpaceIRQ;
    case cap_irq_handler_cap:
        return capSpaceIRQ;

    case cap_domain_cap:
        return capSpaceDomain;

    default:
        if(!(!"Unknown cap type")) _assert_fail("!\"Unknown cap type\"", "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/object/capspace.h", 56, __FUNCTION__);
        /* Unreachable, but GCC can't figure that out */
        return 0;
    }
}

static inline void * __attribute__((__const__))
cap_get_capSpacePtr(cap_t cap)
{
    cap_tag_t ctag;

    ctag = cap_get_capType(cap);

    switch (ctag) {
    case cap_endpoint_cap:
    case cap_async_endpoint_cap:
    case cap_cnode_cap:
    case cap_thread_cap:
    case cap_frame_cap:
    case cap_page_table_cap:
    case cap_page_directory_cap:
    case cap_zombie_cap:
    case cap_untyped_cap:
        return cap_get_capPtr(cap);

    case cap_reply_cap:
        return (void*)cap_reply_cap_get_capTCBPtr(cap);
    case cap_irq_control_cap:
        return (void*)0;
    case cap_irq_handler_cap:
        return (void*)cap_irq_handler_cap_get_capIRQ(cap);

    case cap_domain_cap:
        return (void*)0;

    default:
        if(!(!"Unknown cap type")) _assert_fail("!\"Unknown cap type\"", "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/object/capspace.h", 92, __FUNCTION__);
        /* Unreachable, but GCC can't figure that out */
        return 0;
    }
}

static inline unsigned int __attribute__((__const__))
cap_get_capSpaceSize(cap_t cap)
{
    cap_tag_t ctag;

    ctag = cap_get_capType(cap);

    switch (ctag) {
    case cap_endpoint_cap:
    case cap_async_endpoint_cap:
    case cap_cnode_cap:
    case cap_thread_cap:
    case cap_frame_cap:
    case cap_page_table_cap:
    case cap_page_directory_cap:
    case cap_zombie_cap:
    case cap_untyped_cap:
        return (1ul<<(cap_get_capSizeBits(cap)));

    case cap_reply_cap:
        return 1;
    case cap_irq_control_cap:
        return 0xff;
    case cap_irq_handler_cap:
        return 1;

    case cap_domain_cap:
        return 1;

    default:
        if(!(!"Unknown cap type")) _assert_fail("!\"Unknown cap type\"", "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/object/capspace.h", 128, __FUNCTION__);
        /* Unreachable, but GCC can't figure that out */
        return 0;
    }
}

static inline unsigned int __attribute__((__const__))
cap_get_capExtraComp(cap_t cap)
{
    switch (cap_get_capType(cap)) {
    case cap_frame_cap:
        if (!cap_frame_cap_get_capFMappedObject(cap)) {
            return 0;
        }
        switch (cap_frame_cap_get_capFSize(cap)) {
        case RISCVSmallPage:
        case RISCVLargePage:
            return ((unsigned int)(((pte_t *)(cap_frame_cap_get_capFMappedObject(cap))) + cap_frame_cap_get_capFMappedIndex(cap)));
        case RISCVSection:
        case RISCVSuperSection:
            return ((unsigned int)(((pde_t *)(cap_frame_cap_get_capFMappedObject(cap))) + cap_frame_cap_get_capFMappedIndex(cap)));
        default:
            _fail("Unknown frame size", "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/object/capspace.h", 150, __func__);
        }
    case cap_page_table_cap:
        if (!cap_page_table_cap_get_capPTMappedObject(cap)) {
            return 0;
        }
        return ((unsigned int)(((pde_t *)(cap_page_table_cap_get_capPTMappedObject(cap))) + cap_page_table_cap_get_capPTMappedIndex(cap)));
    default:
        return 0;
    }
}

static inline unsigned int __attribute__((__const__))
cte_depth_bits_type(cap_tag_t ctag)
{
    switch (ctag) {
    case cap_frame_cap:
    case cap_page_table_cap:
        return 1;
    default:
        return 5;
    }
}

static inline unsigned int __attribute__((__const__))
cte_depth_bits_cap(cap_t cap)
{
    return cte_depth_bits_type(cap_get_capType(cap));
}
# 369 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/structures.h" 2
# 17 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/types.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 18 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/types.h" 2

enum _bool {
    false = 0,
    true = 1
};
typedef uint32_t bool_t;

typedef struct region {
    pptr_t start;
    pptr_t end;
} region_t;

typedef struct p_region {
    paddr_t start;
    paddr_t end;
} p_region_t;

typedef struct v_region {
    vptr_t start;
    vptr_t end;
} v_region_t;




struct pde_range {
    pde_t *pd;
    unsigned int start;
    unsigned int length;
};
typedef struct pde_range pde_range_t;

struct pte_range {
    pte_t *pt;
    unsigned int start;
    unsigned int length;
};
typedef struct pte_range pte_range_t;

typedef cte_t *cte_ptr_t;

struct extra_caps {
    cte_ptr_t excaprefs[((1ul<<(seL4_MsgExtraCapBits))-1)];
};
typedef struct extra_caps extra_caps_t;
# 12 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/api/syscall.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/benchmark.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/benchmark.h" 1



# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/config.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 5 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/benchmark.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/object/structures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 6 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/benchmark.h" 2
# 15 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/benchmark.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/machine/io.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/util.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/machine/io.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/machine/io.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/plat/qemu_riscv/plat/machine/io.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/plat/qemu_riscv/plat/machine/io.h" 2


void qemu_uart_putchar(char c);
void putDebugChar(unsigned char c);
unsigned char getDebugChar(void);
# 17 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/machine/io.h" 2


unsigned int puts(const char *s) __attribute__((externally_visible));
unsigned int printf(const char *format, ...) __attribute__((externally_visible));
unsigned int print_unsigned_long(unsigned long x, unsigned int ui_base) __attribute__((externally_visible));
# 16 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/benchmark.h" 2
# 13 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/api/syscall.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/api/syscall.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/machine.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/machine.h" 1



# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 5 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/machine.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/object/structures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 6 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/machine.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/machine/hardware.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 7 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/machine.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/machine/page.h" 1



/* RISC-V Page definitions */

/* TODO: Add 64-bit definitions */
# 8 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/machine.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/machine/cpu_registers.h" 1



/* RISC-V CPU Registers definitions */
# 9 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/machine.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/model/statedata.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/config.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/model/statedata.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/model/statedata.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/util.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 17 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/model/statedata.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/structures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 18 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/model/statedata.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 19 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/model/statedata.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/plat/qemu_riscv/plat/machine/devices.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/stdint.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/plat/qemu_riscv/plat/machine/devices.h" 2

/* kernel devices */
# 27 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/plat/qemu_riscv/plat/machine/devices.h"
struct imx31_l2cc_id {
    uint32_t id; /* 000 */
    uint32_t type; /* 004 */
};



struct imx31_l2cc_ctrl {
    uint32_t control; /* 100 */
    uint32_t aux_control; /* 104 */
};



struct imx31_l2cc_flush {
    uint32_t pad_0[12];
    uint32_t sync; /* 730 */
    uint32_t pad_1[15];
    uint32_t inv_by_pa; /* 770 */
    uint32_t pad_2[2];
    uint32_t inv_by_way; /* 77c */
    uint32_t pad_3[12];
    uint32_t clean_by_pa; /* 7b0 */
    uint32_t pad_4[1];
    uint32_t clean_by_ix; /* 7b8 */
    uint32_t clean_by_way; /* 7bc */
    uint32_t pad_5[12];
    uint32_t clinv_by_pa; /* 7f0 */
    uint32_t pad_6[1];
    uint32_t clinv_by_ix; /* 7f8 */
    uint32_t clinv_by_way; /* 7fc */
};



struct imx31_l2cc_lockdown {
    uint32_t lock_way_D; /* 900 */
    uint32_t lock_way_I; /* 904 */
};
# 20 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/model/statedata.h" 2
# 10 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/machine.h" 2



word_t __attribute__((__pure__)) getRestartPC(tcb_t *thread);
void setNextPC(tcb_t *thread, word_t v);

/* Cleaning memory before user-level access */
static inline void clearMemory(void* ptr, unsigned int bits)
{
    memzero(ptr, (1ul<<(bits)));
    /* no cleaning of caches necessary on IA-32 */
}
# 15 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/machine.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/plat/qemu_riscv/plat/machine.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 18 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/plat/qemu_riscv/plat/machine.h"
enum IRQConstants {
    INTERRUPT_PMU = 23,
    INTERRUPT_EPIT1 = 28,
    maxIRQ = 63
} platform_interrupt_t;

enum irqNumbers {
    irqInvalid = 255
};

typedef uint32_t interrupt_t;
typedef uint32_t irq_t;
# 16 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/machine.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/machine/registerset.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/machine/registerset.h" 2

# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/object/structures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 17 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/machine/registerset.h" 2

static inline void
setRegister(tcb_t *thread, register_t reg, word_t w)
{
    thread->tcbArch.tcbContext.registers[reg] = w;
}

static inline word_t __attribute__((__pure__))
getRegister(tcb_t *thread, register_t reg)
{
    return thread->tcbArch.tcbContext.registers[reg];
}
# 17 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/machine.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/machine/hardware.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/machine/hardware.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/machine/hardware.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/machine/hardware.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/plat/qemu_riscv/plat/machine/hardware.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 25 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/plat/qemu_riscv/plat/machine/hardware.h"
/*#include <types.h>
#include <arch/object/structures.h>
#include <plat/machine.h>
#include <plat/machine/hardware_gen.h>
#include <plat/machine/devices.h>
*/
static inline void* __attribute__((__const__))
ptrFromPAddr(paddr_t paddr)
{
    return (void*)(paddr + (0xf0000000 - 0x80000000));
}

static inline paddr_t __attribute__((__const__))
addrFromPPtr(void* pptr)
{
    return (paddr_t)pptr - (0xf0000000 - 0x80000000);
}



int get_num_avail_p_regs(void);
p_region_t get_avail_p_reg(unsigned int i);
int get_num_dev_p_regs(void);
p_region_t get_dev_p_reg(unsigned int i);
void map_kernel_devices(void);

bool_t __attribute__((__const__)) isReservedIRQ(irq_t irq);
void handleReservedIRQ(irq_t irq);
void ackInterrupt(irq_t irq);
bool_t isIRQPending(void);
/** MODIFIES: [*] */
void maskInterrupt(bool_t enable, irq_t irq);
/** MODIFIES: */
irq_t getActiveIRQ(void);
/** MODIFIES: [*] */
static inline void setInterruptMode(irq_t irq, bool_t levelTrigger, bool_t polarityLow) { }
/** MODIFIES: [*] */
void resetTimer(void);
/** MODIFIES: [*] */
void initTimer(void);
/* L2 cache control */
/** MODIFIES: [*] */
void initL2Cache(void);

void initIRQController(void);

void handleSpuriousIRQ(void);

/** MODIFIES: [*] */
void plat_cleanL2Range(paddr_t start, paddr_t end);
/** MODIFIES: [*] */
void plat_invalidateL2Range(paddr_t start, paddr_t end);
/** MODIFIES: [*] */
void plat_cleanInvalidateL2Range(paddr_t start, paddr_t end);
# 17 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/machine/hardware.h" 2
# 18 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/machine.h" 2

/* platform independent functions */

static inline void *__attribute__((__const__))
paddr_to_pptr(paddr_t paddr)
{
    return (void *)(paddr + (0xf0000000 - 0x80000000));
}

static inline paddr_t __attribute__((__const__))
pptr_to_paddr(void *pptr)
{
    return (paddr_t)pptr - (0xf0000000 - 0x80000000);
}

static inline region_t __attribute__((__const__))
paddr_to_pptr_reg(p_region_t p_reg)
{
    return (region_t) {
        p_reg.start + (0xf0000000 - 0x80000000), p_reg.end + (0xf0000000 - 0x80000000)
    };
}

static inline p_region_t __attribute__((__const__))
pptr_to_paddr_reg(region_t reg)
{
    return (p_region_t) {
        reg.start - (0xf0000000 - 0x80000000), reg.end - (0xf0000000 - 0x80000000)
    };
}

static inline bool_t __attribute__((__const__))
inKernelWindow(void *pptr)
{
    paddr_t paddr = pptr_to_paddr(pptr);
    return ((paddr >= 0x80000000 /* for compatibility with proofs */) && (paddr < (0xfff00000 - (0xf0000000 - 0x80000000))));
}
# 15 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/api/syscall.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/api/failures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/api/failures.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/api/errors.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




typedef enum {
    seL4_NoError = 0,
    seL4_InvalidArgument,
    seL4_InvalidCapability,
    seL4_IllegalOperation,
    seL4_RangeError,
    seL4_AlignmentError,
    seL4_FailedLookup,
    seL4_TruncatedMessage,
    seL4_DeleteFirst,
    seL4_RevokeFirst,
    seL4_NotEnoughMemory,
} seL4_Error;
# 16 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/api/failures.h" 2
/* These datatypes differ markedly from haskell, due to the
 * different implementation of the various fault monads */


enum exception {
    EXCEPTION_NONE,
    EXCEPTION_FAULT,
    EXCEPTION_LOOKUP_FAULT,
    EXCEPTION_SYSCALL_ERROR,
    EXCEPTION_PREEMPTED
};
typedef uint32_t exception_t;

typedef uint32_t syscall_error_type_t;

struct syscall_error {
    unsigned int invalidArgumentNumber;
    unsigned int invalidCapNumber;
    word_t rangeErrorMin;
    word_t rangeErrorMax;
    word_t memoryLeft;
    bool_t failedLookupWasSource;

    syscall_error_type_t type;
};
typedef struct syscall_error syscall_error_t;

extern lookup_fault_t current_lookup_fault;
extern fault_t current_fault;
extern syscall_error_t current_syscall_error;
# 16 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/api/syscall.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/model/statedata.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/model/statedata.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/structures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/model/statedata.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/tcb.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/tcb.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/api/failures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/tcb.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/structures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 17 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/tcb.h" 2

# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/object/tcb.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/object/tcb.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/structures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/object/tcb.h" 2

unsigned int setMRs_fault(tcb_t *sender, tcb_t* receiver,
                          word_t *receiveIPCBuffer);
unsigned int setMRs_syscall_error(tcb_t *thread, word_t *receiveIPCBuffer);
word_t __attribute__((__const__)) Arch_decodeTransfer(word_t flags);
exception_t __attribute__((__const__)) Arch_performTransfer(word_t arch, tcb_t *tcb_src,
                                       tcb_t *tcb_dest);
void Arch_leaveVMAsyncTransfer(tcb_t *tcb);
# 19 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/tcb.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/cnode.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/cnode.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/api/failures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/cnode.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/structures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 17 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/cnode.h" 2

struct slot_range {
    cte_t *cnode;
    unsigned int offset;
    unsigned int length;
};
typedef struct slot_range slot_range_t;

exception_t decodeCNodeInvocation(word_t label, unsigned int length,
                                  cap_t cap, extra_caps_t extraCaps,
                                  word_t *buffer);
exception_t invokeCNodeRevoke(cte_t *destSlot);
exception_t invokeCNodeDelete(cte_t *destSlot);
exception_t invokeCNodeRecycle(cte_t *destSlot);
exception_t invokeCNodeInsert(cap_t cap, cte_t *srcSlot, cte_t *destSlot);
exception_t invokeCNodeMove(cap_t cap, cte_t *srcSlot, cte_t *destSlot);
exception_t invokeCNodeRotate(cap_t cap1, cap_t cap2, cte_t *slot1,
                              cte_t *slot2, cte_t *slot3);
exception_t invokeCNodeSaveCaller(cte_t *destSlot);
void cteInsert(cap_t newCap, cte_t *srcSlot, cte_t *destSlot);
void cteMove(cap_t newCap, cte_t *srcSlot, cte_t *destSlot);
void capSwapForDelete(cte_t *slot1, cte_t *slot2);
void cteSwap(cap_t cap1, cte_t *slot1, cap_t cap2, cte_t *slot2);
exception_t cteRevoke(cte_t *slot);
exception_t cteDelete(cte_t *slot, bool_t exposed);
void cteDeleteOne(cte_t* slot);
exception_t cteRecycle(cte_t *slot);
void insertNewCap(cte_t *parent, cte_t *slot, cap_t cap);
void setupReplyMaster(tcb_t *thread);
bool_t __attribute__((__pure__)) isMDBParentOf(cte_t *cte_a, cte_t *cte_b);
exception_t ensureNoChildren(cte_t *slot);
exception_t ensureEmptySlot(cte_t *slot);
bool_t __attribute__((__pure__)) slotCapLongRunningDelete(cte_t *slot);
cte_t *getReceiveSlots(tcb_t *thread, word_t *buffer);
cap_transfer_t __attribute__((__pure__)) loadCapTransfer(word_t *buffer);
# 20 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/tcb.h" 2

struct tcb_queue {
    tcb_t *head;
    tcb_t *end;
};
typedef struct tcb_queue tcb_queue_t;

void tcbSchedEnqueue(tcb_t *tcb);
void tcbSchedAppend(tcb_t *tcb);
void tcbSchedDequeue(tcb_t *tcb);

tcb_queue_t tcbEPAppend(tcb_t *tcb, tcb_queue_t queue);
tcb_queue_t tcbEPDequeue(tcb_t *tcb, tcb_queue_t queue);

void setupCallerCap(tcb_t *sender, tcb_t *receiver);
void deleteCallerCap(tcb_t *receiver);

unsigned int copyMRs(tcb_t *sender, word_t *sendBuf, tcb_t *receiver,
                     word_t *recvBuf, unsigned int n);
exception_t decodeTCBInvocation(word_t label, unsigned int length, cap_t cap,
                                cte_t* slot, extra_caps_t extraCaps, bool_t call,
                                word_t *buffer);
exception_t decodeCopyRegisters(cap_t cap, unsigned int length,
                                extra_caps_t extraCaps, word_t *buffer);
exception_t decodeReadRegisters(cap_t cap, unsigned int length, bool_t call,
                                word_t *buffer);
exception_t decodeWriteRegisters(cap_t cap, unsigned int length, word_t *buffer);
exception_t decodeTCBConfigure(cap_t cap, unsigned int length,
                               cte_t* slot, extra_caps_t rootCaps, word_t *buffer);
exception_t decodeSetPriority(cap_t cap, unsigned int length, word_t *buffer);
exception_t decodeSetIPCBuffer(cap_t cap, unsigned int length,
                               cte_t* slot, extra_caps_t extraCaps, word_t *buffer);
exception_t decodeSetSpace(cap_t cap, unsigned int length,
                           cte_t* slot, extra_caps_t extraCaps, word_t *buffer);
exception_t decodeBindAEP(cap_t cap, extra_caps_t extraCaps);
exception_t decodeUnbindAEP(cap_t cap);
exception_t decodeSetEPTRoot(cap_t cap, extra_caps_t extraCaps);
exception_t decodeDomainInvocation(word_t label, unsigned int length,
                                   extra_caps_t extraCaps, word_t *buffer);

enum thread_control_flag {
    thread_control_update_priority = 0x1,
    thread_control_update_ipc_buffer = 0x2,
    thread_control_update_space = 0x4,
    thread_control_update_all = 0x7,
};

typedef uint32_t thread_control_flag_t;

exception_t invokeTCB_Suspend(tcb_t *thread);
exception_t invokeTCB_Resume(tcb_t *thread);
exception_t invokeTCB_ThreadControl(tcb_t *target, cte_t* slot, cptr_t faultep,
                                    prio_t priority, cap_t cRoot_newCap,
                                    cte_t *cRoot_srcSlot, cap_t vRoot_newCap,
                                    cte_t *vRoot_srcSlot, word_t bufferAddr,
                                    cap_t bufferCap, cte_t *bufferSrcSlot,
                                    thread_control_flag_t updateFlags);
exception_t invokeTCB_CopyRegisters(tcb_t *dest, tcb_t *src,
                                    bool_t suspendSource, bool_t resumeTarget,
                                    bool_t transferFrame, bool_t transferInteger,
                                    word_t transferArch);
exception_t invokeTCB_ReadRegisters(tcb_t *src, bool_t suspendSource,
                                    unsigned int n, word_t arch, bool_t call);
exception_t invokeTCB_WriteRegisters(tcb_t *dest, bool_t resumeTarget,
                                     unsigned int n, word_t arch, word_t *buffer);
exception_t invokeTCB_AEPControl(tcb_t *tcb, async_endpoint_t *aepptr);

cptr_t __attribute__((__pure__)) getExtraCPtr(word_t *bufferPtr, unsigned int i);
void setExtraBadge(word_t *bufferPtr, word_t badge, unsigned int i);

exception_t lookupExtraCaps(tcb_t* thread, word_t *bufferPtr, message_info_t info);
# 17 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/model/statedata.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/model/statedata.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 18 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/model/statedata.h" 2

extern tcb_queue_t ksReadyQueues[] __attribute__((externally_visible));
extern word_t ksReadyQueuesL1Bitmap[1] __attribute__((externally_visible));
extern word_t ksReadyQueuesL2Bitmap[1][(256 / 32) + 1] __attribute__((externally_visible));
extern tcb_t *ksCurThread __attribute__((externally_visible));
extern tcb_t *ksIdleThread __attribute__((externally_visible));
extern tcb_t *ksSchedulerAction __attribute__((externally_visible));
extern word_t ksWorkUnitsCompleted;
extern cte_t *ksRootCTE __attribute__((externally_visible));
extern irq_state_t intStateIRQTable[] __attribute__((externally_visible));
extern cte_t *intStateIRQNode __attribute__((externally_visible));
extern const dschedule_t ksDomSchedule[];
extern const unsigned int ksDomScheduleLength;
extern uint32_t ksDomScheduleIdx;
extern dom_t ksCurDomain;
extern word_t ksDomainTime;
# 17 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/api/syscall.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/kernel/vspace.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/kernel/vspace.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/kernel/vspace.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/api/failures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/kernel/vspace.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/structures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 17 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/kernel/vspace.h" 2

void map_it_pt_cap(cap_t pt_cap);
void map_it_frame_cap(cap_t frame_cap);
void map_kernel_window(void);
void map_kernel_frame(paddr_t paddr, pptr_t vaddr, vm_rights_t vm_rights,
vm_attributes_t vm_attributes);
void activate_global_pd(void);

/* ==================== BOOT CODE FINISHES HERE ==================== */

/* PD slot reserved for storing the PD's allocated hardware ASID */


void idle_thread(void);


enum pde_pte_tag {
    ME_PDE,
    ME_PTE
};
typedef uint32_t pde_pte_tag_t;

struct createMappingEntries_ret {
    exception_t status;
    pde_pte_tag_t tag;
    void *pde_pte_ptr;
    unsigned int offset;
    unsigned int size;
};
typedef struct createMappingEntries_ret createMappingEntries_ret_t;

struct lookupPTSlot_ret {
    exception_t status;
    pte_t *pt;
    unsigned int ptIndex;
};
typedef struct lookupPTSlot_ret lookupPTSlot_ret_t;

void copyGlobalMappings(pde_t *newPD);
word_t* __attribute__((__pure__)) lookupIPCBuffer(bool_t isReceiver, tcb_t *thread);
lookupPTSlot_ret_t lookupPTSlot(pde_t *pd, vptr_t vptr);
pde_t* __attribute__((__const__)) lookupPDSlot(pde_t *pd, vptr_t vptr);
exception_t handleVMFault(tcb_t *thread, vm_fault_type_t vm_faultType);
void unmapPageTable(pde_t *pd, uint32_t pdIndex, pte_t* pt);
void unmapPagePTE(vm_page_size_t page_size, pte_t *pt, unsigned int ptIndex, void *pptr);
void unmapPagePDE(vm_page_size_t page_size, pde_t *pd, unsigned int pdIndex, void *pptr);
void unmapAllPages(pde_t *pd, uint32_t pdIndex, pte_t *pt);
void unmapAllPageTables(pde_t *pd);
void setVMRoot(tcb_t *tcb);
bool_t __attribute__((__const__)) isValidVTableRoot(cap_t cap);
exception_t checkValidIPCBuffer(vptr_t vptr, cap_t cap);
vm_rights_t __attribute__((__const__)) maskVMRights(vm_rights_t vm_rights,
                               cap_rights_t cap_rights_mask);
//hw_asid_t findFreeHWASID(void) VISIBLE;
void setCurrentASID(pde_t *pd);
void flushPage(vm_page_size_t page_size, pde_t* pd, word_t vptr);
void flushTable(pde_t* pd, word_t vptr, pte_t* pt);
exception_t decodeMMUInvocation(word_t label, unsigned int length, cptr_t cptr,
                                   cte_t *cte, cap_t cap, extra_caps_t extraCaps,
                                   word_t *buffer);
exception_t performPageTableInvocationMap(cap_t cap, cte_t *ctSlot,
                                          pde_t pde, pde_t *pdSlot);
exception_t performPageTableInvocationUnmap(cap_t cap, cte_t *ctSlot);
exception_t performPageInvocationMapPTE(cap_t cap, cte_t *ctSlot,
                                        pte_t pte, pte_range_t pte_entries);
exception_t performPageInvocationMapPDE(cap_t cap, cte_t *ctSlot,
                                        pde_t pde, pde_range_t pde_entries);
exception_t performPageInvocationUnmap(cap_t cap, cte_t *ctSlot);
# 15 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/kernel/vspace.h" 2
# 18 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/api/syscall.h" 2
# 1 "./arch/api/syscall.h" 1
/* @LICENSE(OKL_CORE) */

/* This header was generated by kernel/tools/syscall_header_gen.py.
 *
 * To add a system call number, edit kernel/include/api/syscall.xml
 *
 */
# 31 "./arch/api/syscall.h"
enum syscall {
    SysCall = -1,
    SysReplyWait = -2,
    SysSend = -3,
    SysNBSend = -4,
    SysWait = -5,
    SysReply = -6,
    SysYield = -7,
    SysPoll = -8,




    SysDebugPutChar = -10,
    SysDebugHalt = -11,
    SysDebugCapIdentify = -12,
    SysDebugSnapshot = -13,
# 57 "./arch/api/syscall.h"
};
typedef uint32_t syscall_t;
# 19 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/api/syscall.h" 2

exception_t handleSyscall(syscall_t syscall) __attribute__((externally_visible));
exception_t handleInterruptEntry(void) __attribute__((externally_visible));
exception_t handleUnknownSyscall(word_t w) __attribute__((externally_visible));
exception_t handleUserLevelFault(word_t w_a, word_t w_b) __attribute__((externally_visible));
exception_t handleVMFaultEvent(vm_fault_type_t vm_faultType) __attribute__((externally_visible));

static inline word_t __attribute__((__pure__))
getSyscallArg(unsigned int i, word_t* ipc_buffer)
{
    if (i < n_msgRegisters) {
        return getRegister(ksCurThread, msgRegisters[i]);
    }

    if(!(ipc_buffer != ((void *)0))) _assert_fail("ipc_buffer != NULL", "/home/hesham/MSc-York/seL4/seL4test/kernel/include/api/syscall.h", 33, __FUNCTION__);
    return ipc_buffer[i + 1];
}

extern extra_caps_t current_extra_caps;
# 14 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/api/syscall.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/api/failures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/api/syscall.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/api/faults.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/api/failures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/api/faults.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/structures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/objecttype.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/objecttype.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/api/failures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/objecttype.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/cnode.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 17 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/objecttype.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/structures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 18 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/objecttype.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/plat/qemu_riscv/plat/machine/hardware.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 19 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/objecttype.h" 2

struct deriveCap_ret {
    exception_t status;
    cap_t cap;
};
typedef struct deriveCap_ret deriveCap_ret_t;

struct finaliseCap_ret {
    cap_t remainder;
    irq_t irq;
};
typedef struct finaliseCap_ret finaliseCap_ret_t;

# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/object/objecttype.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/object/objecttype.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/api/failures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/object/objecttype.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/api/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 17 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/object/objecttype.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/objecttype.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 18 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/object/objecttype.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/structures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 19 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/object/objecttype.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/cnode.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 20 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/object/objecttype.h" 2

deriveCap_ret_t Arch_deriveCap(cte_t *slot, cap_t cap);
cap_t __attribute__((__const__)) Arch_updateCapData(bool_t preserve, word_t data, cap_t cap);
cap_t __attribute__((__const__)) Arch_maskCapRights(cap_rights_t cap_rights_mask, cap_t cap);
cap_t Arch_finaliseCap(cap_t cap, bool_t final);
cap_t Arch_recycleCap(bool_t is_final, cap_t cap);
bool_t __attribute__((__const__)) Arch_hasRecycleRights(cap_t cap);
bool_t __attribute__((__const__)) Arch_sameRegionAs(cap_t cap_a, cap_t cap_b);
bool_t __attribute__((__const__)) Arch_sameObjectAs(cap_t cap_a, cap_t cap_b);
cap_t Arch_createObject(object_t t, void *regionBase, int userSize, bool_t deviceMemory);
exception_t Arch_decodeInvocation(word_t label, unsigned int length,
                                  cptr_t cptr, cte_t *slot, cap_t cap,
                                  extra_caps_t extraCaps, word_t *buffer);
void Arch_prepareThreadDelete(tcb_t *thread);
word_t Arch_getObjectSize(word_t t);
bool_t Arch_isFrameType(word_t t);
# 33 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/objecttype.h" 2

deriveCap_ret_t deriveCap(cte_t *slot, cap_t cap);
finaliseCap_ret_t finaliseCap(cap_t cap, bool_t final, bool_t exposed);
cap_t recycleCap(bool_t is_final, cap_t cap);
bool_t __attribute__((__const__)) hasRecycleRights(cap_t cap);
bool_t __attribute__((__const__)) sameRegionAs(cap_t cap_a, cap_t cap_b);
bool_t __attribute__((__const__)) sameObjectAs(cap_t cap_a, cap_t cap_b);
cap_t __attribute__((__const__)) updateCapData(bool_t preserve, word_t newData, cap_t cap);
cap_t __attribute__((__const__)) maskCapRights(cap_rights_t cap_rights, cap_t cap);
cap_t createObject(object_t t, void *regionBase, int userSize, bool_t deviceMemory);
void createNewObjects(object_t t, cte_t *parent, slot_range_t slots,
                      void *regionBase, unsigned int userSize, bool_t deviceMemory);
exception_t decodeInvocation(word_t label, unsigned int length,
                             cptr_t capIndex, cte_t *slot, cap_t cap,
                             extra_caps_t extraCaps, bool_t block, bool_t call,
                             word_t *buffer);
exception_t performInvocation_Endpoint(endpoint_t *ep, word_t badge,
                                       bool_t canGrant, bool_t block,
                                       bool_t call);
exception_t performInvocation_AsyncEndpoint(async_endpoint_t *aep,
                                            word_t badge);
exception_t performInvocation_Reply(tcb_t *thread, cte_t *slot);
word_t getObjectSize(word_t t, word_t userObjSize);
# 16 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/asyncendpoint.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/asyncendpoint.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/structures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/asyncendpoint.h" 2

void sendAsyncIPC(async_endpoint_t *aepptr, word_t badge);
void receiveAsyncIPC(tcb_t *thread, cap_t cap, bool_t isBlocking);
void aepCancelAll(async_endpoint_t *aepptr);
void asyncIPCCancel(tcb_t *threadPtr, async_endpoint_t *aepptr);
void completeAsyncIPC(async_endpoint_t *aepptr, tcb_t *tcb);
void unbindAsyncEndpoint(tcb_t *tcb);
void bindAsyncEndpoint(tcb_t *tcb, async_endpoint_t *aepptr);
# 17 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/cnode.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 18 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/endpoint.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/endpoint.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/structures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/endpoint.h" 2

void sendIPC(bool_t blocking, bool_t do_call, word_t badge,
             bool_t canGrant, tcb_t *thread, endpoint_t *epptr);
void receiveIPC(tcb_t *thread, cap_t cap);
void ipcCancel(tcb_t *tptr);
void epCancelAll(endpoint_t *epptr);
void epCancelBadgedSends(endpoint_t *epptr, word_t badge);
void replyFromKernel_error(tcb_t *thread);
void replyFromKernel_success_empty(tcb_t *thread);
# 19 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/interrupt.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/interrupt.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/api/failures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/interrupt.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/structures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 17 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/interrupt.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/object/interrupt.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/object/interrupt.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/api/failures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/object/interrupt.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/structures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 17 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/object/interrupt.h" 2

exception_t Arch_decodeInterruptControl(unsigned int length, extra_caps_t extraCaps);
# 18 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/interrupt.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/plat/qemu_riscv/plat/machine.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 19 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/interrupt.h" 2

exception_t decodeIRQControlInvocation(word_t label, unsigned int length,
                                       cte_t *srcSlot, extra_caps_t extraCaps,
                                       word_t *buffer);
exception_t invokeIRQControl(irq_t irq, cte_t *handlerSlot, cte_t *controlSlot);
exception_t decodeIRQHandlerInvocation(word_t label, unsigned int length, irq_t irq,
                                       extra_caps_t extraCaps, word_t *buffer);
void invokeIRQHandler_AckIRQ(irq_t irq);
void invokeIRQHandler_SetIRQHandler(irq_t irq, cap_t cap, cte_t *slot);
void invokeIRQHandler_ClearIRQHandler(irq_t irq);
void invokeIRQHandler_SetMode(irq_t irq, bool_t levelTrigger, bool_t polarityLow);
void deletingIRQHandler(irq_t irq);
void deletedIRQHandler(irq_t irq);
void handleInterrupt(irq_t irq);
bool_t isIRQActive(irq_t irq);
void setIRQState(irq_state_t irqState, irq_t irq);
# 20 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/objecttype.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 21 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/structures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 22 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/tcb.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 23 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/untyped.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/untyped.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/api/failures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/untyped.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/api/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 17 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/untyped.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/structures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 18 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/untyped.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/cnode.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 19 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/untyped.h" 2



exception_t decodeUntypedInvocation(word_t label, unsigned int length,
                                    cte_t *slot, cap_t cap,
                                    extra_caps_t extraCaps, bool_t call,
                                    word_t *buffer);
exception_t invokeUntyped_Retype(cte_t *srcSlot, void* base_ign,
                                 void* freeRegionBase, object_t newType,
                                 unsigned int objSize, slot_range_t destSlots,
                                 bool_t call, bool_t deviceMemory);
# 24 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object.h" 2
# 16 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/api/faults.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 17 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/api/faults.h" 2

bool_t handleFaultReply(tcb_t *receiver, tcb_t *sender);
# 16 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/api/syscall.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/kernel/cspace.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/kernel/cspace.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/api/failures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/kernel/cspace.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/api/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 17 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/kernel/cspace.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/structures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 18 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/kernel/cspace.h" 2

struct lookupCap_ret {
    exception_t status;
    cap_t cap;
};
typedef struct lookupCap_ret lookupCap_ret_t;

struct lookupCapAndSlot_ret {
    exception_t status;
    cap_t cap;
    cte_t *slot;
};
typedef struct lookupCapAndSlot_ret lookupCapAndSlot_ret_t;

struct lookupSlot_raw_ret {
    exception_t status;
    cte_t *slot;
};
typedef struct lookupSlot_raw_ret lookupSlot_raw_ret_t;

struct lookupSlot_ret {
    exception_t status;
    cte_t *slot;
};
typedef struct lookupSlot_ret lookupSlot_ret_t;

struct resolveAddressBits_ret {
    exception_t status;
    cte_t *slot;
    unsigned int bitsRemaining;
};
typedef struct resolveAddressBits_ret resolveAddressBits_ret_t;

lookupCap_ret_t lookupCap(tcb_t *thread, cptr_t cPtr);
lookupCapAndSlot_ret_t lookupCapAndSlot(tcb_t *thread, cptr_t cPtr);
lookupSlot_raw_ret_t lookupSlot(tcb_t *thread, cptr_t capptr);
lookupSlot_ret_t lookupSlotForCNodeOp(bool_t isSource,
                                      cap_t root, cptr_t capptr,
                                      unsigned int depth);
lookupSlot_ret_t lookupSourceSlot(cap_t root, cptr_t capptr,
                                  unsigned int depth);
lookupSlot_ret_t lookupTargetSlot(cap_t root, cptr_t capptr,
                                  unsigned int depth);
lookupSlot_ret_t lookupPivotSlot(cap_t root, cptr_t capptr,
                                 unsigned int depth);
resolveAddressBits_ret_t resolveAddressBits(cap_t nodeCap,
                                            cptr_t capptr,
                                            unsigned int n_bits);
# 17 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/api/syscall.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/kernel/faulthandler.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/kernel/faulthandler.h" 2

void handleFault(tcb_t *tptr);
exception_t sendFaultIPC(tcb_t *tptr);
void handleDoubleFault(tcb_t *tptr, fault_t ex1);
# 18 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/api/syscall.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/kernel/thread.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/kernel/thread.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/util.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/kernel/thread.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/structures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 17 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/kernel/thread.h" 2

static inline __attribute__((__pure__)) uint32_t
ready_queues_index(uint32_t dom, uint32_t prio)
{
    if (1 > 1) {
        return dom * 256 + prio;
    } else {
        if(!(dom == 0)) _assert_fail("dom == 0", "/home/hesham/MSc-York/seL4/seL4test/kernel/include/kernel/thread.h", 24, __FUNCTION__);
        return prio;
    }
}

/* the l1 index is the top 32 bits of prio (2^5 == 32) */
static inline __attribute__((__pure__)) uint32_t
prio_to_l1index(uint32_t prio)
{
    return (prio >> 5);
}

static inline __attribute__((__pure__)) uint32_t
l1index_to_prio(uint32_t l1index)
{
    return (l1index << 5);
}

void configureIdleThread(tcb_t *tcb);
void activateThread(void) __attribute__((externally_visible));
void suspend(tcb_t *target);
void restart(tcb_t *target);
void doIPCTransfer(tcb_t *sender, endpoint_t *endpoint,
                   word_t badge, bool_t grant, tcb_t *receiver,
                   bool_t diminish);
void doReplyTransfer(tcb_t *sender, tcb_t *receiver, cte_t *slot);
void doNormalTransfer(tcb_t *sender, word_t *sendBuffer, endpoint_t *endpoint,
                      word_t badge, bool_t canGrant, tcb_t *receiver,
                      word_t *receiveBuffer, bool_t diminish);
void doFaultTransfer(word_t badge, tcb_t *sender, tcb_t *receiver,
                     word_t *receiverIPCBuffer);
void doPollFailedTransfer(tcb_t *thread);
void schedule(void);
void chooseThread(void);
void switchToThread(tcb_t *thread) __attribute__((externally_visible));
void switchToIdleThread(void);
void setDomain(tcb_t *tptr, dom_t dom);
void setPriority(tcb_t *tptr, prio_t prio);
void scheduleTCB(tcb_t *tptr);
void attemptSwitchTo(tcb_t *tptr);
void switchIfRequiredTo(tcb_t *tptr);
void setThreadState(tcb_t *tptr, _thread_state_t ts) __attribute__((externally_visible));
void timerTick(void);
void rescheduleRequired(void);
# 19 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/api/syscall.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/kernel/vspace.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 20 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/api/syscall.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/machine/io.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 21 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/api/syscall.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/interrupt.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 22 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/api/syscall.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/model/statedata.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 23 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/api/syscall.c" 2


# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/machine/capdl.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




void capDL(void);
# 26 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/api/syscall.c" 2


/* The haskell function 'handleEvent' is split into 'handleXXX' variants
 * for each event causing a kernel entry */

exception_t
handleInterruptEntry(void)
{
    irq_t irq;

    irq = getActiveIRQ();
    if (irq != irqInvalid) {
        handleInterrupt(irq);
    } else {
        printf("Spurious interrupt\n");
        handleSpuriousIRQ();
    }

    schedule();
    activateThread();

    return EXCEPTION_NONE;
}

exception_t
handleUnknownSyscall(word_t w)
{

    if (w == SysDebugPutChar) {
        qemu_uart_putchar(getRegister(ksCurThread, capRegister));
        return EXCEPTION_NONE;
    }
    if (w == SysDebugHalt) {
        printf("Debug halt syscall from user thread 0x%x\n", (unsigned int)ksCurThread);
        halt();
    }
    if (w == SysDebugSnapshot) {
        printf("Debug snapshot syscall from user thread 0x%x\n", (unsigned int)ksCurThread);
        capDL();
        return EXCEPTION_NONE;
    }
    if (w == SysDebugCapIdentify) {
        word_t cptr = getRegister(ksCurThread, capRegister);
        lookupCapAndSlot_ret_t lu_ret = lookupCapAndSlot(ksCurThread, cptr);
        uint32_t cap_type = cap_get_capType(lu_ret.cap);
        setRegister(ksCurThread, capRegister, cap_type);
        return EXCEPTION_NONE;
    }
# 132 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/api/syscall.c"
    current_fault = fault_unknown_syscall_new(w);
    handleFault(ksCurThread);

    schedule();
    activateThread();

    return EXCEPTION_NONE;
}

exception_t
handleUserLevelFault(word_t w_a, word_t w_b)
{
    current_fault = fault_user_exception_new(w_a, w_b);
    handleFault(ksCurThread);

    schedule();
    activateThread();

    return EXCEPTION_NONE;
}

exception_t
handleVMFaultEvent(vm_fault_type_t vm_faultType)
{
    exception_t status;

    status = handleVMFault(ksCurThread, vm_faultType);
    if (status != EXCEPTION_NONE) {
        handleFault(ksCurThread);
    }

    schedule();
    activateThread();

    return EXCEPTION_NONE;
}


static exception_t
handleInvocation(bool_t isCall, bool_t isBlocking)
{
    message_info_t info;
    cptr_t cptr;
    lookupCapAndSlot_ret_t lu_ret;
    word_t *buffer;
    exception_t status;
    word_t length;
    tcb_t *thread;

    thread = ksCurThread;

    info = messageInfoFromWord(getRegister(thread, msgInfoRegister));
    cptr = getRegister(thread, capRegister);

    /* faulting section */
    lu_ret = lookupCapAndSlot(thread, cptr);

    if (__builtin_expect(!!(lu_ret.status != EXCEPTION_NONE), 0)) {
        do { printf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x @%x]: ", __func__, 190, (int)ksCurThread, (int)getRestartPC(ksCurThread)); printf("Invocation of invalid cap #%d.", (int)cptr); printf(">>" "\033[0m" "\n"); } while (0);
        current_fault = fault_cap_fault_new(cptr, false);

        if (isBlocking) {
            handleFault(thread);
        }

        return EXCEPTION_NONE;
    }

    buffer = lookupIPCBuffer(false, thread);

    status = lookupExtraCaps(thread, buffer, info);

    if (__builtin_expect(!!(status != EXCEPTION_NONE), 0)) {
        do { printf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x @%x]: ", __func__, 205, (int)ksCurThread, (int)getRestartPC(ksCurThread)); printf("Lookup of extra caps failed."); printf(">>" "\033[0m" "\n"); } while (0);
        if (isBlocking) {
            handleFault(thread);
        }
        return EXCEPTION_NONE;
    }

    /* Syscall error/Preemptible section */
    length = message_info_get_msgLength(info);
    if (__builtin_expect(!!(length > n_msgRegisters && !buffer), 0)) {
        length = n_msgRegisters;
    }
    status = decodeInvocation(message_info_get_msgLabel(info), length,
                              cptr, lu_ret.slot, lu_ret.cap,
                              current_extra_caps, isBlocking, isCall,
                              buffer);

    if (__builtin_expect(!!(status == EXCEPTION_PREEMPTED), 0)) {
        return status;
    }

    if (__builtin_expect(!!(status == EXCEPTION_SYSCALL_ERROR), 0)) {
        if (isCall) {
            replyFromKernel_error(thread);
        }
        return EXCEPTION_NONE;
    }

    if (__builtin_expect(!!(thread_state_get_tsType(thread->tcbState) == ThreadState_Restart), 0)
                                                                                 ) {
        if (isCall) {
            replyFromKernel_success_empty(thread);
        }
        setThreadState(thread, ThreadState_Running);
    }

    return EXCEPTION_NONE;
}

static void
handleReply(void)
{
    cte_t *callerSlot;
    cap_t callerCap;

    callerSlot = (((cte_t *)((unsigned int)(ksCurThread)&~((1ul<<(((4 + 4) + 1)))-1ul)))+(tcbCaller));
    callerCap = callerSlot->cap;
    switch (cap_get_capType(callerCap)) {
    case cap_reply_cap: {
        tcb_t *caller;

        if (cap_reply_cap_get_capReplyMaster(callerCap)) {
            break;
        }
        caller = ((tcb_t *)(cap_reply_cap_get_capTCBPtr(callerCap)));
        /* Haskell error:
         * "handleReply: caller must not be the current thread" */
        if(!(caller != ksCurThread)) _assert_fail("caller != ksCurThread", "/home/hesham/MSc-York/seL4/seL4test/kernel/src/api/syscall.c", 262, __FUNCTION__);
        doReplyTransfer(ksCurThread, caller, callerSlot);
        //deleteCallerCap(ksCurThread);
        return;
    }

    case cap_null_cap:
        do { printf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x @%x]: ", __func__, 269, (int)ksCurThread, (int)getRestartPC(ksCurThread)); printf("Attempted reply operation when no reply cap present."); printf(">>" "\033[0m" "\n"); } while (0);
        return;

    default:
        break;
    }

    _fail("handleReply: invalid caller cap", "/home/hesham/MSc-York/seL4/seL4test/kernel/src/api/syscall.c", 276, __func__);
}

static void
handleWait(bool_t isBlocking)
{
    word_t epCPtr;
    lookupCap_ret_t lu_ret;

    deleteCallerCap(ksCurThread);

    epCPtr = getRegister(ksCurThread, capRegister);

    lu_ret = lookupCap(ksCurThread, epCPtr);
    if (__builtin_expect(!!(lu_ret.status != EXCEPTION_NONE), 0)) {
        /* current_lookup_fault has been set by lookupCap */
        current_fault = fault_cap_fault_new(epCPtr, true);
        handleFault(ksCurThread);
        return;
    }

    switch (cap_get_capType(lu_ret.cap)) {
    case cap_endpoint_cap:
        if (__builtin_expect(!!(!cap_endpoint_cap_get_capCanReceive(lu_ret.cap) || !isBlocking), 0)) {
            current_lookup_fault = lookup_fault_missing_capability_new(0);
            current_fault = fault_cap_fault_new(epCPtr, true);
            handleFault(ksCurThread);
            break;
        }

        receiveIPC(ksCurThread, lu_ret.cap);
        break;

    case cap_async_endpoint_cap: {
        async_endpoint_t *aepptr;
        tcb_t *boundTCB;
        aepptr = ((async_endpoint_t *)(cap_async_endpoint_cap_get_capAEPPtr(lu_ret.cap)));
        boundTCB = (tcb_t*)async_endpoint_ptr_get_aepBoundTCB(aepptr);
        if (__builtin_expect(!!(!cap_async_endpoint_cap_get_capAEPCanReceive(lu_ret.cap) || (boundTCB && boundTCB != ksCurThread)), 0)
                                                              ) {
            current_lookup_fault = lookup_fault_missing_capability_new(0);
            current_fault = fault_cap_fault_new(epCPtr, true);
            handleFault(ksCurThread);
            break;
        }

        receiveAsyncIPC(ksCurThread, lu_ret.cap, isBlocking);
        break;
    }
    default:
        current_lookup_fault = lookup_fault_missing_capability_new(0);
        current_fault = fault_cap_fault_new(epCPtr, true);
        handleFault(ksCurThread);
        break;
    }
}

static void
handleYield(void)
{
    tcbSchedDequeue(ksCurThread);
    tcbSchedAppend(ksCurThread);
    rescheduleRequired();
}

exception_t
handleSyscall(syscall_t syscall)
{
    exception_t ret;
    irq_t irq;

    switch (syscall) {
    case SysSend:
        ret = handleInvocation(false, true);
        if (__builtin_expect(!!(ret != EXCEPTION_NONE), 0)) {
            irq = getActiveIRQ();
            if (irq != irqInvalid) {
                handleInterrupt(irq);
            }
        }
        break;

    case SysNBSend:
        ret = handleInvocation(false, false);
        if (__builtin_expect(!!(ret != EXCEPTION_NONE), 0)) {
            irq = getActiveIRQ();
            if (irq != irqInvalid) {
                handleInterrupt(irq);
            }
        }
        break;

    case SysCall:
        ret = handleInvocation(true, true);
        if (__builtin_expect(!!(ret != EXCEPTION_NONE), 0)) {
            irq = getActiveIRQ();
            if (irq != irqInvalid) {
                handleInterrupt(irq);
            }
        }
        break;

    case SysWait:
        handleWait(true);
        break;

    case SysReply:
        handleReply();
        break;

    case SysReplyWait:
        handleReply();
        handleWait(true);
        break;

    case SysPoll:
        handleWait(false);
        break;

    case SysYield:
        handleYield();
        break;

    default:
        _fail("Invalid syscall", "/home/hesham/MSc-York/seL4/seL4test/kernel/src/api/syscall.c", 400, __func__);
    }

    schedule();
    activateThread();

    return EXCEPTION_NONE;
}
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/api/faults.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 12 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/api/faults.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 13 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/api/faults.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/kernel/vspace.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 14 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/api/faults.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/api/faults.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/api/faults.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/api/syscall.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/api/faults.c" 2

bool_t
handleFaultReply(tcb_t *receiver, tcb_t *sender)
{
  return false;
}
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/kernel/boot.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/assert.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 12 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/kernel/boot.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/kernel/boot.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/bootinfo.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/config.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/bootinfo.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/bootinfo.h" 2




/* bootinfo data structures (directly corresponding to abstract specification) */



/* fixed cap positions in root CNode */
# 39 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/bootinfo.h"
/* type definitions */

typedef uint32_t slot_pos_t;

typedef struct slot_region {
    slot_pos_t start;
    slot_pos_t end;
} slot_region_t;



typedef struct bi_dev_reg {
    paddr_t base_paddr; /* base physical address of device region */
    uint32_t frame_size_bits; /* size (2^n bytes) of a device-region frame */
    slot_region_t frame_caps; /* device-region frame caps */
} bi_dev_reg_t;

typedef struct bi {
    node_id_t node_id;
    uint32_t num_nodes;
    uint32_t num_iopt_levels; /* number of IOMMU PT levels (0 if no IOMMU support) */
    vptr_t ipcbuf_vptr; /* vptr to initial thread's IPC buffer */
    slot_region_t null_caps; /* null caps (empty slots) */
    slot_region_t sh_frame_caps; /* shared-frame caps */
    slot_region_t ui_frame_caps; /* userland-image frame caps */
    slot_region_t ui_pd_caps; /* userland-image PD caps */
    slot_region_t ui_pt_caps; /* userland-image PT caps */
    slot_region_t ut_obj_caps; /* untyped-object caps (UT caps) */
    slot_region_t ut_device_obj_caps; /* untyped-objects caps for device frames */
    paddr_t ut_obj_paddr_list [800]; /* physical address of each UT cap */
    uint8_t ut_obj_size_bits_list[800]; /* size (2^n) bytes of each UT cap */
    uint8_t it_cnode_size_bits; /* initial thread's root CNode size (2^n slots) */
    dom_t it_domain; /* initial thread's domain ID */
} bi_t;

/* adjust constants in config.h if this assert fails */
typedef int __assert_failed_bi_size[(sizeof(bi_t) <= (1ul<<(12))) ? 1 : -1];
# 15 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/kernel/boot.h" 2



/*
 * Resolve naming differences between the abstract specifications
 * of the bootstrapping phase and the runtime phase of the kernel.
 */
typedef cte_t slot_t;
typedef cte_t* slot_ptr_t;



/* (node-local) state accessed only during bootstrapping */

typedef struct ndks_boot {
    region_t freemem[2];
    bi_t* bi_frame;
    slot_pos_t slot_pos_cur;
    slot_pos_t slot_pos_max;
} ndks_boot_t;

extern ndks_boot_t ndks_boot;

/* function prototypes */

static inline bool_t
is_reg_empty(region_t reg)
{
    return reg.start == reg.end;
}

pptr_t alloc_region(uint32_t size_bits);
bool_t insert_region(region_t reg);
void write_slot(slot_ptr_t slot_ptr, cap_t cap);
cap_t create_root_cnode(void);
bool_t provide_cap(cap_t root_cnode_cap, cap_t cap);
void write_it_pd_pts(cap_t root_cnode_cap, cap_t it_pd_cap);
bool_t create_idle_thread(void);
bool_t create_untypeds_for_region(cap_t root_cnode_cap, bool_t deviceMemory, region_t reg, slot_pos_t first_untyped_slot);
bool_t create_untypeds(cap_t root_cnode_cap, region_t boot_mem_reuse_reg);
void bi_finalise(void);
bool_t create_irq_cnode(void);
void create_domain_cap(cap_t root_cnode_cap);

cap_t create_ipcbuf_frame(cap_t root_cnode_cap, cap_t pd_cap, vptr_t vptr);

pptr_t allocate_bi_frame(node_id_t node_id, uint32_t num_nodes, vptr_t ipcbuf_vptr);

void create_bi_frame_cap(cap_t root_cnode_cap, cap_t pd_cap, pptr_t pptr, vptr_t vptr);

typedef struct create_frames_of_region_ret {
    slot_region_t region;
    bool_t success;
} create_frames_of_region_ret_t;

create_frames_of_region_ret_t
create_frames_of_region(
    cap_t root_cnode_cap,
    cap_t pd_cap,
    region_t reg,
    bool_t do_map,
    int32_t pv_offset
);

cap_t
create_it_pd_pts(
    cap_t root_cnode_cap,
    v_region_t ui_v_reg,
    vptr_t ipcbuf_vptr,
    vptr_t bi_frame_vptr
);

bool_t
create_initial_thread(
    cap_t root_cnode_cap,
    cap_t it_pd_cap,
    vptr_t ui_v_entry,
    vptr_t bi_frame_vptr,
    vptr_t ipcbuf_vptr,
    cap_t ipcbuf_cap
);
# 13 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/kernel/boot.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/machine/io.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 14 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/kernel/boot.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/model/statedata.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/kernel/boot.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/interrupt.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/kernel/boot.c" 2

# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/kernel/boot.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/kernel/boot.h" 2

cap_t create_unmapped_it_frame_cap(pptr_t pptr, bool_t use_large);
cap_t create_mapped_it_frame_cap(cap_t pd_cap, pptr_t pptr, vptr_t vptr, bool_t use_large, bool_t executable);

void init_kernel(
    paddr_t ui_p_reg_start,
    paddr_t ui_p_reg_end,
    int32_t pv_offset,
    vptr_t v_entry
);
# 18 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/kernel/boot.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/kernel/vspace.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 19 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/kernel/boot.c" 2

//#include <arch/user_access.h>
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/linker.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 22 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/kernel/boot.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/plat/qemu_riscv/plat/machine/hardware.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 23 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/kernel/boot.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/machine.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 24 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/kernel/boot.c" 2
# 1 "/opt/riscv/lib/gcc/riscv32-unknown-elf/5.1.0/include-fixed/limits.h" 1 3 4

# 1 "/opt/riscv/lib/gcc/riscv32-unknown-elf/5.1.0/include-fixed/limits.h" 3 4
/* Copyright (C) 1991-2015 Free Software Foundation, Inc.

This file is part of GCC.

GCC is free software; you can redistribute it and/or modify it under
the terms of the GNU General Public License as published by the Free
Software Foundation; either version 3, or (at your option) any later
version.

GCC is distributed in the hope that it will be useful, but WITHOUT ANY
WARRANTY; without even the implied warranty of MERCHANTABILITY or
FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
for more details.

Under Section 7 of GPL version 3, you are granted additional
permissions described in the GCC Runtime Library Exception, version
3.1, as published by the Free Software Foundation.

You should have received a copy of the GNU General Public License and
a copy of the GCC Runtime Library Exception along with this program;
see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
<http://www.gnu.org/licenses/>.  */




/* Number of bits in a `char'.  */



/* Maximum length of a multibyte character.  */




/* Minimum and maximum values a `signed char' can hold.  */





/* Maximum value an `unsigned char' can hold.  (Minimum is 0).  */







/* Minimum and maximum values a `char' can hold.  */
# 67 "/opt/riscv/lib/gcc/riscv32-unknown-elf/5.1.0/include-fixed/limits.h" 3 4
/* Minimum and maximum values a `signed short int' can hold.  */





/* Maximum value an `unsigned short int' can hold.  (Minimum is 0).  */







/* Minimum and maximum values a `signed int' can hold.  */





/* Maximum value an `unsigned int' can hold.  (Minimum is 0).  */



/* Minimum and maximum values a `signed long int' can hold.
   (Same as `int').  */





/* Maximum value an `unsigned long int' can hold.  (Minimum is 0).  */




/* Minimum and maximum values a `signed long long int' can hold.  */





/* Maximum value an `unsigned long long int' can hold.  (Minimum is 0).  */





/* Minimum and maximum values a `signed long long int' can hold.  */





/* Maximum value an `unsigned long long int' can hold.  (Minimum is 0).  */
# 25 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/kernel/boot.c" 2

# 25 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/kernel/boot.c"
//#include <string.h>



// See LICENSE for license details.
# 95 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/kernel/boot.c"
/*
 * RV32Sv32 page table entry:
 * | 31 10 | 9             8 | 7 | 6 | 5 | 4  3 | 2  0
 *    PPN    reserved for SW   D   R   G   perm   type
 *
 * RV64Sv39 / RV64Sv48 page table entry:
 * | 63 26 | 25           10 | 9             8 | 7 | 6 | 5 | 4  3 | 2  0
 *    PPN    reserved for HW   reserved for SW   D   R   G   perm   type
 */


// page table entry (PTE) fields
# 125 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/kernel/boot.c"
/* Quoted from mman.h */
# 153 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/kernel/boot.c"
/*#ifdef __riscv64
# define MSTATUS_UA MSTATUS64_UA
# define MSTATUS_SA MSTATUS64_SA
# define MSTATUS_HA MSTATUS64_HA
# define MSTATUS_SD MSTATUS64_SD
# define SSTATUS_SD SSTATUS64_SD
# define RISCV_PGLEVEL_BITS 9
# define PTE_PPN_SHIFT RV64_PTE_PPN_SHIFT
#else*/




//#endif
# 210 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/kernel/boot.c"
/* Automatically generated by parse-opcodes */
# 924 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/kernel/boot.c"
void tohost_exit(long code)
{
__asm__ volatile ("csrw " "tohost" ", %0" :: "r"((code << 1) | 1));
while (1);
}

// See LICENSE for license details.




//-----------------------------------------------------------------------
// Begin Macro
//-----------------------------------------------------------------------
# 954 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/kernel/boot.c"
//-----------------------------------------------------------------------
// Pass/Fail Macro
//-----------------------------------------------------------------------







//-----------------------------------------------------------------------
// Data Section Macro
//-----------------------------------------------------------------------







//-----------------------------------------------------------------------
// Supervisor mode definitions and macros
//-----------------------------------------------------------------------
# 1020 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/kernel/boot.c"
volatile uint64_t magic_mem[8] __attribute__((aligned(64)));

static long handle_frontend_syscall(long which, long arg0, long arg1, long arg2)
{
  magic_mem[0] = which;
  magic_mem[1] = arg0;
  magic_mem[2] = arg1;
  magic_mem[3] = arg2;
  __sync_synchronize();
  __asm__ volatile ("csrw " "tohost" ", %0" :: "r"((uint64_t)magic_mem));
  while (({ long __tmp; __asm__ volatile ("csrrw %0, " "fromhost" ", %1" : "=r"(__tmp) : "r"(0)); __tmp; }) == 0);
  return magic_mem[0];
}

// In setStats, we might trap reading uarch-specific counters.
// The trap handler will skip over the instruction and write 0,
// but only if a0 is the destination register.





static long counters[18];
static char* counter_names[18];
static int handle_stats(int enable)
{
  //use csrs to set stats register
  if (enable)
    __asm__ volatile ("csrrs a0, stats, 1" ::: "a0");
  int i = 0;






  do { while (i >= 18) ; long csr = ({ register long __tmp __asm__("a0"); __asm__ volatile ("csrr %0, " "cycle" : "=r"(__tmp)); __tmp; }); if (!enable) { csr -= counters[i]; counter_names[i] = "cycle"; } counters[i++] = csr; } while (0); do { while (i >= 18) ; long csr = ({ register long __tmp __asm__("a0"); __asm__ volatile ("csrr %0, " "instret" : "=r"(__tmp)); __tmp; }); if (!enable) { csr -= counters[i]; counter_names[i] = "instret"; } counters[i++] = csr; } while (0);
  do { while (i >= 18) ; long csr = ({ register long __tmp __asm__("a0"); __asm__ volatile ("csrr %0, " "uarch0" : "=r"(__tmp)); __tmp; }); if (!enable) { csr -= counters[i]; counter_names[i] = "uarch0"; } counters[i++] = csr; } while (0); do { while (i >= 18) ; long csr = ({ register long __tmp __asm__("a0"); __asm__ volatile ("csrr %0, " "uarch1" : "=r"(__tmp)); __tmp; }); if (!enable) { csr -= counters[i]; counter_names[i] = "uarch1"; } counters[i++] = csr; } while (0); do { while (i >= 18) ; long csr = ({ register long __tmp __asm__("a0"); __asm__ volatile ("csrr %0, " "uarch2" : "=r"(__tmp)); __tmp; }); if (!enable) { csr -= counters[i]; counter_names[i] = "uarch2"; } counters[i++] = csr; } while (0); do { while (i >= 18) ; long csr = ({ register long __tmp __asm__("a0"); __asm__ volatile ("csrr %0, " "uarch3" : "=r"(__tmp)); __tmp; }); if (!enable) { csr -= counters[i]; counter_names[i] = "uarch3"; } counters[i++] = csr; } while (0);
  do { while (i >= 18) ; long csr = ({ register long __tmp __asm__("a0"); __asm__ volatile ("csrr %0, " "uarch4" : "=r"(__tmp)); __tmp; }); if (!enable) { csr -= counters[i]; counter_names[i] = "uarch4"; } counters[i++] = csr; } while (0); do { while (i >= 18) ; long csr = ({ register long __tmp __asm__("a0"); __asm__ volatile ("csrr %0, " "uarch5" : "=r"(__tmp)); __tmp; }); if (!enable) { csr -= counters[i]; counter_names[i] = "uarch5"; } counters[i++] = csr; } while (0); do { while (i >= 18) ; long csr = ({ register long __tmp __asm__("a0"); __asm__ volatile ("csrr %0, " "uarch6" : "=r"(__tmp)); __tmp; }); if (!enable) { csr -= counters[i]; counter_names[i] = "uarch6"; } counters[i++] = csr; } while (0); do { while (i >= 18) ; long csr = ({ register long __tmp __asm__("a0"); __asm__ volatile ("csrr %0, " "uarch7" : "=r"(__tmp)); __tmp; }); if (!enable) { csr -= counters[i]; counter_names[i] = "uarch7"; } counters[i++] = csr; } while (0);
  do { while (i >= 18) ; long csr = ({ register long __tmp __asm__("a0"); __asm__ volatile ("csrr %0, " "uarch8" : "=r"(__tmp)); __tmp; }); if (!enable) { csr -= counters[i]; counter_names[i] = "uarch8"; } counters[i++] = csr; } while (0); do { while (i >= 18) ; long csr = ({ register long __tmp __asm__("a0"); __asm__ volatile ("csrr %0, " "uarch9" : "=r"(__tmp)); __tmp; }); if (!enable) { csr -= counters[i]; counter_names[i] = "uarch9"; } counters[i++] = csr; } while (0); do { while (i >= 18) ; long csr = ({ register long __tmp __asm__("a0"); __asm__ volatile ("csrr %0, " "uarch10" : "=r"(__tmp)); __tmp; }); if (!enable) { csr -= counters[i]; counter_names[i] = "uarch10"; } counters[i++] = csr; } while (0); do { while (i >= 18) ; long csr = ({ register long __tmp __asm__("a0"); __asm__ volatile ("csrr %0, " "uarch11" : "=r"(__tmp)); __tmp; }); if (!enable) { csr -= counters[i]; counter_names[i] = "uarch11"; } counters[i++] = csr; } while (0);
  do { while (i >= 18) ; long csr = ({ register long __tmp __asm__("a0"); __asm__ volatile ("csrr %0, " "uarch12" : "=r"(__tmp)); __tmp; }); if (!enable) { csr -= counters[i]; counter_names[i] = "uarch12"; } counters[i++] = csr; } while (0); do { while (i >= 18) ; long csr = ({ register long __tmp __asm__("a0"); __asm__ volatile ("csrr %0, " "uarch13" : "=r"(__tmp)); __tmp; }); if (!enable) { csr -= counters[i]; counter_names[i] = "uarch13"; } counters[i++] = csr; } while (0); do { while (i >= 18) ; long csr = ({ register long __tmp __asm__("a0"); __asm__ volatile ("csrr %0, " "uarch14" : "=r"(__tmp)); __tmp; }); if (!enable) { csr -= counters[i]; counter_names[i] = "uarch14"; } counters[i++] = csr; } while (0); do { while (i >= 18) ; long csr = ({ register long __tmp __asm__("a0"); __asm__ volatile ("csrr %0, " "uarch15" : "=r"(__tmp)); __tmp; }); if (!enable) { csr -= counters[i]; counter_names[i] = "uarch15"; } counters[i++] = csr; } while (0);

  if (!enable)
    __asm__ volatile ("csrrc a0, stats, 1" ::: "a0");
  return 0;
}

long handle_trap(long cause, long epc, uint64_t regs[32])
{
  int* csr_insn;
  __asm__ ("jal %0, 1f; csrr a0, stats; 1:" : "=r"(csr_insn));
  long sys_ret = 0;

  if (cause == 0x2 &&
      (*(int*)epc & *csr_insn) == *csr_insn)
    ;
  //else if (cause != CAUSE_SYSCALL)
    //tohost_exit(1337);
  else if (regs[17] == 93)
    tohost_exit(regs[10]);
  else if (regs[17] == 1234)
    sys_ret = handle_stats(regs[10]);
  else
    sys_ret = handle_frontend_syscall(regs[17], regs[10], regs[11], regs[12]);

  regs[10] = sys_ret;
  return epc+4;
}

static long syscall(long num, long arg0, long arg1, long arg2)
{
  register long a7 __asm__("a7") = num;
  register long a0 __asm__("a0") = arg0;
  register long a1 __asm__("a1") = arg1;
  register long a2 __asm__("a2") = arg2;
  __asm__ volatile ("scall" : "+r"(a0) : "r"(a1), "r"(a2), "r"(a7));
  return a0;
}

void printstr(const char* s)
{
  syscall(64, 1, (long)s, 20);
}

static inline void vsetcfg(long cfg)
{
  __asm__ volatile ("vsetcfg %0" : : "r"(cfg));
}

static inline void vsetvl(long vl)
{
  long __tmp;
  __asm__ volatile ("vsetvl %0,%1" : "=r"(__tmp) : "r"(vl));
}

static inline long vgetcfg()
{
  int cfg;
  __asm__ volatile ("vgetcfg %0" : "=r"(cfg) :);
  return cfg;
}

static inline long vgetvl()
{
  int vl;
  __asm__ volatile ("vgetvl %0" : "=r"(vl) :);
}

static inline long vxcptaux()
{
  long aux;
  __asm__ volatile ("vxcptaux %0" : "=r"(aux) :);
  return aux;
}

static inline long vxcptcause()
{
  long cause;
  __asm__ volatile ("vxcptcause %0" : "=r"(cause) :);
  return cause;
}

static inline void vxcptrestore(long* mem)
{
  __asm__ volatile("vxcptrestore %0" : : "r"(mem) : "memory");
}

static inline void vxcptevac(long* mem)
{
  __asm__ volatile ("vxcptevac %0" : : "r"(mem));
}

typedef unsigned long pte_tt;






typedef struct
{
  long gpr[32];
  long sr;
  long epc;
  long badvaddr;
  long cause;
  long hwacha_cause;
  long hwacha_opaque[2560];
} trapframe_t;




void trap_entry();
void pop_tf(trapframe_t*);

static void cputchar(int x)
{
  while (({ long __tmp; __asm__ volatile ("csrrw %0, " "tohost" ", %1" : "=r"(__tmp) : "r"(0x0101000000000000 | (unsigned char)x)); __tmp; }));
  while (({ long __tmp; __asm__ volatile ("csrrw %0, " "fromhost" ", %1" : "=r"(__tmp) : "r"(0)); __tmp; }) == 0);
}

static void cputstring(const char* s)
{
  while(*s)
    cputchar(*s++);
}

static void terminate(int code)
{
  while (({ long __tmp; __asm__ volatile ("csrrw %0, " "tohost" ", %1" : "=r"(__tmp) : "r"(code)); __tmp; }));
  while (1);
}
# 1202 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/kernel/boot.c"
typedef struct { pte_tt addr; void* next; } freelist_t;

pte_tt l1pt[((1 << 12)/sizeof(pte_tt))] __attribute__((aligned((1 << 12))));
pte_tt l2pt[((1 << 12)/sizeof(pte_tt))] __attribute__((aligned((1 << 12))));
pte_tt l3pt[((1 << 12)/sizeof(pte_tt))] __attribute__((aligned((1 << 12))));
freelist_t user_mapping[2 /* this must be the period of the LFSR below*/];
freelist_t freelist_nodes[2 /* this must be the period of the LFSR below*/];
freelist_t *freelist_head, *freelist_tail;

/* pointer to the end of boot code/data in kernel image */
/* need a fake array to get the pointer from the linker script */
extern char ki_boot_end[1];
/* pointer to end of kernel image */
extern char ki_end[1];

/**
 * Split mem_reg about reserved_reg. If memory exists in the lower
 * segment, insert it. If memory exists in the upper segment, return it.
 */
__attribute__((__section__(".boot.text"))) static region_t
insert_region_excluded(region_t mem_reg, region_t reserved_reg)
{
}

__attribute__((__section__(".boot.text"))) static void
init_freemem(region_t ui_reg)
{
}

__attribute__((__section__(".boot.text"))) static void
init_irqs(cap_t root_cnode_cap)
{
}

/* Create a frame cap for the initial thread. */

static __attribute__((__section__(".boot.text"))) cap_t
create_it_frame_cap(pptr_t pptr, vptr_t vptr, asid_t asid, bool_t use_large)
{
}

__attribute__((__section__(".boot.text"))) cap_t
create_unmapped_it_frame_cap(pptr_t pptr, bool_t use_large)
{
}

__attribute__((__section__(".boot.text"))) cap_t
create_mapped_it_frame_cap(cap_t pd_cap, pptr_t pptr, vptr_t vptr, bool_t
use_large, bool_t executable)
{
}

/* Create a page table for the initial thread */

static __attribute__((__section__(".boot.text"))) cap_t
create_it_page_table_cap(cap_t pd, pptr_t pptr, vptr_t vptr, asid_t asid)
{
}

__attribute__((__section__(".boot.text"))) static bool_t
create_device_frames(cap_t root_cnode_cap)
{
    return true;
}

/* This and only this function initialises the CPU. It does NOT initialise any kernel state. */

__attribute__((__section__(".boot.text"))) static void
init_cpu(void)
{
}

/* This and only this function initialises the platform. It does NOT initialise any kernel state. */

__attribute__((__section__(".boot.text"))) static void
init_plat(void)
{
    initIRQController();
    initTimer();
    initL2Cache();
}

/* Main kernel initialisation function. */


static __attribute__((__section__(".boot.text"))) bool_t
try_init_kernel(
    paddr_t ui_p_reg_start,
    paddr_t ui_p_reg_end,
    int32_t pv_offset,
    vptr_t v_entry
)
{
    /* kernel successfully initialized */
    map_kernel_window();

    // page directory
    return true;
}

void vm_boot(long test_addr, long seed)
{
  while (({ unsigned long __tmp; __asm__ volatile ("csrr %0, " "hartid" : "=r"(__tmp)); __tmp; }) > 0); // only core 0 proceeds
  long i = 0;
  //assert(SIZEOF_TRAPFRAME_T == sizeof(trapframe_t));

  //l1pt[0] = ((pte_tt)l2pt >> PGSHIFT << PTE_PPN_SHIFT) | PTE_TYPE_TABLE;
  //l2pt[0] = ((pte_tt)l3pt >> PGSHIFT << PTE_PPN_SHIFT) | PTE_TYPE_TABLE;
  //l2pt[0] = PTE_CREATE(0, PROT_READ, PROT_READ);

  __asm__ volatile ("csrw " "sptbr" ", %0" :: "r"(l1pt));
  ({ unsigned long __tmp; if (__builtin_constant_p(0x00000080 | 0x18000000 | 0x60000000 | 0x00030000) && (0x00000080 | 0x18000000 | 0x60000000 | 0x00030000) < 32) __asm__ volatile ("csrrs %0, " "mstatus" ", %1" : "=r"(__tmp) : "i"(0x00000080 | 0x18000000 | 0x60000000 | 0x00030000)); else __asm__ volatile ("csrrs %0, " "mstatus" ", %1" : "=r"(__tmp) : "r"(0x00000080 | 0x18000000 | 0x60000000 | 0x00030000)); __tmp; });
  ({ unsigned long __tmp; if (__builtin_constant_p(0x00780000 | 0x00000300) && (0x00780000 | 0x00000300) < 32) __asm__ volatile ("csrrc %0, " "mstatus" ", %1" : "=r"(__tmp) : "i"(0x00780000 | 0x00000300)); else __asm__ volatile ("csrrc %0, " "mstatus" ", %1" : "=r"(__tmp) : "r"(0x00780000 | 0x00000300)); __tmp; });
  ({ unsigned long __tmp; if (__builtin_constant_p((long) 4 << __builtin_ctzl(0x00780000)) && ((long) 4 << __builtin_ctzl(0x00780000)) < 32) __asm__ volatile ("csrrs %0, " "mstatus" ", %1" : "=r"(__tmp) : "i"((long) 4 << __builtin_ctzl(0x00780000))); else __asm__ volatile ("csrrs %0, " "mstatus" ", %1" : "=r"(__tmp) : "r"((long) 4 << __builtin_ctzl(0x00780000))); __tmp; });
  //set_csr(mstatus, (long)UA_RV32 << __builtin_ctzl(MSTATUS_UA));

  /*seed = 1 + (seed % MAX_TEST_PAGES);
  freelist_head = &freelist_nodes[0];
  freelist_tail = &freelist_nodes[MAX_TEST_PAGES-1];
  for (i = 0; i < MAX_TEST_PAGES; i++)
  {
    freelist_nodes[i].addr = (MAX_TEST_PAGES + seed)*PGSIZE;
    freelist_nodes[i].next = &freelist_nodes[i+1];
    seed = LFSR_NEXT(seed);
  }
  freelist_nodes[MAX_TEST_PAGES-1].next = 0;
  */
  trapframe_t tf;
  //memset(&tf, 0, sizeof(tf));
  tf.epc = test_addr;
  //pop_tf(&tf);
}

__attribute__((__section__(".boot.text"))) __attribute__((externally_visible)) void
init_kernel(
    paddr_t ui_p_reg_start,
    paddr_t ui_p_reg_end,
    int32_t pv_offset,
    vptr_t v_entry
)
{

  vm_boot(&init_kernel, 1337);
  //cputstring("Entered the kernel \n");
  printstr("Entered the kernel \n");

  //printf("Entered the kernel \n");
  //putDebugChar('X');
  terminate(0);
  while(1);
}
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/kernel/thread.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 12 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/kernel/thread.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/machine.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 13 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/kernel/thread.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/model/statedata.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 14 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/kernel/thread.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/kernel/vspace.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/kernel/thread.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/kernel/thread.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/kernel/thread.h" 2

void Arch_switchToThread(tcb_t *tcb);
void Arch_switchToIdleThread(void);
void Arch_configureIdleThread(tcb_t *tcb);
void __attribute__((__const__)) Arch_activateIdleThread(tcb_t *tcb);
# 16 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/kernel/thread.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/linker.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 17 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/kernel/thread.c" 2

void
Arch_switchToThread(tcb_t *tcb)
{
}

__attribute__((__section__(".boot.text"))) void
Arch_configureIdleThread(tcb_t *tcb)
{
}

void
Arch_switchToIdleThread(void)
{
}

void __attribute__((__const__))
Arch_activateIdleThread(tcb_t *tcb)
{
    /* Don't need to do anything */
}
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/kernel/vspace.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 12 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/kernel/vspace.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/benchmark.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 13 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/kernel/vspace.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/api/failures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 14 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/kernel/vspace.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/api/syscall.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/kernel/vspace.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/kernel/boot.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/kernel/vspace.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/kernel/cspace.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 17 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/kernel/vspace.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/kernel/thread.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 18 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/kernel/vspace.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/machine/io.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 19 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/kernel/vspace.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/model/preemption.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/api/failures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/model/preemption.h" 2

exception_t preemptionPoint(void);
# 20 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/kernel/vspace.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/model/statedata.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 21 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/kernel/vspace.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/cnode.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 22 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/kernel/vspace.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/untyped.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 23 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/kernel/vspace.c" 2
# 1 "./arch/api/invocation.h" 1
/* @LICENSE(OKL_CORE) */

/* This header was generated by kernel/tools/invocation_header_gen.py.
 *
 * To add an invocation call number, edit libsel4/include/interfaces/sel4.xml.
 *
 */


# 1 "./api/invocation.h" 1
/* @LICENSE(OKL_CORE) */

/* This header was generated by kernel/tools/invocation_header_gen.py.
 *
 * To add an invocation call number, edit libsel4/include/interfaces/sel4.xml.
 *
 */



enum invocation_label {
    InvalidInvocation,
    UntypedRetype,
    TCBReadRegisters,
    TCBWriteRegisters,
    TCBCopyRegisters,
    TCBConfigure,
    TCBSetPriority,
    TCBSetIPCBuffer,
    TCBSetSpace,
    TCBSuspend,
    TCBResume,
    TCBBindAEP,
    TCBUnbindAEP,
    TCBSetEPTRoot,
    CNodeRevoke,
    CNodeDelete,
    CNodeRecycle,
    CNodeCopy,
    CNodeMint,
    CNodeMove,
    CNodeMutate,
    CNodeRotate,
    CNodeSaveCaller,
    IRQIssueIRQHandler,
    IRQInterruptControl,
    IRQAckIRQ,
    IRQSetIRQHandler,
    IRQClearIRQHandler,
    IRQSetMode,
    DomainSetSet,
    nInvocationLabels
};
# 11 "./arch/api/invocation.h" 2

enum arch_invocation_label {
    nArchInvocationLabels
};
# 24 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/kernel/vspace.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/kernel/vspace.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 25 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/kernel/vspace.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/linker.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 26 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/kernel/vspace.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/object/tcb.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 27 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/kernel/vspace.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/plat/qemu_riscv/plat/machine/devices.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 28 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/kernel/vspace.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/plat/qemu_riscv/plat/machine/hardware.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 29 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/kernel/vspace.c" 2
//#include <armv/context_switch.h>

char riscv_kernel_stack[4096] __attribute__((__aligned__(4096))) __attribute__((__section__(".bss.aligned"))) __attribute__((externally_visible));

struct resolve_ret {
    paddr_t frameBase;
    vm_page_size_t frameSize;
    bool_t valid;
};
typedef struct resolve_ret resolve_ret_t;

void doFlush(int label, vptr_t start, vptr_t end, paddr_t pstart);
static pte_t *lookupPTSlot_nofail(pte_t *pt, vptr_t vptr);
static resolve_ret_t resolveVAddr(pde_t *pd, vptr_t vaddr);
static exception_t performPDFlush(int label, pde_t *pd, asid_t asid,
                                  vptr_t start, vptr_t end, paddr_t pstart);
static exception_t performPageFlush(int label, pde_t *pd, asid_t asid,
                                    vptr_t start, vptr_t end, paddr_t pstart);
static exception_t performPageGetAddress(void *vbase_ptr);
static exception_t decodeRISCVPageDirectoryInvocation(word_t label,
                                                    unsigned int length, cptr_t cptr, cte_t *cte, cap_t cap,
                                                    extra_caps_t extraCaps, word_t *buffer);
static pde_t __attribute__((__pure__)) loadHWASID(asid_t asid);

static bool_t __attribute__((__pure__)) pteCheckIfMapped(pte_t *pte);
static bool_t __attribute__((__pure__)) pdeCheckIfMapped(pde_t *pde);

static word_t __attribute__((__const__))
APFromVMRights(vm_rights_t vm_rights)
{
        return 0;

}

__attribute__((__section__(".boot.text"))) void
map_it_pt_cap(cap_t pd_cap)
{
}

__attribute__((__section__(".boot.text"))) void
map_kernel_frame(paddr_t paddr, pptr_t vaddr, vm_rights_t vm_rights, vm_attributes_t attributes)
{
}

__attribute__((__section__(".boot.text"))) void
map_kernel_window(void)
{
}

__attribute__((__section__(".boot.text"))) void
activate_global_pd(void)
{
}

__attribute__((__section__(".boot.text"))) void
write_it_asid_pool(cap_t it_ap_cap, cap_t it_pd_cap)
{
}

/* ==================== BOOT CODE FINISHES HERE ==================== */

void
copyGlobalMappings(pde_t *newPD)
{
}

word_t * __attribute__((__pure__))
lookupIPCBuffer(bool_t isReceiver, tcb_t *thread)
{
}

/*findPDForASID_ret_t
findPDForASID(asid_t asid)
{
}
*/
lookupPTSlot_ret_t
lookupPTSlot(pde_t *pd, vptr_t vptr)
{
}

static pte_t *
lookupPTSlot_nofail(pte_t *pt, vptr_t vptr)
{
}

pde_t * __attribute__((__const__))
lookupPDSlot(pde_t *pd, vptr_t vptr)
{
}

exception_t
handleVMFault(tcb_t *thread, vm_fault_type_t vm_faultType)
{
}

/*static void
invalidateASID(asid_t asid)
{
}

static void
invalidateASIDEntry(asid_t asid)
{
}

void
deleteASIDPool(asid_t asid_base, asid_pool_t* pool)
{
}

void
deleteASID(asid_t asid, pde_t* pd)
{
}
*/
pde_t *
pageTableMapped(asid_t asid, vptr_t vaddr, pte_t* pt)
{
}

void unmapPageTable(pde_t *pd, uint32_t pdIndex, pte_t* pt)
{
}

static pte_t pte_pte_invalid_new(void)
{
}

void
unmapPage(vm_page_size_t page_size, asid_t asid, vptr_t vptr, void *pptr)
{
}

void
setVMRoot(tcb_t *tcb)
{
}

static bool_t
setVMRootForFlush(pde_t* pd, asid_t asid)
{
}

bool_t __attribute__((__const__))
isValidVTableRoot(cap_t cap)
{
}

exception_t
checkValidIPCBuffer(vptr_t vptr, cap_t cap)
{
}

vm_rights_t __attribute__((__const__))
maskVMRights(vm_rights_t vm_rights, cap_rights_t cap_rights_mask)
{
}

/*static void
storeHWASID(asid_t asid, hw_asid_t hw_asid)
{
}

static pde_t PURE
loadHWASID(asid_t asid)
{
}

hw_asid_t
findFreeHWASID(void)
{
}

static hw_asid_t
getHWASID(asid_t asid)
{
}

void
setCurrentASID(asid_t asid)
{
}
*/
/* Cache and TLB consistency */

void flushPage(vm_page_size_t page_size, pde_t* pd, word_t vptr)
{
}

 void flushTable(pde_t* pd, word_t vptr, pte_t* pt)
{
}

void
flushSpace(asid_t asid)
{
}

void
invalidateTLBByASID(asid_t asid)
{
}

/* The rest of the file implements the RISCV object invocations */

static pte_t __attribute__((__const__))
makeUserPTE(vm_page_size_t page_size, paddr_t paddr,
            bool_t cacheable, bool_t nonexecutable, vm_rights_t vm_rights)
{
}

static pde_t __attribute__((__const__))
makeUserPDE(vm_page_size_t page_size, paddr_t paddr, bool_t parity,
            bool_t cacheable, bool_t nonexecutable, word_t domain,
            vm_rights_t vm_rights)
{
}

static inline bool_t __attribute__((__const__))
checkVPAlignment(vm_page_size_t sz, word_t w)
{
}

static exception_t
decodeRISCVPageTableInvocation(word_t label, unsigned int length,
                             cte_t *cte, cap_t cap, extra_caps_t extraCaps,
                             word_t *buffer)
{
}

struct create_mappings_pte_return {
    exception_t status;
    pte_t pte;
    pte_range_t pte_entries;
};
typedef struct create_mappings_pte_return create_mappings_pte_return_t;

struct create_mappings_pde_return {
    exception_t status;
    pde_t pde;
    pde_range_t pde_entries;
};
typedef struct create_mappings_pde_return create_mappings_pde_return_t;

static create_mappings_pte_return_t
createSafeMappingEntries_PTE
(paddr_t base, word_t vaddr, vm_page_size_t frameSize,
 vm_rights_t vmRights, vm_attributes_t attr, pde_t *pd)
{
}



static create_mappings_pde_return_t
createSafeMappingEntries_PDE
(paddr_t base, word_t vaddr, vm_page_size_t frameSize,
 vm_rights_t vmRights, vm_attributes_t attr, pde_t *pd)
{
}

static exception_t
decodeRISCVFrameInvocation(word_t label, unsigned int length,
                         cte_t *cte, cap_t cap, extra_caps_t extraCaps,
                         word_t *buffer)
{
}

static const resolve_ret_t default_resolve_ret_t;

static resolve_ret_t
resolveVAddr(pde_t *pd, vptr_t vaddr)
{
}

static inline vptr_t
pageBase(vptr_t vaddr, vm_page_size_t size)
{
    return vaddr & ~((1ul<<(pageBitsForSize(size)))-1ul);
}

static exception_t
decodeRISCVPageDirectoryInvocation(word_t label, unsigned int length,
                                 cptr_t cptr, cte_t *cte, cap_t cap,
                                 extra_caps_t extraCaps, word_t *buffer)
{
  return EXCEPTION_SYSCALL_ERROR;
}

exception_t
decodeRISCVMMUInvocation(word_t label, unsigned int length, cptr_t cptr,
                       cte_t *cte, cap_t cap, extra_caps_t extraCaps,
                       word_t *buffer)
{
}

exception_t
performPageTableInvocationUnmap(cap_t cap, cte_t *ctSlot)
{
}

static exception_t
performPageGetAddress(void *vbase_ptr)
{
}

static bool_t __attribute__((__pure__))
pteCheckIfMapped(pte_t *pte)
{
}

static bool_t __attribute__((__pure__))
pdeCheckIfMapped(pde_t *pde)
{
}

exception_t performPageInvocationMapPTE(cap_t cap, cte_t *ctSlot,
                                        pte_t pte, pte_range_t pte_entries)
{
}
exception_t performPageInvocationMapPDE(cap_t cap, cte_t *ctSlot,
                                        pde_t pde, pde_range_t pde_entries)
{
}

exception_t
performPageInvocationRemapPTE(asid_t asid, pte_t pte, pte_range_t pte_entries)
{
    return EXCEPTION_NONE;
}

exception_t
performPageInvocationRemapPDE(asid_t asid, pde_t pde, pde_range_t pde_entries)
{
    return EXCEPTION_NONE;
}

exception_t
performPageInvocationUnmap(cap_t cap, cte_t *ctSlot)
{
    return EXCEPTION_NONE;
}

exception_t
performASIDControlInvocation(void *frame, cte_t *slot,
                             cte_t *parent, asid_t asid_base)
{
    return EXCEPTION_NONE;
}

/*exception_t
performASIDPoolInvocation(asid_t asid, asid_pool_t *poolPtr,
                          cte_t *pdCapSlot)
{
    return EXCEPTION_NONE;
}
*/
void
doFlush(int label, vptr_t start, vptr_t end, paddr_t pstart)
{
}

static exception_t
performPageFlush(int label, pde_t *pd, asid_t asid, vptr_t start,
                 vptr_t end, paddr_t pstart)
{
    return EXCEPTION_NONE;
}

static exception_t
performPDFlush(int label, pde_t *pd, asid_t asid, vptr_t start,
               vptr_t end, paddr_t pstart)
{
    return EXCEPTION_NONE;
}


void kernelPrefetchAbort(word_t pc) __attribute__((externally_visible));
void kernelDataAbort(word_t pc) __attribute__((externally_visible));

void
kernelPrefetchAbort(word_t pc)
{
}

void
kernelDataAbort(word_t pc)
{
}
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/machine/capdl.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */



# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/structures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 14 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/machine/capdl.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/tcb.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/machine/capdl.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/model/statedata.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/machine/capdl.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/machine/capdl.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 17 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/machine/capdl.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/machine/capdl.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 18 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/machine/capdl.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/plat/qemu_riscv/plat/machine/debug_helpers.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/plat/qemu_riscv/plat/machine/io.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/plat/qemu_riscv/plat/machine/debug_helpers.h" 2
# 19 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/machine/capdl.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/plat/qemu_riscv/plat/machine/hardware.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 20 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/machine/capdl.c" 2

static int getDecodedChar(unsigned char *result)
{
}

static void putEncodedChar(unsigned char c)
{
}

static int getArg32(unsigned int *res)
{
}

static void sendWord(unsigned int word)
{
}

static cte_t *getMDBParent(cte_t *slot)
{
}

static void sendPD(unsigned int address)
{
}

static void sendPT(unsigned int address)
{
}

static void sendASIDPool(unsigned int address)
{
}

static void sendRunqueues(void)
{
}

static void sendEPQueue(unsigned int epptr)
{
}

static void sendCNode(unsigned int address, unsigned int sizebits)
{
}

static void sendIRQNode(void)
{
}

static void sendVersion(void)
{
}

void capDL(void)
{
}
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/machine/debug.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/stdint.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 12 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/machine/debug.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/util.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 13 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/machine/debug.c" 2
//#include <arch/machine/debug.h>
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/machine/io.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/machine/debug.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/model/statedata.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/machine/debug.c" 2

typedef uint32_t vector_t;
typedef void (*break_handler_t)(user_context_t *context);
typedef void (*catch_handler_t)(user_context_t *context, vector_t vector);

void
debug_init(void)
{
}

void
software_breakpoint(uint32_t va, user_context_t *context)
{
}

void
breakpoint_multiplexer(uint32_t va, user_context_t *context)
{
}

int
set_breakpoint(uint32_t va, break_handler_t handler)
{
  return 0;
}

void
clear_breakpoint(uint32_t va)
{
}

catch_handler_t catch_handler __attribute__((externally_visible));

void
set_catch_handler(catch_handler_t handler)
{
}

void
catch_vector(vector_t vector)
{
}

void
uncatch_vector(vector_t vector)
{
}
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/machine/hardware.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 12 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/machine/hardware.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/machine/registerset.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 13 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/machine/hardware.c" 2


word_t __attribute__((__pure__))
getRestartPC(tcb_t *thread)
{
}

void
setNextPC(tcb_t *thread, word_t v)
{
}
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/machine/registerset.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */



const register_t msgRegisters[] = {
    X20, X21, X22, X23
};

const register_t frameRegisters[] = {
    X18, X19, X20, X21, X22, X23, X24
};

const register_t gpRegisters[] = {
    X18, X19, X20, X21, X22, X23, X24
};

const register_t exceptionMessage[] = {
    SP /* TODO: Add other realted registers */
};

const register_t syscallMessage[] = {
    X18, X19, X20, X21, X22, X23, X24, X25, SP
};
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/object/interrupt.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 12 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/object/interrupt.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/api/failures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 13 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/object/interrupt.c" 2

# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/object/interrupt.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/object/interrupt.c" 2

exception_t
Arch_decodeInterruptControl(unsigned int length, extra_caps_t extraCaps)
{
    return EXCEPTION_SYSCALL_ERROR;
}
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/object/objecttype.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 12 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/object/objecttype.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/api/failures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 13 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/object/objecttype.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/kernel/vspace.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 14 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/object/objecttype.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/structures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/object/objecttype.c" 2

# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/model/statedata.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 17 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/object/objecttype.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/object/objecttype.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 18 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/object/objecttype.c" 2

deriveCap_ret_t
Arch_deriveCap(cte_t *slot, cap_t cap)
{
}

cap_t __attribute__((__const__))
Arch_updateCapData(bool_t preserve, word_t data, cap_t cap)
{
    return cap;
}

cap_t __attribute__((__const__))
Arch_maskCapRights(cap_rights_t cap_rights_mask, cap_t cap)
{
        return cap;
}

cap_t
Arch_finaliseCap(cap_t cap, bool_t final)
{
    return cap_null_cap_new();
}

static cap_t __attribute__((__const__))
resetMemMapping(cap_t cap)
{
    return cap;
}

cap_t
Arch_recycleCap(bool_t is_final, cap_t cap)
{
    return cap_null_cap_new();
}

bool_t __attribute__((__const__))
Arch_hasRecycleRights(cap_t cap)
{
        return true;
}


bool_t __attribute__((__const__))
Arch_sameRegionAs(cap_t cap_a, cap_t cap_b)
{
    return false;
}


bool_t __attribute__((__const__))
Arch_sameObjectAs(cap_t cap_a, cap_t cap_b)
{
  return 0;
}

word_t
Arch_getObjectSize(word_t t)
{
        return 0;
}

cap_t Arch_createObject(object_t t, void *regionBase, int userSize, bool_t
deviceMemory)
{
}

exception_t
Arch_decodeInvocation(word_t label, unsigned int length, cptr_t cptr,
                      cte_t *slot, cap_t cap, extra_caps_t extraCaps,
                      word_t *buffer)
{
    return decodeRISCVMMUInvocation(label, length, cptr, slot, cap, extraCaps, buffer);
}

void
Arch_prepareThreadDelete(tcb_t *thread)
{
    /* No action required on RISCV. */
}

bool_t
Arch_isFrameType(word_t t)
{
}
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/object/tcb.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 12 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/object/tcb.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/api/failures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 13 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/object/tcb.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/machine/registerset.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 14 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/object/tcb.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/structures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/object/tcb.c" 2

# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/object/tcb.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 17 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/object/tcb.c" 2

static inline unsigned int
setMR(tcb_t *receiver, word_t* receiveIPCBuffer,
      unsigned int offset, word_t reg)
{
  return 0;
}

static inline unsigned int
setMRs_lookup_failure(tcb_t *receiver, word_t* receiveIPCBuffer,
                      lookup_fault_t luf, unsigned int offset)
{
  return 0;
}

unsigned int
setMRs_fault(tcb_t *sender, tcb_t* receiver, word_t *receiveIPCBuffer)
{
  return 0;
}

unsigned int
setMRs_syscall_error(tcb_t *thread, word_t *receiveIPCBuffer)
{
  return 0;
}

word_t __attribute__((__const__))
Arch_decodeTransfer(word_t flags)
{
    return 0;
}

exception_t __attribute__((__const__))
Arch_performTransfer(word_t arch, tcb_t *tcb_src, tcb_t *tcb_dest)
{
    return EXCEPTION_NONE;
}

void
Arch_leaveVMAsyncTransfer(tcb_t *tcb)
{
}
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/assert.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/assert.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 12 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/assert.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/machine/io.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 13 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/assert.c" 2



void _fail(
    const char* s,
    const char* file,
    unsigned int line,
    const char* function)
{
    printf(
        "seL4 called fail at %s:%u in function %s, saying \"%s\"\n",
        file,
        line,
        function,
        s
    );
    halt();
}

void _assert_fail(
    const char* assertion,
    const char* file,
    unsigned int line,
    const char* function)
{
    printf("seL4 failed assertion '%s' at %s:%u in function %s\n",
           assertion,
           file,
           line,
           function
          );
    halt();
}
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/inlines.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 12 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/inlines.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/api/failures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 13 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/inlines.c" 2

lookup_fault_t current_lookup_fault;
fault_t current_fault;
syscall_error_t current_syscall_error;
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/kernel/boot.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/assert.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 12 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/kernel/boot.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/kernel/boot.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 13 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/kernel/boot.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/kernel/thread.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 14 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/kernel/boot.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/kernel/cdt.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/machine.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/kernel/cdt.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/structures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/kernel/cdt.h" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/objecttype.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 17 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/kernel/cdt.h" 2

void cdtInsert(cte_t *parentSlot, cte_t *newSlot);
void cdtRemove(cte_t *slot);
cte_t *cdtFindInRange(int spaceType, word_t addr, unsigned int size);
cte_t *cdtFindChild(cte_t *parentSlot);
void cdtMove(cte_t *oldSlot, cte_t *newSlot);
void cdtSwap(cap_t cap1, cte_t *slot1, cap_t cap2, cte_t *slot2);
bool_t cdtIsFinal(cte_t *slot);
void cdtUpdate(cte_t *slot, cap_t newCap);
cte_t *cdtFind(int spaceType, word_t paddr, unsigned int size, unsigned int badge, unsigned int extra, unsigned int depth_bits);
cte_t *cdtFindAtDepth(int spaceType, word_t paddr, unsigned int size, unsigned int badge, unsigned int extra, uint32_t depth);
cte_t *cdtCapFindWithExtra(cap_t cap);
cte_t *cdtFindWithExtra(int spaceType, word_t paddr, unsigned int size, unsigned int badge, unsigned int depth_bits);
# 15 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/kernel/boot.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/machine/io.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/kernel/boot.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/machine/registerset.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 17 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/kernel/boot.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/model/statedata.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 18 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/kernel/boot.c" 2

# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/kernel/boot.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 20 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/kernel/boot.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/kernel/vspace.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 21 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/kernel/boot.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/linker.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 22 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/kernel/boot.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/plat/qemu_riscv/plat/machine/hardware.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 23 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/kernel/boot.c" 2

/* (node-local) state accessed only during bootstrapping */

ndks_boot_t ndks_boot __attribute__((__section__(".boot.data")));

__attribute__((__section__(".boot.text"))) bool_t
insert_region(region_t reg)
{
    unsigned int i;

    do { if (reg.start <= reg.end) break; cputstring("Assertion failed: " "reg.start <= reg.end" "\n"); terminate(3); } while(0);
    if (is_reg_empty(reg)) {
        return true;
    }
    for (i = 0; i < 2; i++) {
        if (is_reg_empty(ndks_boot.freemem[i])) {
            ndks_boot.freemem[i] = reg;
            return true;
        }
    }
    return false;
}

__attribute__((__section__(".boot.text"))) static inline uint32_t
reg_size(region_t reg)
{
    return reg.end - reg.start;
}

__attribute__((__section__(".boot.text"))) pptr_t
alloc_region(uint32_t size_bits)
{
    unsigned int i;
    unsigned int reg_index = 0; /* gcc cannot work out that this will not be used uninitialized */
    region_t reg = (region_t){ .start = 0, .end = 0 };
    region_t rem_small = (region_t){ .start = 0, .end = 0 };
    region_t rem_large = (region_t){ .start = 0, .end = 0 };
    region_t new_reg;
    region_t new_rem_small;
    region_t new_rem_large;

    /* Search for a freemem region that will be the best fit for an allocation. We favour allocations
     * that are aligned to either end of the region. If an allocation must split a region we favour
     * an unbalanced split. In both cases we attempt to use the smallest region possible. In general
     * this means we aim to make the size of the smallest remaining region smaller (ideally zero)
     * followed by making the size of the largest remaining region smaller */

    for (i = 0; i < 2; i++) {
        /* Determine whether placing the region at the start or the end will create a bigger left over region */
        if ((((((ndks_boot.freemem[i].start) - 1ul) >> (size_bits)) + 1ul) << (size_bits)) - ndks_boot.freemem[i].start <
                ndks_boot.freemem[i].end - (((ndks_boot.freemem[i].end) >> (size_bits)) << (size_bits))) {
            new_reg.start = (((((ndks_boot.freemem[i].start) - 1ul) >> (size_bits)) + 1ul) << (size_bits));
            new_reg.end = new_reg.start + (1ul<<(size_bits));
        } else {
            new_reg.end = (((ndks_boot.freemem[i].end) >> (size_bits)) << (size_bits));
            new_reg.start = new_reg.end - (1ul<<(size_bits));
        }
        if (new_reg.end > new_reg.start &&
                new_reg.start >= ndks_boot.freemem[i].start &&
                new_reg.end <= ndks_boot.freemem[i].end) {
            if (new_reg.start - ndks_boot.freemem[i].start < ndks_boot.freemem[i].end - new_reg.end) {
                new_rem_small.start = ndks_boot.freemem[i].start;
                new_rem_small.end = new_reg.start;
                new_rem_large.start = new_reg.end;
                new_rem_large.end = ndks_boot.freemem[i].end;
            } else {
                new_rem_large.start = ndks_boot.freemem[i].start;
                new_rem_large.end = new_reg.start;
                new_rem_small.start = new_reg.end;
                new_rem_small.end = ndks_boot.freemem[i].end;
            }
            if ( is_reg_empty(reg) ||
                    (reg_size(new_rem_small) < reg_size(rem_small)) ||
                    (reg_size(new_rem_small) == reg_size(rem_small) && reg_size(new_rem_large) < reg_size(rem_large)) ) {
                reg = new_reg;
                rem_small = new_rem_small;
                rem_large = new_rem_large;
                reg_index = i;
            }
        }
    }
    if (is_reg_empty(reg)) {
        printf("Kernel init failing: not enough memory\n");
        return 0;
    }
    /* Remove the region in question */
    ndks_boot.freemem[reg_index] = (region_t){ .start = 0, .end = 0 };
    /* Add the remaining regions in largest to smallest order */
    insert_region(rem_large);
    if (!insert_region(rem_small)) {
        printf("alloc_region(): wasted 0x%x bytes due to alignment, try to increase MAX_NUM_FREEMEM_REG\n",
               (unsigned int)(rem_small.end - rem_small.start));
    }
    return reg.start;
}

__attribute__((__section__(".boot.text"))) void
write_slot(slot_ptr_t slot_ptr, cap_t cap)
{
    slot_ptr->cap = cap;
    cdtInsert(((void *)0), slot_ptr);

    //slot_ptr->cteMDBNode = nullMDBNode;
    //mdb_node_ptr_set_mdbRevocable  (&slot_ptr->cteMDBNode, true);
    //mdb_node_ptr_set_mdbFirstBadged(&slot_ptr->cteMDBNode, true);
}

/* Our root CNode needs to be able to fit all the initial caps and not
 * cover all of memory.
 */
typedef int __assert_failed_root_cnode_size_valid[(16 < 32 - 4 && (1U << 16) >= 12 /* slot where dynamically allocated caps start */) ? 1 : -1];



__attribute__((__section__(".boot.text"))) cap_t
create_root_cnode(void)
{
    pptr_t pptr;
    cap_t cap;

    /* write the number of root CNode slots to global state */
    ndks_boot.slot_pos_max = (1ul<<(16));

    /* create an empty root CNode */
    pptr = alloc_region(16 + 4);
    if (!pptr) {
        printf("Kernel init failing: could not create root cnode\n");
        return cap_null_cap_new();
    }
    memzero(((cte_t *)(pptr)), 1U << (16 + 4));
    cap =
        cap_cnode_cap_new(
            16, /* radix      */
            32 - 16, /* guard size */
            0, /* guard      */
            pptr /* pptr       */
        );

    /* write the root CNode cap into the root CNode */
    write_slot((((slot_ptr_t)(pptr)) + (2 /* initial thread's root CNode cap */)), cap);

    return cap;
}

typedef int __assert_failed_irq_cnode_size[((1ul<<(12 - 4)) > maxIRQ) ? 1 : -1];

__attribute__((__section__(".boot.text"))) bool_t
create_irq_cnode(void)
{
    pptr_t pptr;
    /* create an empty IRQ CNode */
    pptr = alloc_region(12);
    if (!pptr) {
        printf("Kernel init failing: could not create irq cnode\n");
        return false;
    }
    memzero((void*)pptr, 1 << 12);
    intStateIRQNode = (cte_t*)pptr;
    return true;
}

/* Check domain scheduler assumptions. */
typedef int __assert_failed_num_domains_valid[(1 >= 1 && 1 <= 256) ? 1 : -1];

typedef int __assert_failed_num_priorities_valid[(256 >= 1 && 256 <= 256) ? 1 : -1];


__attribute__((__section__(".boot.text"))) void
create_domain_cap(cap_t root_cnode_cap)
{
    cap_t cap;
    unsigned int i;

    /* Check domain scheduler assumptions. */
    do { if (ksDomScheduleLength > 0) break; cputstring("Assertion failed: " "ksDomScheduleLength > 0" "\n"); terminate(3); } while(0);
    for (i = 0; i < ksDomScheduleLength; i++) {
        do { if (ksDomSchedule[i].domain < 1) break; cputstring("Assertion failed: " "ksDomSchedule[i].domain < 1" "\n"); terminate(3); } while(0);
        do { if (ksDomSchedule[i].length > 0) break; cputstring("Assertion failed: " "ksDomSchedule[i].length > 0" "\n"); terminate(3); } while(0);
    }

    cap = cap_domain_cap_new();
    write_slot((((slot_ptr_t)((pptr_t)cap_get_capPtr(root_cnode_cap))) + (11 /* domain cap */)), cap);
}


__attribute__((__section__(".boot.text"))) cap_t
create_ipcbuf_frame(cap_t root_cnode_cap, cap_t pd_cap, vptr_t vptr)
{
    cap_t cap;
    pptr_t pptr;

    /* allocate the IPC buffer frame */
    pptr = alloc_region(12);
    if (!pptr) {
        printf("Kernel init failing: could not create ipc buffer frame\n");
        return cap_null_cap_new();
    }
    clearMemory((void*)pptr, 12);

    /* create a cap of it and write it into the root CNode */
    cap = create_mapped_it_frame_cap(pd_cap, pptr, vptr, false, false);
    write_slot((((slot_ptr_t)((pptr_t)cap_get_capPtr(root_cnode_cap))) + (9 /* initial thread's IPC buffer frame cap */)), cap);

    return cap;
}

__attribute__((__section__(".boot.text"))) void
create_bi_frame_cap(
    cap_t root_cnode_cap,
    cap_t pd_cap,
    pptr_t pptr,
    vptr_t vptr
)
{
    cap_t cap;

    /* create a cap of it and write it into the root CNode */
    cap = create_mapped_it_frame_cap(pd_cap, pptr, vptr, false, false);
    write_slot((((slot_ptr_t)((pptr_t)cap_get_capPtr(root_cnode_cap))) + (7 /* bootinfo frame cap */)), cap);
}

__attribute__((__section__(".boot.text"))) pptr_t
allocate_bi_frame(
    node_id_t node_id,
    uint32_t num_nodes,
    vptr_t ipcbuf_vptr
)
{
    pptr_t pptr;

    /* create the bootinfo frame object */
    pptr = alloc_region(12);
    if (!pptr) {
        printf("Kernel init failed: could not allocate bootinfo frame\n");
        return 0;
    }
    clearMemory((void*)pptr, 12);

    /* initialise bootinfo-related global state */
    ndks_boot.bi_frame = ((bi_t*)(pptr));
    ndks_boot.slot_pos_cur = 12 /* slot where dynamically allocated caps start */;

    ((bi_t*)(pptr))->node_id = node_id;
    ((bi_t*)(pptr))->num_nodes = num_nodes;
    ((bi_t*)(pptr))->num_iopt_levels = 0;
    ((bi_t*)(pptr))->ipcbuf_vptr = ipcbuf_vptr;
    ((bi_t*)(pptr))->it_cnode_size_bits = 16;
    ((bi_t*)(pptr))->it_domain = ksDomSchedule[ksDomScheduleIdx].domain;

    return pptr;
}

__attribute__((__section__(".boot.text"))) bool_t
provide_cap(cap_t root_cnode_cap, cap_t cap)
{
    if (ndks_boot.slot_pos_cur >= ndks_boot.slot_pos_max) {
        printf("Kernel init failed: ran out of cap slots\n");
        return false;
    }
    write_slot((((slot_ptr_t)((pptr_t)cap_get_capPtr(root_cnode_cap))) + (ndks_boot.slot_pos_cur)), cap);
    ndks_boot.slot_pos_cur++;
    return true;
}

__attribute__((__section__(".boot.text"))) create_frames_of_region_ret_t
create_frames_of_region(
    cap_t root_cnode_cap,
    cap_t pd_cap,
    region_t reg,
    bool_t do_map,
    int32_t pv_offset
)
{
    pptr_t f;
    cap_t frame_cap;
    slot_pos_t slot_pos_before;
    slot_pos_t slot_pos_after;

    slot_pos_before = ndks_boot.slot_pos_cur;

    for (f = reg.start; f < reg.end; f += (1ul<<(12))) {
        if (do_map) {
            frame_cap = create_mapped_it_frame_cap(pd_cap, f, f - (0xf0000000 - 0x80000000) - pv_offset, false, false);
        } else {
            frame_cap = create_unmapped_it_frame_cap(f, false);
        }
        if (!provide_cap(root_cnode_cap, frame_cap))
            return (create_frames_of_region_ret_t) {
            (slot_region_t){ .start = 0, .end = 0 }, false
        };
    }

    slot_pos_after = ndks_boot.slot_pos_cur;

    return (create_frames_of_region_ret_t) {
        (slot_region_t) { slot_pos_before, slot_pos_after }, true
    };
}

__attribute__((__section__(".boot.text"))) bool_t
create_idle_thread(void)
{
    pptr_t pptr;
    pptr = alloc_region(((4 + 4) + 1));
    if (!pptr) {
        printf("Kernel init failed: Unable to allocate tcb for idle thread\n");
        return false;
    }
    memzero((void *)pptr, 1 << ((4 + 4) + 1));
    ksIdleThread = ((tcb_t *)(pptr + (1 << (4 + 4))));
    configureIdleThread(ksIdleThread);
    return true;
}

__attribute__((__section__(".boot.text"))) bool_t
create_initial_thread(
    cap_t root_cnode_cap,
    cap_t it_pd_cap,
    vptr_t ui_v_entry,
    vptr_t bi_frame_vptr,
    vptr_t ipcbuf_vptr,
    cap_t ipcbuf_cap
)
{
    pptr_t pptr;
    cap_t cap;
    tcb_t* tcb;
    deriveCap_ret_t dc_ret;

    /* allocate TCB */
    pptr = alloc_region(((4 + 4) + 1));
    if (!pptr) {
        printf("Kernel init failed: Unable to allocate tcb for initial thread\n");
        return false;
    }
    memzero((void*)pptr, 1 << ((4 + 4) + 1));
    tcb = ((tcb_t *)(pptr + (1 << (4 + 4))));
    tcb->tcbTimeSlice = 1;
    Arch_initContext(&tcb->tcbArch.tcbContext);

    /* derive a copy of the IPC buffer cap for inserting */
    dc_ret = deriveCap((((slot_ptr_t)((pptr_t)cap_get_capPtr(root_cnode_cap))) + (9 /* initial thread's IPC buffer frame cap */)), ipcbuf_cap);
    if (dc_ret.status != EXCEPTION_NONE) {
        printf("Failed to derive copy of IPC Buffer\n");
        return false;
    }

    /* initialise TCB (corresponds directly to abstract specification) */
    cteInsert(
        root_cnode_cap,
        (((slot_ptr_t)((pptr_t)cap_get_capPtr(root_cnode_cap))) + (2 /* initial thread's root CNode cap */)),
        (((slot_ptr_t)(pptr)) + (tcbCTable))
    );
    cteInsert(
        it_pd_cap,
        (((slot_ptr_t)((pptr_t)cap_get_capPtr(root_cnode_cap))) + (3 /* initial thread's vspace root cap */)),
        (((slot_ptr_t)(pptr)) + (tcbVTable))
    );
    cteInsert(
        dc_ret.cap,
        (((slot_ptr_t)((pptr_t)cap_get_capPtr(root_cnode_cap))) + (9 /* initial thread's IPC buffer frame cap */)),
        (((slot_ptr_t)(pptr)) + (tcbBuffer))
    );
    tcb->tcbIPCBuffer = ipcbuf_vptr;
    setRegister(tcb, capRegister, bi_frame_vptr);
    setNextPC(tcb, ui_v_entry);

    /* initialise TCB */
    tcb->tcbPriority = seL4_MaxPrio;
    setupReplyMaster(tcb);
    setThreadState(tcb, ThreadState_Running);
    ksSchedulerAction = ((tcb_t*)0);
    ksCurThread = ksIdleThread;
    ksCurDomain = ksDomSchedule[ksDomScheduleIdx].domain;
    ksDomainTime = ksDomSchedule[ksDomScheduleIdx].length;
    do { if (ksCurDomain < 1 && ksDomainTime > 0) break; cputstring("Assertion failed: " "ksCurDomain < 1 && ksDomainTime > 0" "\n"); terminate(3); } while(0);

    /* initialise current thread pointer */
    switchToThread(tcb); /* initialises ksCurThread */

    /* create initial thread's TCB cap */
    cap = cap_thread_cap_new(((unsigned int) (tcb)));
    write_slot((((slot_ptr_t)((pptr_t)cap_get_capPtr(root_cnode_cap))) + (1 /* initial thread's TCB cap */)), cap);

    return true;
}

__attribute__((__section__(".boot.text"))) static bool_t
provide_untyped_cap(
    cap_t root_cnode_cap,
    bool_t deviceMemory,
    pptr_t pptr,
    uint32_t size_bits,
    slot_pos_t first_untyped_slot
)
{
    bool_t ret;
    unsigned int i = ndks_boot.slot_pos_cur - first_untyped_slot;
    if (i < 800) {
        ndks_boot.bi_frame->ut_obj_paddr_list[i] = pptr_to_paddr((void*)pptr);
        ndks_boot.bi_frame->ut_obj_size_bits_list[i] = size_bits;
        ret = provide_cap(root_cnode_cap, cap_untyped_cap_new(deviceMemory, size_bits, pptr));
    } else {
        printf("Kernel init: Too many untyped regions for boot info\n");
        ret = true;
    }
    return ret;
}

/**
  DONT_TRANSLATE
*/
__attribute__((__section__(".boot.text"))) static uint32_t boot_clz (uint32_t x)
{
    return __builtin_clz(x);
}

/**
  DONT_TRANSLATE
*/
__attribute__((__section__(".boot.text"))) static uint32_t boot_ctz (uint32_t x)
{
    return __builtin_ctz(x);
}

__attribute__((__section__(".boot.text"))) bool_t
create_untypeds_for_region(
    cap_t root_cnode_cap,
    bool_t deviceMemory,
    region_t reg,
    slot_pos_t first_untyped_slot
)
{
    uint32_t align_bits;
    uint32_t size_bits;

    while (!is_reg_empty(reg)) {
        /* Due to a limitation on the mdb we cannot give out an untyped to the
         * the start of the kernel region. The reason for this is that cte pointers
         * in mdb nodes are stored with the high bits masked out. To recreate a cte pointer
         * we then need to put the high bits back in after reading it out. HOWEVER, we
         * still need a way to store and identify a NULL pointer. This means reserving
         * the bottom address as the 'null' address so that no one creates an cnode
         * there resulting in a 'null' (yet valid) cte
         */
        if (!deviceMemory && reg.start == 0xf0000000) {
            reg.start += (1ul<<(12));
        }
        /* Determine the maximum size of the region */
        size_bits = (8 * sizeof(word_t)) - 1 - boot_clz(reg.end - reg.start);

        /* Determine the alignment of the region */
        align_bits = boot_ctz(reg.start);

        /* Reduce size bits to align if needed */
        if (align_bits < size_bits) {
            size_bits = align_bits;
        }

        do { if (size_bits >= (8 * sizeof(word_t)) / 8) break; cputstring("Assertion failed: " "size_bits >= (8 * sizeof(word_t)) / 8" "\n"); terminate(3); } while(0);
        if (!provide_untyped_cap(root_cnode_cap, deviceMemory, reg.start, size_bits, first_untyped_slot)) {
            return false;
        }
        reg.start += (1ul<<(size_bits));
    }
    return true;
}

__attribute__((__section__(".boot.text"))) bool_t
create_untypeds(cap_t root_cnode_cap, region_t boot_mem_reuse_reg)
{
    slot_pos_t slot_pos_before;
    slot_pos_t slot_pos_after;
    uint32_t i;
    region_t reg;

    slot_pos_before = ndks_boot.slot_pos_cur;

    /* if boot_mem_reuse_reg is not empty, we can create UT objs from boot code/data frames */
    if (!create_untypeds_for_region(root_cnode_cap, false, boot_mem_reuse_reg, slot_pos_before)) {
        return false;
    }

    /* convert remaining freemem into UT objects and provide the caps */
    for (i = 0; i < 2; i++) {
        reg = ndks_boot.freemem[i];
        ndks_boot.freemem[i] = (region_t){ .start = 0, .end = 0 };
        if (!create_untypeds_for_region(root_cnode_cap, false, reg, slot_pos_before)) {
            return false;
        }
    }

    slot_pos_after = ndks_boot.slot_pos_cur;
    ndks_boot.bi_frame->ut_obj_caps = (slot_region_t) {
        slot_pos_before, slot_pos_after
    };
    return true;
}

__attribute__((__section__(".boot.text"))) void
bi_finalise(void)
{
    slot_pos_t slot_pos_start = ndks_boot.slot_pos_cur;
    slot_pos_t slot_pos_end = ndks_boot.slot_pos_max;
    ndks_boot.bi_frame->null_caps = (slot_region_t) {
        slot_pos_start, slot_pos_end
    };
}
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/kernel/cdt.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/machine.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 12 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/kernel/cdt.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/model/statedata.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 13 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/kernel/cdt.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/structures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 14 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/kernel/cdt.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/objecttype.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/kernel/cdt.c" 2





void printCTE(char *msg, cte_t *cte);

static cte_t *aaInsert(cte_t *rootSlot, cte_t *newSlot);
static cte_t *aaRemove(bool_t isSwapped, cte_t *rootSlot, cte_t *targetSlot);
static cte_t *aaTraverseBackward(cte_t *slot);
static cte_t *aaTraverseForward(cte_t *slot);

static inline int __attribute__((__const__)) compare(int a, int b)
{
    return a == b ? ( 0) : (a > b ? ( 1) : (-1));
}

static inline bool_t
capsEqual(cap_t a, cap_t b)
{
    return (cap_get_capSpaceType(a) == cap_get_capSpaceType(b)) &&
           ((word_t)cap_get_capSpacePtr(a) == (word_t)cap_get_capSpacePtr(b)) &&
           (cap_get_capSpaceSize(a) == cap_get_capSpaceSize(b)) &&
           (cap_get_capBadge(a) == cap_get_capBadge(b)) &&
           (cap_get_capExtraComp(a) == cap_get_capExtraComp(b));
}

static inline int _compSpace(cte_t *a, int bSpaceType, word_t bSpacePtr, unsigned int bSpaceSize)
{
    int cmp;
    cmp = compare(cap_get_capSpaceType(a->cap), bSpaceType);
    if (cmp != ( 0)) {
        return cmp;
    }
    cmp = compare((word_t)cap_get_capSpacePtr(a->cap), bSpacePtr);
    if (cmp != ( 0)) {
        return cmp;
    }
    return - compare(cap_get_capSpaceSize(a->cap), bSpaceSize);
}

static inline int _compBadge(cte_t *a, int bSpaceType, word_t bSpacePtr, unsigned int bSpaceSize, uint32_t bBadge)
{
    int cmp;
    cmp = _compSpace(a, bSpaceType, bSpacePtr, bSpaceSize);
    if (cmp != ( 0)) {
        return cmp;
    }
    return compare(cap_get_capBadge(a->cap), bBadge);
}

static inline int
_compDepth(cte_t *a, int bSpaceType, word_t bSpacePtr, unsigned int bSpaceSize, uint32_t bBadge, uint32_t bDepth)
{
    int cmp;
    cmp = _compBadge(a, bSpaceType, bSpacePtr, bSpaceSize, bBadge);
    if (cmp != ( 0)) {
        return cmp;
    }
    return compare(mdb_node_get_cdtDepth(a->cteMDBNode), bDepth);
}

static inline int
_compExtra(cte_t *a, int bSpaceType, word_t bSpacePtr, unsigned int bSpaceSize, uint32_t bBadge, uint32_t bDepth, uint32_t bExtraComp)
{
    int cmp;
    cmp = _compDepth(a, bSpaceType, bSpacePtr, bSpaceSize, bBadge, bDepth);
    if (cmp != ( 0)) {
        return cmp;
    }
    return compare(cap_get_capExtraComp(a->cap), bExtraComp);
}

static inline int
compExtra(cte_t *a, cte_t *b)
{
    return _compExtra(a, cap_get_capSpaceType(b->cap), (word_t)cap_get_capSpacePtr(b->cap), cap_get_capSpaceSize(b->cap), cap_get_capBadge(b->cap), mdb_node_get_cdtDepth(b->cteMDBNode), cap_get_capExtraComp(b->cap));
}

static inline int
_compSlot(cte_t *a, int bSpaceType, word_t bSpacePtr, unsigned int bSpaceSize, uint32_t bBadge, uint32_t bDepth, uint32_t bExtraComp, cte_t *b)
{
    int cmp;
    cmp = _compExtra(a, bSpaceType, bSpacePtr, bSpaceSize, bBadge, bDepth, bExtraComp);
    if (cmp != ( 0)) {
        return cmp;
    }
    return compare((word_t)a, (word_t)b);
}

static inline int
compSlot(cte_t *a, cte_t *b)
{
    return _compSlot(a, cap_get_capSpaceType(b->cap), (word_t)cap_get_capSpacePtr(b->cap), cap_get_capSpaceSize(b->cap), cap_get_capBadge(b->cap), mdb_node_get_cdtDepth(b->cteMDBNode), cap_get_capExtraComp(b->cap), b);
}

cte_t *
cdtCapFindWithExtra(cap_t cap)
{
    return cdtFindWithExtra(cap_get_capSpaceType(cap), (word_t)cap_get_capSpacePtr(cap), cap_get_capSpaceSize(cap), cap_get_capBadge(cap), cte_depth_bits_cap(cap));
}

cte_t *
cdtFindWithExtra(int spaceType, word_t paddr, unsigned int size, unsigned int badge, unsigned int depth_bits)
{
    uint32_t i;
    for (i = 0; i < (1ul<<(depth_bits)); i++) {
        cte_t *current;
        cte_t *next;

        next = ksRootCTE;
        do {
            int cmp;
            current = next;
            cmp = _compSpace(current, spaceType, paddr, size);
            if (cmp == ( 0)) {
                if (cap_get_capExtraComp(current->cap) != 0) {
                    return current;
                }
                cmp = _compExtra(current, spaceType, paddr, size, badge, i, -1);
            }
            switch (cmp) {
            case (-1):
                next = ((cte_t *)(mdb_node_get_cdtRight(current->cteMDBNode)));
                break;
            case ( 1):
                next = ((cte_t *)(mdb_node_get_cdtLeft(current->cteMDBNode)));
                break;
            case ( 0):
                _fail("Cannot be equal here", "/home/hesham/MSc-York/seL4/seL4test/kernel/src/kernel/cdt.c", 144, __func__);
            }
        } while (next);
    }
    return ((void *)0);
}

cte_t *
cdtFindAtDepth(int spaceType, word_t paddr, unsigned int size, unsigned int badge, unsigned int extra, uint32_t depth)
{
    cte_t *current;
    cte_t *next;

    next = ksRootCTE;
    do {
        current = next;
        switch (_compExtra(current, spaceType, paddr, size, badge, depth, extra)) {
        case (-1):
            next = ((cte_t *)(mdb_node_get_cdtRight(current->cteMDBNode)));
            break;
        case ( 1):
            next = ((cte_t *)(mdb_node_get_cdtLeft(current->cteMDBNode)));
            break;
        case ( 0):
            return current;
        }
    } while (next);
    return ((void *)0);
}

cte_t *
cdtFind(int spaceType, word_t paddr, unsigned int size, unsigned int badge, unsigned int extra, unsigned int depth_bits)
{
    uint32_t i;
    cte_t *ret;
    for (i = 0; i < (1ul<<(depth_bits)); i++) {
        ret = cdtFindAtDepth(spaceType, paddr, size, badge, extra, i);
        if (ret) {
            return ret;
        }
    }
    return ((void *)0);
}

bool_t
cdtIsFinal(cte_t *slot)
{
    cte_t *closest;

    /* For finality testing it is sufficient to check the objects immediately
     * before and after us in cdt ordering. This is because we are only
     * interested in equivalent objects, not whether something is actually
     * a parent or not */
    closest = aaTraverseForward(slot);
    if (closest && sameObjectAs(closest->cap, slot->cap)) {
        return false;
    }
    closest = aaTraverseBackward(slot);
    if (closest && sameObjectAs(closest->cap, slot->cap)) {
        return false;
    }
    return true;
}

cte_t *
cdtFindInRange(int spaceType, word_t addr, unsigned int size)
{
    cte_t *current;
    cte_t *next;
    /* We are searching for a hypothetical node that is at paddr+size */
    next = ksRootCTE;
    do {
        int cmp;
        current = next;
        cmp = _compSpace(current, spaceType, addr + size - 1, 0);
        if (cmp == (-1)) {
            if (cap_get_capSpaceType(current->cap) == spaceType &&
                    (word_t)cap_get_capSpacePtr(current->cap) < addr + size &&
                    (word_t)cap_get_capSpacePtr(current->cap) + cap_get_capSpaceSize(current->cap) > addr) {
                return current;
            }
            next = ((cte_t *)(mdb_node_get_cdtRight(current->cteMDBNode)));
        } else if (cmp == ( 1)) {
            next = ((cte_t *)(mdb_node_get_cdtLeft(current->cteMDBNode)));
        } else {
            do { if (!"Should never actually find this node as it has zero size") break; cputstring("Assertion failed: " "!\"Should never actually find this node as it has zero size\"" "\n"); terminate(3); } while(0);
        }
    } while (next);
    return ((void *)0);
}

static bool_t isCDTParentOf(cte_t *parent, cte_t *child)
{
    word_t badgeA, badgeB;
    /* child must be from the same region */
    if (!sameRegionAs(parent->cap, child->cap)) {
        return false;
    }
    /* check any badge. Badge 0 is parent of another
     * other non zero badge */
    badgeA = cap_get_capBadge(parent->cap);
    badgeB = cap_get_capBadge(child->cap);
    if (badgeA == 0 && badgeB != 0) {
        return true;
    } else if (badgeA != badgeB) {
        return false;
    }
    return true;
}

static cte_t *
_cdtFindBadgedChild(cte_t *parentSlot)
{
    /* We are searching for a hypothetical node that is at
     * identical to us but of strictly greater depth */
    cte_t *current;
    cte_t *largest;
    cte_t *next;
    int spaceType = cap_get_capSpaceType(parentSlot->cap);
    word_t paddr = (word_t)cap_get_capSpacePtr(parentSlot->cap);
    unsigned int size = cap_get_capSpaceSize(parentSlot->cap);
    unsigned int badge = cap_get_capBadge(parentSlot->cap);
    /* We are searching for a hypothetical node in the cdt that is at paddr+size and of zero size */
    next = ksRootCTE;
    largest = ((void *)0);
    do {
        int cmp;
        current = next;
        cmp = _compDepth(current, spaceType, paddr, size, badge, (1ul<<(cte_depth_bits_cap(parentSlot->cap))));
        if (cmp == (-1)) {
            if (!largest || compExtra(current, largest) == ( 1)) {
                largest = current;
            }
            next = ((cte_t *)(mdb_node_get_cdtRight(current->cteMDBNode)));
        } else if (cmp == ( 1)) {
            next = ((cte_t *)(mdb_node_get_cdtLeft(current->cteMDBNode)));
        } else {
            do { if (!"Should never actually find this node as it has zero size") break; cputstring("Assertion failed: " "!\"Should never actually find this node as it has zero size\"" "\n"); terminate(3); } while(0);
        }
    } while (next);
    /* Verify what we found is actually a child */
    if (!largest || compExtra(largest, parentSlot) != ( 1) || !isCDTParentOf(parentSlot, largest)) {
        return ((void *)0);
    }
    return largest;
}

/* Finding a child is complicated because your child may not
 * live directly after you in cdt order. That is, if you take
 * ever node in the tree and squash it into a list, directly
 * after you may be some N number of siblings, then your
 * children. This is why we need to do a creative search
 * where as cdtIsFinal was able to get away with checking
 * neighbouring nodes */
static cte_t *
_cdtFindChild(cte_t *parentSlot)
{
    cte_t *current;
    cte_t *largest;
    cte_t *next;
    int spaceType = cap_get_capSpaceType(parentSlot->cap);
    word_t paddr = (word_t)cap_get_capSpacePtr(parentSlot->cap);
    unsigned int size = cap_get_capSpaceSize(parentSlot->cap);
    /* We are searching for a hypothetical node in the cdt that is at paddr+size and of zero size */
    next = ksRootCTE;
    largest = ((void *)0);
    do {
        int cmp;
        current = next;
        cmp = _compSpace(current, spaceType, paddr + size - 1, 0);
        if (cmp == (-1)) {
            if (!largest || compExtra(current, largest) == ( 1)) {
                largest = current;
            }
            next = ((cte_t *)(mdb_node_get_cdtRight(current->cteMDBNode)));
        } else if (cmp == ( 1)) {
            next = ((cte_t *)(mdb_node_get_cdtLeft(current->cteMDBNode)));
        } else {
            do { if (!"Should never actually find this node as it has zero size") break; cputstring("Assertion failed: " "!\"Should never actually find this node as it has zero size\"" "\n"); terminate(3); } while(0);
        }
    } while (next);
    /* Verify what we found is actually a child */
    if (!largest || compExtra(largest, parentSlot) != ( 1) || !sameRegionAs(parentSlot->cap, largest->cap)) {
        return ((void *)0);
    }
    return largest;
}

cte_t *
cdtFindChild(cte_t *parentSlot)
{
    if (cap_get_capSpaceType(parentSlot->cap) == capSpaceUntypedMemory) {
        /* Find anything in this range that is typed */
        cte_t *result = cdtFindInRange(capSpaceTypedMemory, (word_t)cap_get_capSpacePtr(parentSlot->cap), cap_get_capSpaceSize(parentSlot->cap));
        if (result) {
            return result;
        }
    }
    if (cap_get_capBadge(parentSlot->cap) != 0) {
        /* We are looking for a badged child */
        return _cdtFindBadgedChild(parentSlot);
    } else {
        return _cdtFindChild(parentSlot);
    }
}

static inline void
cdtInsertTree(cte_t *slot)
{
    ksRootCTE = aaInsert(ksRootCTE, slot);
}

void
cdtInsert(cte_t *parentSlot, cte_t *newSlot)
{
    word_t depth;
    do { if (cap_get_capType(newSlot->cap) != cap_null_cap) break; cputstring("Assertion failed: " "cap_get_capType(newSlot->cap) != cap_null_cap" "\n"); terminate(3); } while(0);
    do { if (!parentSlot || cap_get_capType(parentSlot->cap) != cap_null_cap) break; cputstring("Assertion failed: " "!parentSlot || cap_get_capType(parentSlot->cap) != cap_null_cap" "\n"); terminate(3); } while(0);
    if (!parentSlot || (cap_get_capSpaceType(parentSlot->cap) != cap_get_capSpaceType(newSlot->cap))) {
        depth = 0;
    } else {
        depth = mdb_node_get_cdtDepth(parentSlot->cteMDBNode) + 1;
        if (depth == (1ul<<(cte_depth_bits_cap(newSlot->cap)))) {
            depth--;
        }
    }
    newSlot->cteMDBNode = mdb_node_new(0, depth, 0, 0);
    cdtInsertTree(newSlot);
}

void
cdtRemove(cte_t *slot)
{
    do { if (cap_get_capType(slot->cap) != cap_null_cap) break; cputstring("Assertion failed: " "cap_get_capType(slot->cap) != cap_null_cap" "\n"); terminate(3); } while(0);
    ksRootCTE = aaRemove(false, ksRootCTE, slot);
    slot->cteMDBNode = mdb_node_new(0, false, false, 0);
}

void
cdtMove(cte_t *oldSlot, cte_t *newSlot)
{
    do { if (cap_get_capType(oldSlot->cap) != cap_null_cap) break; cputstring("Assertion failed: " "cap_get_capType(oldSlot->cap) != cap_null_cap" "\n"); terminate(3); } while(0);
    do { if (cap_get_capType(newSlot->cap) != cap_null_cap) break; cputstring("Assertion failed: " "cap_get_capType(newSlot->cap) != cap_null_cap" "\n"); terminate(3); } while(0);
    ksRootCTE = aaRemove(false, ksRootCTE, oldSlot);

    newSlot->cteMDBNode = mdb_node_new(0, mdb_node_get_cdtDepth(oldSlot->cteMDBNode), 0, 0);
    oldSlot->cteMDBNode = mdb_node_new(0, 0, 0, 0);

    ksRootCTE = aaInsert(ksRootCTE, newSlot);
}

void
cdtUpdate(cte_t *slot, cap_t newCap)
{
    if (capsEqual(slot->cap, newCap)) {
        slot->cap = newCap;
    } else {
        ksRootCTE = aaRemove(false, ksRootCTE, slot);
        slot->cteMDBNode = mdb_node_new(0, mdb_node_get_cdtDepth(slot->cteMDBNode), 0, 0);
        slot->cap = newCap;
        ksRootCTE = aaInsert(ksRootCTE, slot);
    }
}

void
cdtSwap(cap_t cap1, cte_t *slot1, cap_t cap2, cte_t *slot2)
{
    word_t depth1, depth2;
    do { if (slot1 != slot2) break; cputstring("Assertion failed: " "slot1 != slot2" "\n"); terminate(3); } while(0);
    if (cap_get_capType(slot1->cap) != cap_null_cap) {
        ksRootCTE = aaRemove(false, ksRootCTE, slot1);
    }
    if (cap_get_capType(slot2->cap) != cap_null_cap) {
        ksRootCTE = aaRemove(false, ksRootCTE, slot2);
    }
    depth1 = mdb_node_get_cdtDepth(slot1->cteMDBNode);
    depth2 = mdb_node_get_cdtDepth(slot2->cteMDBNode);
    slot1->cteMDBNode = mdb_node_new(0, depth2, 0, 0);
    slot2->cteMDBNode = mdb_node_new(0, depth1, 0, 0);

    slot1->cap = cap2;
    slot2->cap = cap1;

    if (cap_get_capType(slot1->cap) != cap_null_cap) {
        ksRootCTE = aaInsert(ksRootCTE, slot1);
    }
    if (cap_get_capType(slot2->cap) != cap_null_cap) {
        ksRootCTE = aaInsert(ksRootCTE, slot2);
    }
}

/*****************************************************************************
 * AA Tree implementation
 *****************************************************************************/

/* AA Tree rebalancing functions */
static cte_t *aaRemoveNode(bool_t isSwapped, cte_t *rootSlot);
static cte_t *aaRebalance(cte_t *slot);
static cte_t *aaDecLevel(cte_t *slot);
static cte_t *aaSkew(cte_t *slot);
static cte_t *aaSplit(cte_t *slot);

static cte_t * aaSucc(cte_t *slot)
{
    cte_t *left;

    left = ((cte_t *)(mdb_node_get_cdtLeft(slot->cteMDBNode)));
    while (left) {
        slot = left;
        left = ((cte_t *)(mdb_node_get_cdtLeft(slot->cteMDBNode)));
    }
    return slot;
}

static cte_t * aaPred(cte_t *slot)
{
    cte_t *right;

    right = ((cte_t *)(mdb_node_get_cdtRight(slot->cteMDBNode)));
    while (right) {
        slot = right;
        right = ((cte_t *)(mdb_node_get_cdtRight(slot->cteMDBNode)));
    }
    return slot;
}

static cte_t *aaParent(cte_t *slot)
{
    cte_t *current = ((void *)0);
    cte_t *next;

    next = ksRootCTE;
    while (next != slot) {
        current = next;
        switch (compSlot(current, slot)) {
        case (-1):
            next = ((cte_t *)(mdb_node_get_cdtRight(current->cteMDBNode)));
            break;
        case ( 1):
            next = ((cte_t *)(mdb_node_get_cdtLeft(current->cteMDBNode)));
            break;
        case ( 0):
            return current;
        }
    }
    return current;
}

static cte_t *aaTraverseBackward(cte_t *slot)
{
    cte_t *parent;
    cte_t *left;
    /* Optimistically see if we our predecessor is a child */
    left = ((cte_t *)(mdb_node_get_cdtLeft(slot->cteMDBNode)));
    if (left) {
        return aaPred(left);
    }
    /* We need to find our parent. This is actually hard so we
     * need to find ourselves and perform a trace as we do so */

    /* search upwards until we find an ancestor on a right link,
     * we have then found something before us */
    parent = aaParent(slot);
    while (parent && ((cte_t *)(mdb_node_get_cdtRight(parent->cteMDBNode))) != slot) {
        slot = parent;
        parent = aaParent(parent);
    }
    return parent;
}

static cte_t *aaTraverseForward(cte_t *slot)
{
    cte_t *parent;
    cte_t *right;
    /* Optimistically see if we our successor is a child */
    right = ((cte_t *)(mdb_node_get_cdtRight(slot->cteMDBNode)));
    if (right) {
        return aaSucc(right);
    }
    /* We need to find our parent. This is actually hard so we
     * need to find ourselves and perform a trace as we do so */


    /* search upwards until we find an ancestor on a left link,
     * we have then found something before us */
    parent = aaParent(slot);
    while (parent && ((cte_t *)(mdb_node_get_cdtLeft(parent->cteMDBNode))) != slot) {
        slot = parent;
        parent = aaParent(parent);
    }
    return parent;
}

static inline int
aaLevel(cte_t *slot)
{
    if (!slot) {
        return 0;
    }
    return mdb_node_get_cdtLevel(slot->cteMDBNode);
}

static inline int __attribute__((__const__)) min(int a, int b)
{
    return (a < b) ? a : b;
}

static cte_t *aaInsert(cte_t *rootSlot, cte_t *newSlot)
{
    cte_t *left, *right;

    if (!newSlot) {
        _fail("inserting null CTE", "/home/hesham/MSc-York/seL4/seL4test/kernel/src/kernel/cdt.c", 556, __func__);
    }
    do { if (newSlot != rootSlot) break; cputstring("Assertion failed: " "newSlot != rootSlot" "\n"); terminate(3); } while(0);

    if (!rootSlot) {

        mdb_node_ptr_set_cdtLevel(&newSlot->cteMDBNode, 1);
        return newSlot;

    } else {

        switch (compSlot(newSlot, rootSlot)) {
        case ( 1):
            right = ((cte_t *)(mdb_node_get_cdtRight(rootSlot->cteMDBNode)));
            right = aaInsert(right, newSlot);
            mdb_node_ptr_set_cdtRight(&rootSlot->cteMDBNode, ((unsigned int)(right)));
            break;

        case (-1):
            left = ((cte_t *)(mdb_node_get_cdtLeft(rootSlot->cteMDBNode)));
            left = aaInsert(left, newSlot);
            mdb_node_ptr_set_cdtLeft(&rootSlot->cteMDBNode, ((unsigned int)(left)));
            break;

        default:
            _fail("Inserting duplicate", "/home/hesham/MSc-York/seL4/seL4test/kernel/src/kernel/cdt.c", 581, __func__);
        }

        rootSlot = aaSkew(rootSlot);
        rootSlot = aaSplit(rootSlot);

        return rootSlot;
    }
}

static cte_t *aaRemove(bool_t isSwapped, cte_t *rootSlot, cte_t *targetSlot)
{
    cte_t *left, *right;

    if (!targetSlot) {
        _fail("removing null", "/home/hesham/MSc-York/seL4/seL4test/kernel/src/kernel/cdt.c", 596, __func__);
    }
    if (!rootSlot) {
        _fail("removing from null", "/home/hesham/MSc-York/seL4/seL4test/kernel/src/kernel/cdt.c", 599, __func__);
    }

    switch (compSlot(targetSlot, rootSlot)) {
    case ( 1):
        right = ((cte_t *)(mdb_node_get_cdtRight(rootSlot->cteMDBNode)));
        right = aaRemove(isSwapped, right, targetSlot);
        mdb_node_ptr_set_cdtRight(&rootSlot->cteMDBNode, ((unsigned int)(right)));
        break;
    case (-1):
        left = ((cte_t *)(mdb_node_get_cdtLeft(rootSlot->cteMDBNode)));
        left = aaRemove(isSwapped, left, targetSlot);
        mdb_node_ptr_set_cdtLeft(&rootSlot->cteMDBNode, ((unsigned int)(left)));
        break;
    default:
        rootSlot = aaRemoveNode(isSwapped, rootSlot);
    }
    rootSlot = aaRebalance(rootSlot);
    return rootSlot;
}

/* AA Tree rebalancing functions */

static cte_t *aaRemoveNode(bool_t isSwapped, cte_t *rootSlot)
{
    cte_t *left, *right, *pred, *succ;
    mdb_node_t mdb;

    mdb = rootSlot->cteMDBNode;

    left = ((cte_t *)(mdb_node_get_cdtLeft(mdb)));
    right = ((cte_t *)(mdb_node_get_cdtRight(mdb)));
    if (left) {
        pred = aaPred(left);
        left = aaRemove(true, left, pred);

        mdb_node_ptr_set_cdtLevel(&pred->cteMDBNode, mdb_node_get_cdtLevel(mdb));
        mdb_node_ptr_set_cdtRight(&pred->cteMDBNode, mdb_node_get_cdtRight(mdb));
        mdb_node_ptr_set_cdtLeft(&pred->cteMDBNode, ((unsigned int)(left)));

        return pred;

    } else if (right) {
        succ = aaSucc(right);
        right = aaRemove(true, right, succ);

        mdb_node_ptr_set_cdtLevel(&succ->cteMDBNode, mdb_node_get_cdtLevel(mdb));
        mdb_node_ptr_set_cdtRight(&succ->cteMDBNode, ((unsigned int)(right)));
        mdb_node_ptr_set_cdtLeft(&succ->cteMDBNode, ((unsigned int)(((void *)0))));

        return succ;

    } else {
        return ((void *)0);
    }
}

static cte_t *aaRebalance(cte_t *slot)
{
    cte_t *right, *right_right;

    if (!slot) {
        return ((void *)0);
    }

    slot = aaDecLevel(slot);
    slot = aaSkew(slot);

    right = aaSkew(((cte_t *)(mdb_node_get_cdtRight(slot->cteMDBNode))));
    mdb_node_ptr_set_cdtRight(&slot->cteMDBNode, ((unsigned int)(right)));

    if (right) {
        right_right = aaSkew(((cte_t *)(mdb_node_get_cdtRight(right->cteMDBNode))));
        mdb_node_ptr_set_cdtRight(&right->cteMDBNode, ((unsigned int)(right_right)));
    }

    slot = aaSplit(slot);

    right = aaSplit(((cte_t *)(mdb_node_get_cdtRight(slot->cteMDBNode))));
    mdb_node_ptr_set_cdtRight(&slot->cteMDBNode, ((unsigned int)(right)));

    return slot;
}

static cte_t *aaDecLevel(cte_t *slot)
{
    cte_t *left, *right;
    int should_be;

    if (!slot) {
        return ((void *)0);
    }

    left = ((cte_t *)(mdb_node_get_cdtLeft(slot->cteMDBNode)));
    right = ((cte_t *)(mdb_node_get_cdtRight(slot->cteMDBNode)));

    should_be = min(aaLevel(left), aaLevel(right)) + 1;

    if (should_be < mdb_node_get_cdtLevel(slot->cteMDBNode)) {
        mdb_node_ptr_set_cdtLevel(&slot->cteMDBNode, should_be);

        if (right && should_be < mdb_node_get_cdtLevel(right->cteMDBNode)) {
            mdb_node_ptr_set_cdtLevel(&right->cteMDBNode, should_be);
        }
    }

    return slot;
}

static cte_t *aaSplit(cte_t *slot)
{
    cte_t *right, *right_right;
    int level;

    /*
     *                             |
     *     |                      |R|
     *    |T|->|R|->|X|   =>     /        *   /    /                |T|   |X|
|
     * |A|  |B|               /        *                      |A|   |B|
|
     */

    if (!slot) {
        return ((void *)0);
    }

    right = ((cte_t *)(mdb_node_get_cdtRight(slot->cteMDBNode)));
    if (right) {

        right_right = ((cte_t *)(mdb_node_get_cdtRight(right->cteMDBNode)));
        if (right_right && mdb_node_get_cdtLevel(slot->cteMDBNode)
                == mdb_node_get_cdtLevel(right_right->cteMDBNode)) {

            mdb_node_ptr_set_cdtRight(&slot->cteMDBNode,
                                      mdb_node_get_cdtLeft(right->cteMDBNode));

            level = mdb_node_get_cdtLevel(right->cteMDBNode) + 1;
            mdb_node_ptr_set_cdtLevel(&right->cteMDBNode, level);

            /* check level dosn't overflow */
            do { if (mdb_node_get_cdtLevel(right->cteMDBNode) == level) break; cputstring("Assertion failed: " "mdb_node_get_cdtLevel(right->cteMDBNode) == level" "\n"); terminate(3); } while(0);

            mdb_node_ptr_set_cdtLeft(&right->cteMDBNode, ((unsigned int)(slot)));

            return right;
        }
    }

    return slot;
}

static cte_t *aaSkew(cte_t *slot)
{
    cte_t *left;

    /*
     *          |              |
     *    |L|<-|T|     =>     |L|->|T|
     *   /   \    \          /    /        * |A|   |B|  |R|      |A|  |B|   |R|
|
     */

    if (!slot) {
        return ((void *)0);
    }

    left = ((cte_t *)(mdb_node_get_cdtLeft(slot->cteMDBNode)));
    if (left && mdb_node_get_cdtLevel(left->cteMDBNode)
            == mdb_node_get_cdtLevel(slot->cteMDBNode)) {

        mdb_node_ptr_set_cdtLeft(&slot->cteMDBNode,
                                 mdb_node_get_cdtRight(left->cteMDBNode));
        mdb_node_ptr_set_cdtRight(&left->cteMDBNode, ((unsigned int)(slot)));

        return left;
    }

    return slot;
}

/*****************************************************************************
 * AA Tree Debug Functions
 *****************************************************************************/

static char *
printCap(cap_t cap)
{
    switch (cap_get_capType(cap)) {
    case cap_null_cap:
        return "NullCap";
    case cap_untyped_cap:
        return "Untyped";
    case cap_endpoint_cap:
        return "Endpoint";
    case cap_async_endpoint_cap:
        return "AsyncEndpoint";
    case cap_reply_cap:
        return "Reply";
    case cap_cnode_cap:
        return "CNode";
    case cap_thread_cap:
        return "Thread";
    default:
        return "?";
    }
}

void
printCTE(char *msg, cte_t *cte)
{
    (void)printCap;
    if (!cte) {
        printf("%s [NULL]@0x%x", msg, cte);
    } else {
        printf("%s [%d %s(%d) { addr = 0x%x, size = 0x%x } left: 0x%x right: 0x%x badge: %d depth: %d extra: 0x%x]@0x%x\n",
               msg,
               mdb_node_get_cdtLevel(cte->cteMDBNode),
               printCap(cte->cap),
               cap_get_capType(cte->cap),
               cap_get_capType(cte->cap) == cap_null_cap ? 0 : (word_t)cap_get_capSpacePtr(cte->cap),
               cap_get_capType(cte->cap) == cap_null_cap ? 0 : cap_get_capSpaceSize(cte->cap),
               mdb_node_get_cdtLeft(cte->cteMDBNode),
               mdb_node_get_cdtRight(cte->cteMDBNode),
               cap_get_capBadge(cte->cap),
               mdb_node_get_cdtDepth(cte->cteMDBNode),
               cap_get_capType(cte->cap) == cap_null_cap ? 0 : cap_get_capExtraComp(cte->cap),
               cte);
    }
}
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/kernel/cspace.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 12 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/kernel/cspace.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 13 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/kernel/cspace.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/api/failures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 14 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/kernel/cspace.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/kernel/thread.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/kernel/cspace.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/kernel/cspace.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/kernel/cspace.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/model/statedata.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 17 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/kernel/cspace.c" 2


lookupCap_ret_t
lookupCap(tcb_t *thread, cptr_t cPtr)
{
    lookupSlot_raw_ret_t lu_ret;
    lookupCap_ret_t ret;

    lu_ret = lookupSlot(thread, cPtr);
    if (__builtin_expect(!!(lu_ret.status != EXCEPTION_NONE), 0)) {
        ret.status = lu_ret.status;
        ret.cap = cap_null_cap_new();
        return ret;
    }

    ret.status = EXCEPTION_NONE;
    ret.cap = lu_ret.slot->cap;
    return ret;
}

lookupCapAndSlot_ret_t
lookupCapAndSlot(tcb_t *thread, cptr_t cPtr)
{
    lookupSlot_raw_ret_t lu_ret;
    lookupCapAndSlot_ret_t ret;

    lu_ret = lookupSlot(thread, cPtr);
    if (__builtin_expect(!!(lu_ret.status != EXCEPTION_NONE), 0)) {
        ret.status = lu_ret.status;
        ret.slot = ((void *)0);
        ret.cap = cap_null_cap_new();
        return ret;
    }

    ret.status = EXCEPTION_NONE;
    ret.slot = lu_ret.slot;
    ret.cap = lu_ret.slot->cap;
    return ret;
}

lookupSlot_raw_ret_t
lookupSlot(tcb_t *thread, cptr_t capptr)
{
    cap_t threadRoot;
    resolveAddressBits_ret_t res_ret;
    lookupSlot_raw_ret_t ret;

    threadRoot = (((cte_t *)((unsigned int)(thread)&~((1ul<<(((4 + 4) + 1)))-1ul)))+(tcbCTable))->cap;
    res_ret = resolveAddressBits(threadRoot, capptr, 32);

    ret.status = res_ret.status;
    ret.slot = res_ret.slot;
    return ret;
}

lookupSlot_ret_t
lookupSlotForCNodeOp(bool_t isSource, cap_t root, cptr_t capptr,
                     unsigned int depth)
{
    resolveAddressBits_ret_t res_ret;
    lookupSlot_ret_t ret;

    ret.slot = ((void *)0);

    if (__builtin_expect(!!(cap_get_capType(root) != cap_cnode_cap), 0)) {
        current_syscall_error.type = seL4_FailedLookup;
        current_syscall_error.failedLookupWasSource = isSource;
        current_lookup_fault = lookup_fault_invalid_root_new();
        ret.status = EXCEPTION_SYSCALL_ERROR;
        return ret;
    }

    if (__builtin_expect(!!(depth < 1 || depth > 32), 0)) {
        current_syscall_error.type = seL4_RangeError;
        current_syscall_error.rangeErrorMin = 1;
        current_syscall_error.rangeErrorMax = 32;
        ret.status = EXCEPTION_SYSCALL_ERROR;
        return ret;
    }

    res_ret = resolveAddressBits(root, capptr, depth);
    if (__builtin_expect(!!(res_ret.status != EXCEPTION_NONE), 0)) {
        current_syscall_error.type = seL4_FailedLookup;
        current_syscall_error.failedLookupWasSource = isSource;
        /* current_lookup_fault will have been set by resolveAddressBits */
        ret.status = EXCEPTION_SYSCALL_ERROR;
        return ret;
    }

    if (__builtin_expect(!!(res_ret.bitsRemaining != 0), 0)) {
        current_syscall_error.type = seL4_FailedLookup;
        current_syscall_error.failedLookupWasSource = isSource;
        current_lookup_fault =
            lookup_fault_depth_mismatch_new(0, res_ret.bitsRemaining);
        ret.status = EXCEPTION_SYSCALL_ERROR;
        return ret;
    }

    ret.slot = res_ret.slot;
    ret.status = EXCEPTION_NONE;
    return ret;
}

lookupSlot_ret_t
lookupSourceSlot(cap_t root, cptr_t capptr, unsigned int depth)
{
    return lookupSlotForCNodeOp(true, root, capptr, depth);
}

lookupSlot_ret_t
lookupTargetSlot(cap_t root, cptr_t capptr, unsigned int depth)
{
    return lookupSlotForCNodeOp(false, root, capptr, depth);
}

lookupSlot_ret_t
lookupPivotSlot(cap_t root, cptr_t capptr, unsigned int depth)
{
    return lookupSlotForCNodeOp(true, root, capptr, depth);
}

resolveAddressBits_ret_t
resolveAddressBits(cap_t nodeCap, cptr_t capptr, unsigned int n_bits)
{
    resolveAddressBits_ret_t ret;
    unsigned int radixBits, guardBits, levelBits, offset;
    cte_t *slot;

    ret.bitsRemaining = n_bits;
    ret.slot = ((void *)0);

    if (__builtin_expect(!!(cap_get_capType(nodeCap) != cap_cnode_cap), 0)) {
        current_lookup_fault = lookup_fault_invalid_root_new();
        ret.status = EXCEPTION_LOOKUP_FAULT;
        return ret;
    }

    guardBits = cap_cnode_cap_get_capCNodeGuardSize(nodeCap);
    if (__builtin_expect(!!(guardBits > n_bits), 0)) {
        current_lookup_fault =
            lookup_fault_guard_mismatch_new(0, n_bits, guardBits);
        ret.status = EXCEPTION_LOOKUP_FAULT;
        return ret;
    }
    n_bits -= guardBits;

    while (1) {
        radixBits = cap_cnode_cap_get_capCNodeRadix(nodeCap);
        levelBits = radixBits;

        /* Haskell error: "All CNodes must resolve bits" */
        do { if (levelBits != 0) break; cputstring("Assertion failed: " "levelBits != 0" "\n"); terminate(3); } while(0);

        if (__builtin_expect(!!(levelBits > n_bits), 0)) {
            current_lookup_fault =
                lookup_fault_depth_mismatch_new(levelBits, n_bits);
            ret.status = EXCEPTION_LOOKUP_FAULT;
            return ret;
        }

        offset = (capptr >> (n_bits - levelBits)) & ((1ul<<(radixBits))-1ul);
        slot = ((cte_t *)(cap_cnode_cap_get_capCNodePtr(nodeCap))) + offset;

        if (__builtin_expect(!!(n_bits <= levelBits), 1)) {
            ret.status = EXCEPTION_NONE;
            ret.slot = slot;
            ret.bitsRemaining = 0;
            return ret;
        }

        n_bits -= levelBits;
        nodeCap = slot->cap;

        if (__builtin_expect(!!(cap_get_capType(nodeCap) != cap_cnode_cap), 0)) {
            ret.status = EXCEPTION_NONE;
            ret.slot = slot;
            ret.bitsRemaining = n_bits;
            return ret;
        }
    }

    ret.status = EXCEPTION_NONE;
    return ret;
}
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/kernel/faulthandler.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/api/failures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 12 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/kernel/faulthandler.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/kernel/cspace.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 13 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/kernel/faulthandler.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/kernel/faulthandler.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 14 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/kernel/faulthandler.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/kernel/thread.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/kernel/faulthandler.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/machine/io.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/kernel/faulthandler.c" 2


void
handleFault(tcb_t *tptr)
{
    exception_t status;
    fault_t fault = current_fault;

    status = sendFaultIPC(tptr);
    if (status != EXCEPTION_NONE) {
        handleDoubleFault(tptr, fault);
    }
}

exception_t
sendFaultIPC(tcb_t *tptr)
{
    cptr_t handlerCPtr;
    cap_t handlerCap;
    lookupCap_ret_t lu_ret;
    lookup_fault_t original_lookup_fault;

    original_lookup_fault = current_lookup_fault;

    handlerCPtr = tptr->tcbFaultHandler;
    lu_ret = lookupCap(tptr, handlerCPtr);
    if (lu_ret.status != EXCEPTION_NONE) {
        current_fault = fault_cap_fault_new(handlerCPtr, false);
        return EXCEPTION_FAULT;
    }
    handlerCap = lu_ret.cap;

    if (cap_get_capType(handlerCap) == cap_endpoint_cap &&
            cap_endpoint_cap_get_capCanSend(handlerCap) &&
            cap_endpoint_cap_get_capCanGrant(handlerCap)) {
        tptr->tcbFault = current_fault;
        if (fault_get_faultType(current_fault) == fault_cap_fault) {
            tptr->tcbLookupFailure = original_lookup_fault;
        }
        sendIPC(true, false,
                cap_endpoint_cap_get_capEPBadge(handlerCap),
                true, tptr,
                ((endpoint_t *)(cap_endpoint_cap_get_capEPPtr(handlerCap))));

        return EXCEPTION_NONE;
    } else {
        current_fault = fault_cap_fault_new(handlerCPtr, false);
        current_lookup_fault = lookup_fault_missing_capability_new(0);

        return EXCEPTION_FAULT;
    }
}


static void
print_fault(fault_t f)
{
    switch (fault_get_faultType(f)) {
    case fault_null_fault:
        printf("null fault");
        break;
    case fault_cap_fault:
        printf("cap fault in %s phase at address 0x%x",
               fault_cap_fault_get_inReceivePhase(f) ? "receive" : "send",
               (unsigned int)fault_cap_fault_get_address(f));
        break;
    case fault_vm_fault:
        printf("vm fault on %s at address 0x%x with status 0x%x",
               fault_vm_fault_get_instructionFault(f) ? "code" : "data",
               (unsigned int)fault_vm_fault_get_address(f),
               (unsigned int)fault_vm_fault_get_FSR(f));
        break;
    case fault_unknown_syscall:
        printf("unknown syscall 0x%x",
               (unsigned int)fault_unknown_syscall_get_syscallNumber(f));
        break;
    case fault_user_exception:
        printf("user exception 0x%x code 0x%x",
               (unsigned int)fault_user_exception_get_number(f),
               (unsigned int)fault_user_exception_get_code(f));
        break;
    default:
        printf("unknown fault");
        break;
    }
}


/* The second fault, ex2, is stored in the global current_fault */
void
handleDoubleFault(tcb_t *tptr, fault_t ex1)
{

    fault_t ex2 = current_fault;
    printf("Caught ");
    print_fault(ex2);
    printf("\nwhile trying to handle:\n");
    print_fault(ex1);
    printf("\nin thread 0x%x ", (unsigned int)tptr);
    printf("at address 0x%x\n", (unsigned int)getRestartPC(tptr));


    setThreadState(tptr, ThreadState_Inactive);
}
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/kernel/thread.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/config.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 12 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/kernel/thread.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 13 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/kernel/thread.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/util.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 14 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/kernel/thread.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/api/faults.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/kernel/thread.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/api/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/kernel/thread.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/kernel/cspace.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 17 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/kernel/thread.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/kernel/thread.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 18 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/kernel/thread.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/kernel/vspace.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 19 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/kernel/thread.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/model/statedata.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 20 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/kernel/thread.c" 2

# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/kernel/thread.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 22 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/kernel/thread.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/machine/registerset.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 23 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/kernel/thread.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/linker.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 24 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/kernel/thread.c" 2

static message_info_t
transferCaps(message_info_t info, extra_caps_t caps,
             endpoint_t *endpoint, tcb_t *receiver,
             word_t *receiveBuffer, bool_t diminish);

static inline bool_t __attribute__((__pure__))
isBlocked(const tcb_t *thread)
{
    switch (thread_state_get_tsType(thread->tcbState)) {
    case ThreadState_Inactive:
    case ThreadState_BlockedOnReceive:
    case ThreadState_BlockedOnSend:
    case ThreadState_BlockedOnAsyncEvent:
    case ThreadState_BlockedOnReply:
        return true;

    default:
        return false;
    }
}

static inline bool_t __attribute__((__pure__))
isRunnable(const tcb_t *thread)
{
    switch (thread_state_get_tsType(thread->tcbState)) {
    case ThreadState_Running:
    case ThreadState_RunningVM:
    case ThreadState_Restart:
        return true;

    default:
        return false;
    }
}

__attribute__((__section__(".boot.text"))) void
configureIdleThread(tcb_t *tcb)
{
    Arch_configureIdleThread(tcb);
    setThreadState(tcb, ThreadState_IdleThreadState);
}

void
activateThread(void)
{
    switch (thread_state_get_tsType(ksCurThread->tcbState)) {
    case ThreadState_Running:
    case ThreadState_RunningVM:
        break;

    case ThreadState_Restart: {
        word_t pc;

        pc = getRestartPC(ksCurThread);
        setNextPC(ksCurThread, pc);
        setThreadState(ksCurThread, ThreadState_Running);
        break;
    }

    case ThreadState_IdleThreadState:
        Arch_activateIdleThread(ksCurThread);
        break;

    default:
        _fail("Current thread is blocked", "/home/hesham/MSc-York/seL4/seL4test/kernel/src/kernel/thread.c", 89, __func__);
    }
}

void
suspend(tcb_t *target)
{
    ipcCancel(target);
    /*if (cap_get_capType(TCB_PTR_CTE_PTR(target, tcbCaller)->cap) == cap_reply_cap)*/
    {
        deleteCallerCap(target);
    }
    setThreadState(target, ThreadState_Inactive);
    tcbSchedDequeue(target);
}

void
restart(tcb_t *target)
{
    if (isBlocked(target)) {
        ipcCancel(target);
        setupReplyMaster(target);
        setThreadState(target, ThreadState_Restart);
        tcbSchedEnqueue(target);
        switchIfRequiredTo(target);
    }
}

void
doIPCTransfer(tcb_t *sender, endpoint_t *endpoint, word_t badge,
              bool_t grant, tcb_t *receiver, bool_t diminish)
{
    void *receiveBuffer, *sendBuffer;

    receiveBuffer = lookupIPCBuffer(true, receiver);

    if (__builtin_expect(!!(!fault_get_faultType(sender->tcbFault) != fault_null_fault), 1)) {
        sendBuffer = lookupIPCBuffer(false, sender);
        doNormalTransfer(sender, sendBuffer, endpoint, badge, grant,
                         receiver, receiveBuffer, diminish);
    } else {
        doFaultTransfer(badge, sender, receiver, receiveBuffer);
    }
}

void
doReplyTransfer(tcb_t *sender, tcb_t *receiver, cte_t *slot)
{
    do { if (thread_state_get_tsType(receiver->tcbState) == ThreadState_BlockedOnReply) break; cputstring("Assertion failed: " "thread_state_get_tsType(receiver->tcbState) == ThreadState_BlockedOnReply" "\n"); terminate(3); } while(0)
                                      ;

    if (__builtin_expect(!!(fault_get_faultType(receiver->tcbFault) == fault_null_fault), 1)) {
        doIPCTransfer(sender, ((void *)0), 0, true, receiver, false);
        setThreadState(receiver, ThreadState_Running);
        attemptSwitchTo(receiver);
    } else {
        bool_t restart;

        restart = handleFaultReply(receiver, sender);
        fault_null_fault_ptr_new(&receiver->tcbFault);
        if (restart) {
            setThreadState(receiver, ThreadState_Restart);
            attemptSwitchTo(receiver);
        } else {
            setThreadState(receiver, ThreadState_Inactive);
        }
    }
    if (cap_reply_cap_get_capInCDT(slot->cap)) {
        cte_t *replySlot = (((cte_t *)((unsigned int)(receiver)&~((1ul<<(((4 + 4) + 1)))-1ul)))+(tcbReply));
        do { if (cap_get_capType(replySlot->cap) == cap_reply_cap) break; cputstring("Assertion failed: " "cap_get_capType(replySlot->cap) == cap_reply_cap" "\n"); terminate(3); } while(0);
        do { if (cap_reply_cap_get_capInCDT(replySlot->cap)) break; cputstring("Assertion failed: " "cap_reply_cap_get_capInCDT(replySlot->cap)" "\n"); terminate(3); } while(0);
        cdtRemove(replySlot);
        cdtRemove(slot);
        slot->cap = cap_null_cap_new();
        replySlot->cap = cap_reply_cap_new(false, true, ((unsigned int) (((void *)0))));
    } else {
        deleteCallerCap(sender);
    }
}

void
doNormalTransfer(tcb_t *sender, word_t *sendBuffer, endpoint_t *endpoint,
                 word_t badge, bool_t canGrant, tcb_t *receiver,
                 word_t *receiveBuffer, bool_t diminish)
{
    unsigned int msgTransferred;
    message_info_t tag;
    exception_t status;
    extra_caps_t caps;

    tag = messageInfoFromWord(getRegister(sender, msgInfoRegister));

    if (canGrant) {
        status = lookupExtraCaps(sender, sendBuffer, tag);
        caps = current_extra_caps;
        if (__builtin_expect(!!(status != EXCEPTION_NONE), 0)) {
            caps.excaprefs[0] = ((void *)0);
        }
    } else {
        caps = current_extra_caps;
        caps.excaprefs[0] = ((void *)0);
    }

    msgTransferred = copyMRs(sender, sendBuffer, receiver, receiveBuffer,
                             message_info_get_msgLength(tag));

    tag = transferCaps(tag, caps, endpoint, receiver, receiveBuffer, diminish);

    tag = message_info_set_msgLength(tag, msgTransferred);
    setRegister(receiver, msgInfoRegister, wordFromMessageInfo(tag));
    setRegister(receiver, badgeRegister, badge);
}

void
doFaultTransfer(word_t badge, tcb_t *sender, tcb_t *receiver,
                word_t *receiverIPCBuffer)
{
    unsigned int sent;
    message_info_t msgInfo;

    sent = setMRs_fault(sender, receiver, receiverIPCBuffer);
    msgInfo = message_info_new(
                  fault_get_faultType(sender->tcbFault), 0, 0, sent);
    setRegister(receiver, msgInfoRegister, wordFromMessageInfo(msgInfo));
    setRegister(receiver, badgeRegister, badge);
}

/* Like getReceiveSlots, this is specialised for single-cap transfer. */
static message_info_t
transferCaps(message_info_t info, extra_caps_t caps,
             endpoint_t *endpoint, tcb_t *receiver,
             word_t *receiveBuffer, bool_t diminish)
{
    unsigned int i;
    cte_t* destSlot;

    info = message_info_set_msgExtraCaps(info, 0);
    info = message_info_set_msgCapsUnwrapped(info, 0);

    if (__builtin_expect(!!(!caps.excaprefs[0] || !receiveBuffer), 1)) {
        return info;
    }

    destSlot = getReceiveSlots(receiver, receiveBuffer);

    for (i = 0; i < ((1ul<<(seL4_MsgExtraCapBits))-1) && caps.excaprefs[i] != ((void *)0); i++) {
        cte_t *slot = caps.excaprefs[i];
        cap_t cap = slot->cap;

        if (cap_get_capType(cap) == cap_endpoint_cap &&
                ((endpoint_t *)(cap_endpoint_cap_get_capEPPtr(cap))) == endpoint) {
            /* If this is a cap to the endpoint on which the message was sent,
             * only transfer the badge, not the cap. */
            setExtraBadge(receiveBuffer,
                          cap_endpoint_cap_get_capEPBadge(cap), i);

            info = message_info_set_msgCapsUnwrapped(info,
                                                     message_info_get_msgCapsUnwrapped(info) | (1 << i));

        } else {
            deriveCap_ret_t dc_ret;

            if (!destSlot) {
                break;
            }

            if (diminish) {
                dc_ret = deriveCap(slot, maskCapRights(cap_rights_new(true, true, false), cap));
            } else {
                dc_ret = deriveCap(slot, cap);
            }

            if (dc_ret.status != EXCEPTION_NONE) {
                break;
            }
            if (cap_get_capType(dc_ret.cap) == cap_null_cap) {
                break;
            }

            cteInsert(dc_ret.cap, slot, destSlot);

            destSlot = ((void *)0);
        }
    }

    return message_info_set_msgExtraCaps(info, i);
}

void doPollFailedTransfer(tcb_t *thread)
{
    /* Set the badge register to 0 to indicate there was no message */
    setRegister(thread, badgeRegister, 0);
}

static void
nextDomain(void)
{
    ksDomScheduleIdx++;
    if (ksDomScheduleIdx >= ksDomScheduleLength) {
        ksDomScheduleIdx = 0;
    }
    ksWorkUnitsCompleted = 0;
    ksCurDomain = ksDomSchedule[ksDomScheduleIdx].domain;
    ksDomainTime = ksDomSchedule[ksDomScheduleIdx].length;
}

void
schedule(void)
{
    word_t action;

    action = (word_t)ksSchedulerAction;
    if (action == (word_t)((tcb_t*)~0)) {
        if (isRunnable(ksCurThread)) {
            tcbSchedEnqueue(ksCurThread);
        }
        if (1 > 1 && ksDomainTime == 0) {
            nextDomain();
        }
        chooseThread();
        ksSchedulerAction = ((tcb_t*)0);
    } else if (action != (word_t)((tcb_t*)0)) {
        if (isRunnable(ksCurThread)) {
            tcbSchedEnqueue(ksCurThread);
        }
        /* SwitchToThread */
        switchToThread(ksSchedulerAction);
        ksSchedulerAction = ((tcb_t*)0);
    }
}

void
chooseThread(void)
{
    word_t prio;
    word_t dom;
    tcb_t *thread;

    if (1 > 1) {
        dom = ksCurDomain;
    } else {
        dom = 0;
    }

    if (__builtin_expect(!!(ksReadyQueuesL1Bitmap[dom]), 1)) {
        uint32_t l1index = (32 - 1) - __builtin_clz(ksReadyQueuesL1Bitmap[dom]);
        uint32_t l2index = (32 - 1) - __builtin_clz(ksReadyQueuesL2Bitmap[dom][l1index]);
        prio = l1index_to_prio(l1index) | l2index;
        thread = ksReadyQueues[ready_queues_index(dom, prio)].head;
        do { if (thread) break; cputstring("Assertion failed: " "thread" "\n"); terminate(3); } while(0);
        do { if (isRunnable(thread)) break; cputstring("Assertion failed: " "isRunnable(thread)" "\n"); terminate(3); } while(0);
        switchToThread(thread);
        return;
    }

    switchToIdleThread();

}

void
switchToThread(tcb_t *thread)
{
    Arch_switchToThread(thread);
    tcbSchedDequeue(thread);
    ksCurThread = thread;
}

void
switchToIdleThread(void)
{
    Arch_switchToIdleThread();
    ksCurThread = ksIdleThread;
}

void
setDomain(tcb_t *tptr, dom_t dom)
{
    tcbSchedDequeue(tptr);
    tptr->tcbDomain = dom;
    if (isRunnable(tptr)) {
        tcbSchedEnqueue(tptr);
    }
    if (tptr == ksCurThread) {
        rescheduleRequired();
    }
}

void
setPriority(tcb_t *tptr, prio_t prio)
{
    tcbSchedDequeue(tptr);
    tptr->tcbPriority = prio;
    if (isRunnable(tptr)) {
        tcbSchedEnqueue(tptr);
    }
    if (tptr == ksCurThread) {
        rescheduleRequired();
    }
}

static void
possibleSwitchTo(tcb_t* target, bool_t onSamePriority)
{
    prio_t curPrio, targetPrio;
    tcb_t *action;

    curPrio = ksCurThread->tcbPriority;
    targetPrio = target->tcbPriority;
    action = ksSchedulerAction;

    if (1 > 1) {
        dom_t curDom = ksCurDomain;
        dom_t targetDom = target->tcbDomain;

        if (targetDom != curDom) {
            tcbSchedEnqueue(target);
        }
    } else {
        if ((targetPrio > curPrio || (targetPrio == curPrio && onSamePriority))
                && action == ((tcb_t*)0)) {
            ksSchedulerAction = target;
        } else {
            tcbSchedEnqueue(target);
        }
        if (action != ((tcb_t*)0)
                && action != ((tcb_t*)~0)) {
            rescheduleRequired();
        }
    }
}

void
attemptSwitchTo(tcb_t* target)
{
    possibleSwitchTo(target, true);
}

void
switchIfRequiredTo(tcb_t* target)
{
    possibleSwitchTo(target, false);
}

void
setThreadState(tcb_t *tptr, _thread_state_t ts)
{
    thread_state_ptr_set_tsType(&tptr->tcbState, ts);
    scheduleTCB(tptr);
}

void
scheduleTCB(tcb_t *tptr)
{
    if (tptr == ksCurThread &&
            ksSchedulerAction == ((tcb_t*)0) &&
            !isRunnable(tptr)) {
        rescheduleRequired();
    }
}

void
timerTick(void)
{
    if (__builtin_expect(!!(isRunnable(ksCurThread)), 1)) {
        if (ksCurThread->tcbTimeSlice > 1) {
            ksCurThread->tcbTimeSlice--;
        } else {
            ksCurThread->tcbTimeSlice = 1;
            tcbSchedAppend(ksCurThread);
            rescheduleRequired();
        }
    }

    if (1 > 1) {
        ksDomainTime--;
        if (ksDomainTime == 0) {
            rescheduleRequired();
        }
    }
}

void
rescheduleRequired(void)
{
    if (ksSchedulerAction != ((tcb_t*)0)
            && ksSchedulerAction != ((tcb_t*)~0)) {
        tcbSchedEnqueue(ksSchedulerAction);
    }
    ksSchedulerAction = ((tcb_t*)~0);
}
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/machine/io.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/stdarg.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */







typedef __builtin_va_list va_list;
# 12 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/machine/io.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/machine/io.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 13 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/machine/io.c" 2



static unsigned int
print_string(const char *s)
{
    unsigned int n;

    for (n = 0; *s; s++, n++) {
        qemu_uart_putchar(*s);
    }

    return n;
}

static unsigned long
xdiv(unsigned long x, unsigned int denom)
{
    switch (denom) {
    case 16:
        return x / 16;
    case 10:
        return x / 10;
    default:
        return 0;
    }
}

static unsigned long
xmod(unsigned long x, unsigned int denom)
{
    switch (denom) {
    case 16:
        return x % 16;
    case 10:
        return x % 10;
    default:
        return 0;
    }
}

unsigned int
print_unsigned_long(unsigned long x, unsigned int ui_base)
{
    char out[11];
    unsigned int i, j;
    unsigned int d;

    /*
     * Only base 10 and 16 supported for now. We want to avoid invoking the
     * compiler's support libraries through doing arbitrary divisions.
     */
    if (ui_base != 10 && ui_base != 16) {
        return 0;
    }

    if (x == 0) {
        qemu_uart_putchar('0');
        return 1;
    }

    for (i = 0; x; x = xdiv(x, ui_base), i++) {
        d = xmod(x, ui_base);

        if (d >= 10) {
            out[i] = 'a' + d - 10;
        } else {
            out[i] = '0' + d;
        }
    }

    for (j = i; j > 0; j--) {
        qemu_uart_putchar(out[j - 1]);
    }

    return i;
}


static unsigned int
print_unsigned_long_long(unsigned long long x, unsigned int ui_base)
{
    unsigned long upper, lower;
    unsigned int n = 0;
    unsigned int mask = 0xF0000000u;

    /* only implemented for hex, decimal is harder without 64 bit division */
    if (ui_base != 16) {
        return 0;
    }

    /* we can't do 64 bit division so break it up into two hex numbers */
    upper = (unsigned long) (x >> 32llu);
    lower = (unsigned long) x;

    /* print first 32 bits if they exist */
    if (upper > 0) {
        n += print_unsigned_long(upper, ui_base);

        /* print leading 0s */
        while (!(mask & lower)) {
            qemu_uart_putchar('0');
            n++;
            mask = mask >> 4;
        }
    }

    /* print last 32 bits */
    n += print_unsigned_long(lower, ui_base);

    return n;
}


static int
vprintf(const char *format, va_list ap)
{
    unsigned int n;
    unsigned int formatting;

    if (!format) {
        return 0;
    }

    n = 0;
    formatting = 0;
    while (*format) {
        if (formatting) {
            switch (*format) {
            case '%':
                qemu_uart_putchar('%');
                n++;
                format++;
                break;

            case 'd': {
                int x = __builtin_va_arg(ap,int);

                if (x < 0) {
                    qemu_uart_putchar('-');
                    n++;
                    x = -x;
                }

                n += print_unsigned_long((unsigned long)x, 10);
                format++;
                break;
            }

            case 'u':
                n += print_unsigned_long(__builtin_va_arg(ap,unsigned long), 10);
                format++;
                break;

            case 'x':
                n += print_unsigned_long(__builtin_va_arg(ap,unsigned long), 16);
                format++;
                break;

            case 'p': {
                unsigned long p = __builtin_va_arg(ap,unsigned long);
                if (p == 0) {
                    n += print_string("(nil)");
                } else {
                    n += print_string("0x");
                    n += print_unsigned_long(p, 16);
                }
                format++;
                break;
            }

            case 's':
                n += print_string(__builtin_va_arg(ap,char *));
                format++;
                break;

            case 'l':
                if (*(format + 1) == 'l' && *(format + 2) == 'x') {
                    uint64_t arg = __builtin_va_arg(ap,unsigned long long);
                    n += print_unsigned_long_long(arg, 16);
                }
                format += 3;
                break;
            default:
                format++;
                break;
            }

            formatting = 0;
        } else {
            switch (*format) {
            case '%':
                formatting = 1;
                format++;
                break;

            default:
                qemu_uart_putchar(*format);
                n++;
                format++;
                break;
            }
        }
    }

    return n;
}

unsigned int
printf(const char *format, ...)
{
    va_list args;
    unsigned int i;

    __builtin_va_start(args,format);
    i = vprintf(format, args);
    __builtin_va_end(args);
    return i;
}

unsigned int puts(const char *s)
{
    for (; *s; s++) {
        qemu_uart_putchar(*s);
    }
    qemu_uart_putchar('\n');
    return 0;
}
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/model/preemption.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/api/failures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 12 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/model/preemption.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/model/preemption.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 13 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/model/preemption.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/model/statedata.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 14 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/model/preemption.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/plat/qemu_riscv/plat/machine/hardware.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/model/preemption.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/config.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/model/preemption.c" 2

/*
 * Possibly preempt the current thread to allow an interrupt to be handled.
 */
exception_t
preemptionPoint(void)
{
    /* Record that we have performed some work. */
    ksWorkUnitsCompleted++;

    /*
     * If we have performed a non-trivial amount of work since last time we
     * checked for preemption, and there is an interrupt pending, handle the
     * interrupt.
     *
     * We avoid checking for pending IRQs every call, as our callers tend to
     * call us in a tight loop and checking for pending IRQs can be quite slow.
     */
    if (ksWorkUnitsCompleted >= 100) {
        ksWorkUnitsCompleted = 0;
        if (isIRQPending()) {
            return EXCEPTION_PREEMPTED;
        }
    }

    return EXCEPTION_NONE;
}
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/model/statedata.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 12 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/model/statedata.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/plat/qemu_riscv/plat/machine.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 13 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/model/statedata.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/model/statedata.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 14 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/model/statedata.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/structures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/model/statedata.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/tcb.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/model/statedata.c" 2

/* Pointer to the head of the scheduler queue for each priority */
tcb_queue_t ksReadyQueues[(1 * 256)];
word_t ksReadyQueuesL1Bitmap[1];
word_t ksReadyQueuesL2Bitmap[1][(256 / 32) + 1];
typedef int __assert_failed_ksReadyQueuesL1BitmapBigEnough[((256 / 32) <= 32) ? 1 : -1];;

/* Current thread TCB pointer */
tcb_t *ksCurThread;

/* Idle thread TCB pointer */
tcb_t *ksIdleThread;

/* Values of 0 and ~0 encode ResumeCurrentThread and ChooseNewThread
 * respectively; other values encode SwitchToThread and must be valid
 * tcb pointers */
tcb_t *ksSchedulerAction;

/* Units of work we have completed since the last time we checked for
 * pending interrupts */
word_t ksWorkUnitsCompleted;

/* Root of the cap derivation tree structure */
cte_t *ksRootCTE;

/* CNode containing interrupt handler endpoints */
irq_state_t intStateIRQTable[maxIRQ + 1];
cte_t *intStateIRQNode;

/* Currently active domain */
dom_t ksCurDomain;

/* Domain timeslice remaining */
word_t ksDomainTime;

/* An index into ksDomSchedule for active domain and length. */
uint32_t ksDomScheduleIdx;
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/asyncendpoint.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/assert.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 12 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/asyncendpoint.c" 2

# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 14 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/asyncendpoint.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/kernel/thread.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/asyncendpoint.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/structures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/asyncendpoint.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/tcb.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 17 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/asyncendpoint.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/endpoint.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 18 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/asyncendpoint.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/model/statedata.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 19 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/asyncendpoint.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/machine/io.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 20 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/asyncendpoint.c" 2

# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/asyncendpoint.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 22 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/asyncendpoint.c" 2

static inline tcb_queue_t __attribute__((__pure__))
aep_ptr_get_queue(async_endpoint_t *aepptr)
{
    tcb_queue_t aep_queue;

    aep_queue.head = (tcb_t*)async_endpoint_ptr_get_aepQueue_head(aepptr);
    aep_queue.end = (tcb_t*)async_endpoint_ptr_get_aepQueue_tail(aepptr);

    return aep_queue;
}

static inline void
aep_ptr_set_queue(async_endpoint_t *aepptr, tcb_queue_t aep_queue)
{
    async_endpoint_ptr_set_aepQueue_head(aepptr, (word_t)aep_queue.head);
    async_endpoint_ptr_set_aepQueue_tail(aepptr, (word_t)aep_queue.end);
}

static inline void
aep_set_active(async_endpoint_t *aepptr, word_t badge)
{
    async_endpoint_ptr_set_state(aepptr, AEPState_Active);
    async_endpoint_ptr_set_aepMsgIdentifier(aepptr, badge);
}


void
sendAsyncIPC(async_endpoint_t *aepptr, word_t badge)
{
    switch (async_endpoint_ptr_get_state(aepptr)) {
    case AEPState_Idle: {
        tcb_t *tcb = (tcb_t*)async_endpoint_ptr_get_aepBoundTCB(aepptr);
        /* Check if we are bound and that thread is waiting for a message */
        if (tcb) {
            if (thread_state_ptr_get_tsType(&tcb->tcbState) == ThreadState_BlockedOnReceive) {
                /* Send and start thread running */
                ipcCancel(tcb);
                setThreadState(tcb, ThreadState_Running);
                setRegister(tcb, badgeRegister, badge);
                attemptSwitchTo(tcb);
            } else if (thread_state_ptr_get_tsType(&tcb->tcbState) == ThreadState_RunningVM) {
                setThreadState(tcb, ThreadState_Running);
                setRegister(tcb, badgeRegister, badge);
                setRegister(tcb, msgInfoRegister, 0);
                Arch_leaveVMAsyncTransfer(tcb);
                attemptSwitchTo(tcb);
            } else {
                aep_set_active(aepptr, badge);
            }
        } else {
            aep_set_active(aepptr, badge);
        }
        break;
    }
    case AEPState_Waiting: {
        tcb_queue_t aep_queue;
        tcb_t *dest;

        aep_queue = aep_ptr_get_queue(aepptr);
        dest = aep_queue.head;

        /* Haskell error "WaitingAEP AEP must have non-empty queue" */
        do { if (dest) break; cputstring("Assertion failed: " "dest" "\n"); terminate(3); } while(0);

        /* Dequeue TCB */
        aep_queue = tcbEPDequeue(dest, aep_queue);
        aep_ptr_set_queue(aepptr, aep_queue);

        /* set the thread state to idle if the queue is empty */
        if (!aep_queue.head) {
            async_endpoint_ptr_set_state(aepptr, AEPState_Idle);
        }

        setThreadState(dest, ThreadState_Running);
        setRegister(dest, badgeRegister, badge);
        switchIfRequiredTo(dest);
        break;
    }

    case AEPState_Active: {
        word_t badge2;

        badge2 = async_endpoint_ptr_get_aepMsgIdentifier(aepptr);
        badge2 |= badge;

        async_endpoint_ptr_set_aepMsgIdentifier(aepptr, badge2);
        break;
    }
    }
}

void
receiveAsyncIPC(tcb_t *thread, cap_t cap, bool_t isBlocking)
{
    async_endpoint_t *aepptr;

    aepptr = ((async_endpoint_t *)(cap_async_endpoint_cap_get_capAEPPtr(cap)));

    switch (async_endpoint_ptr_get_state(aepptr)) {
    case AEPState_Idle:
        /* Fall through */
    case AEPState_Waiting: {
        tcb_queue_t aep_queue;

        if (isBlocking) {
            /* Block thread on endpoint */
            thread_state_ptr_set_tsType(&thread->tcbState,
                                        ThreadState_BlockedOnAsyncEvent);
            thread_state_ptr_set_blockingIPCEndpoint(&thread->tcbState,
                                                     ((unsigned int)(aepptr)));
            scheduleTCB(thread);

            /* Enqueue TCB */
            aep_queue = aep_ptr_get_queue(aepptr);
            aep_queue = tcbEPAppend(thread, aep_queue);

            async_endpoint_ptr_set_state(aepptr, AEPState_Waiting);
            aep_ptr_set_queue(aepptr, aep_queue);
        } else {
            doPollFailedTransfer(thread);
        }
        break;
    }

    case AEPState_Active:
        setRegister(
            thread, badgeRegister,
            async_endpoint_ptr_get_aepMsgIdentifier(aepptr));
        async_endpoint_ptr_set_state(aepptr, AEPState_Idle);
        break;
    }
}

void
aepCancelAll(async_endpoint_t *aepptr)
{
    if (async_endpoint_ptr_get_state(aepptr) == AEPState_Waiting) {
        tcb_t *thread = ((tcb_t *)(async_endpoint_ptr_get_aepQueue_head(aepptr)));

        async_endpoint_ptr_set_state(aepptr, AEPState_Idle);
        async_endpoint_ptr_set_aepQueue_head(aepptr, 0);
        async_endpoint_ptr_set_aepQueue_tail(aepptr, 0);

        /* Set all waiting threads to Restart */
        for (; thread; thread = thread->tcbEPNext) {
            setThreadState(thread, ThreadState_Restart);
            tcbSchedEnqueue(thread);
        }
        rescheduleRequired();
    }
}

void
asyncIPCCancel(tcb_t *threadPtr, async_endpoint_t *aepptr)
{
    tcb_queue_t aep_queue;

    /* Haskell error "asyncIPCCancel: async endpoint must be waiting" */
    do { if (async_endpoint_ptr_get_state(aepptr) == AEPState_Waiting) break; cputstring("Assertion failed: " "async_endpoint_ptr_get_state(aepptr) == AEPState_Waiting" "\n"); terminate(3); } while(0);

    /* Dequeue TCB */
    aep_queue = aep_ptr_get_queue(aepptr);
    aep_queue = tcbEPDequeue(threadPtr, aep_queue);
    aep_ptr_set_queue(aepptr, aep_queue);

    /* Make endpoint idle */
    if (!aep_queue.head) {
        async_endpoint_ptr_set_state(aepptr, AEPState_Idle);
    }

    /* Make thread inactive */
    setThreadState(threadPtr, ThreadState_Inactive);
}

void
completeAsyncIPC(async_endpoint_t *aepptr, tcb_t *tcb)
{
    word_t badge;

    if (__builtin_expect(!!(tcb && async_endpoint_ptr_get_state(aepptr) == AEPState_Active), 1)) {
        async_endpoint_ptr_set_state(aepptr, AEPState_Idle);
        badge = async_endpoint_ptr_get_aepMsgIdentifier(aepptr);
        setRegister(tcb, badgeRegister, badge);
    } else {
        _fail("tried to complete async ipc with inactive AEP", "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/asyncendpoint.c", 207, __func__);
    }
}

void
unbindAsyncEndpoint(tcb_t *tcb)
{
    async_endpoint_t *aepptr;
    aepptr = tcb->boundAsyncEndpoint;

    if (aepptr) {
        async_endpoint_ptr_set_aepBoundTCB(aepptr, (word_t) 0);
        tcb->boundAsyncEndpoint = ((void *)0);
    }
}

void
bindAsyncEndpoint(tcb_t *tcb, async_endpoint_t *aepptr)
{
    async_endpoint_ptr_set_aepBoundTCB(aepptr, (word_t)tcb);
    tcb->boundAsyncEndpoint = aepptr;
}
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/cnode.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/assert.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 12 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/cnode.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 13 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/cnode.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/api/failures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 14 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/cnode.c" 2
# 1 "./api/invocation.h" 1
/* @LICENSE(OKL_CORE) */

/* This header was generated by kernel/tools/invocation_header_gen.py.
 *
 * To add an invocation call number, edit libsel4/include/interfaces/sel4.xml.
 *
 */
# 15 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/cnode.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/api/syscall.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/cnode.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/api/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 17 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/cnode.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/machine/io.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 18 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/cnode.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/structures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 19 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/cnode.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/objecttype.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 20 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/cnode.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/cnode.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 21 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/cnode.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/interrupt.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 22 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/cnode.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/untyped.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 23 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/cnode.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/kernel/cspace.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 24 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/cnode.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/kernel/thread.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 25 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/cnode.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/kernel/cdt.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 26 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/cnode.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/model/preemption.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 27 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/cnode.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/model/statedata.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 28 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/cnode.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/util.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 29 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/cnode.c" 2

struct finaliseSlot_ret {
    exception_t status;
    bool_t success;
    irq_t irq;
};
typedef struct finaliseSlot_ret finaliseSlot_ret_t;

static finaliseSlot_ret_t finaliseSlot(cte_t *slot, bool_t exposed);
static void emptySlot(cte_t *slot, irq_t irq);
static exception_t reduceZombie(cte_t* slot, bool_t exposed);

exception_t
decodeCNodeInvocation(word_t label, unsigned int length, cap_t cap,
                      extra_caps_t extraCaps, word_t *buffer)
{
    lookupSlot_ret_t lu_ret;
    cte_t *destSlot;
    word_t index, w_bits;
    exception_t status;

    /* Haskell error: "decodeCNodeInvocation: invalid cap" */
    do { if (cap_get_capType(cap) == cap_cnode_cap) break; cputstring("Assertion failed: " "cap_get_capType(cap) == cap_cnode_cap" "\n"); terminate(3); } while(0);

    if (label < CNodeRevoke || label > CNodeSaveCaller) {
        do { printf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x @%x]: ", __func__, 54, (int)ksCurThread, (int)getRestartPC(ksCurThread)); printf("CNodeCap: Illegal Operation attempted."); printf(">>" "\033[0m" "\n"); } while (0);
        current_syscall_error.type = seL4_IllegalOperation;
        return EXCEPTION_SYSCALL_ERROR;
    }

    if (length < 2) {
        do { printf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x @%x]: ", __func__, 60, (int)ksCurThread, (int)getRestartPC(ksCurThread)); printf("CNode operation: Truncated message."); printf(">>" "\033[0m" "\n"); } while (0);
        current_syscall_error.type = seL4_TruncatedMessage;
        return EXCEPTION_SYSCALL_ERROR;
    }
    index = getSyscallArg(0, buffer);
    w_bits = getSyscallArg(1, buffer);

    lu_ret = lookupTargetSlot(cap, index, w_bits);
    if (lu_ret.status != EXCEPTION_NONE) {
        do { printf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x @%x]: ", __func__, 69, (int)ksCurThread, (int)getRestartPC(ksCurThread)); printf("CNode operation: Target slot invalid."); printf(">>" "\033[0m" "\n"); } while (0);
        return lu_ret.status;
    }
    destSlot = lu_ret.slot;

    if (label >= CNodeCopy && label <= CNodeMutate) {
        cte_t *srcSlot;
        word_t srcIndex, srcDepth, capData;
        bool_t isMove;
        cap_rights_t cap_rights;
        cap_t srcRoot, newCap;
        deriveCap_ret_t dc_ret;
        cap_t srcCap;

        if (length < 4 || extraCaps.excaprefs[0] == ((void *)0)) {
            do { printf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x @%x]: ", __func__, 84, (int)ksCurThread, (int)getRestartPC(ksCurThread)); printf("CNode Copy/Mint/Move/Mutate: Truncated message."); printf(">>" "\033[0m" "\n"); } while (0);
            current_syscall_error.type = seL4_TruncatedMessage;
            return EXCEPTION_SYSCALL_ERROR;
        }
        srcIndex = getSyscallArg(2, buffer);
        srcDepth = getSyscallArg(3, buffer);

        srcRoot = extraCaps.excaprefs[0]->cap;

        status = ensureEmptySlot(destSlot);
        if (status != EXCEPTION_NONE) {
            do { printf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x @%x]: ", __func__, 95, (int)ksCurThread, (int)getRestartPC(ksCurThread)); printf("CNode Copy/Mint/Move/Mutate: Destination not empty."); printf(">>" "\033[0m" "\n"); } while (0);
            return status;
        }

        lu_ret = lookupSourceSlot(srcRoot, srcIndex, srcDepth);
        if (lu_ret.status != EXCEPTION_NONE) {
            do { printf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x @%x]: ", __func__, 101, (int)ksCurThread, (int)getRestartPC(ksCurThread)); printf("CNode Copy/Mint/Move/Mutate: Invalid source slot."); printf(">>" "\033[0m" "\n"); } while (0);
            return lu_ret.status;
        }
        srcSlot = lu_ret.slot;

        if (cap_get_capType(srcSlot->cap) == cap_null_cap) {
            do { printf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x @%x]: ", __func__, 107, (int)ksCurThread, (int)getRestartPC(ksCurThread)); printf("CNode Copy/Mint/Move/Mutate: Source slot invalid or empty."); printf(">>" "\033[0m" "\n"); } while (0);
            current_syscall_error.type = seL4_FailedLookup;
            current_syscall_error.failedLookupWasSource = 1;
            current_lookup_fault =
                lookup_fault_missing_capability_new(srcDepth);
            return EXCEPTION_SYSCALL_ERROR;
        }

        switch (label) {
        case CNodeCopy:

            if (length < 5) {
                do { printf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x @%x]: ", __func__, 119, (int)ksCurThread, (int)getRestartPC(ksCurThread)); printf("Truncated message for CNode Copy operation."); printf(">>" "\033[0m" "\n"); } while (0);
                current_syscall_error.type = seL4_TruncatedMessage;
                return EXCEPTION_SYSCALL_ERROR;
            }

            cap_rights = rightsFromWord(getSyscallArg(4, buffer));
            srcCap = maskCapRights(cap_rights, srcSlot->cap);
            dc_ret = deriveCap(srcSlot, srcCap);
            if (dc_ret.status != EXCEPTION_NONE) {
                do { printf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x @%x]: ", __func__, 128, (int)ksCurThread, (int)getRestartPC(ksCurThread)); printf("Error deriving cap for CNode Copy operation."); printf(">>" "\033[0m" "\n"); } while (0);
                return dc_ret.status;
            }
            newCap = dc_ret.cap;
            isMove = false;

            break;

        case CNodeMint:
            if (length < 6) {
                do { printf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x @%x]: ", __func__, 138, (int)ksCurThread, (int)getRestartPC(ksCurThread)); printf("CNode Mint: Truncated message."); printf(">>" "\033[0m" "\n"); } while (0);
                current_syscall_error.type = seL4_TruncatedMessage;
                return EXCEPTION_SYSCALL_ERROR;
            }

            cap_rights = rightsFromWord(getSyscallArg(4, buffer));
            capData = getSyscallArg(5, buffer);
            srcCap = maskCapRights(cap_rights, srcSlot->cap);
            dc_ret = deriveCap(srcSlot,
                               updateCapData(false, capData, srcCap));
            if (dc_ret.status != EXCEPTION_NONE) {
                do { printf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x @%x]: ", __func__, 149, (int)ksCurThread, (int)getRestartPC(ksCurThread)); printf("Error deriving cap for CNode Mint operation."); printf(">>" "\033[0m" "\n"); } while (0);
                return dc_ret.status;
            }
            newCap = dc_ret.cap;
            isMove = false;

            break;

        case CNodeMove:
            newCap = srcSlot->cap;
            isMove = true;

            break;

        case CNodeMutate:
            if (length < 5) {
                do { printf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x @%x]: ", __func__, 165, (int)ksCurThread, (int)getRestartPC(ksCurThread)); printf("CNode Mutate: Truncated message."); printf(">>" "\033[0m" "\n"); } while (0);
                current_syscall_error.type = seL4_TruncatedMessage;
                return EXCEPTION_SYSCALL_ERROR;
            }

            capData = getSyscallArg(4, buffer);
            newCap = updateCapData(true, capData, srcSlot->cap);
            isMove = true;

            break;

        default:
            do { if (0) break; cputstring("Assertion failed: " "0" "\n"); terminate(3); } while(0);
            return EXCEPTION_NONE;
        }

        if (cap_get_capType(newCap) == cap_null_cap) {
            do { printf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x @%x]: ", __func__, 182, (int)ksCurThread, (int)getRestartPC(ksCurThread)); printf("CNode Copy/Mint/Move/Mutate: Mutated cap would be invalid."); printf(">>" "\033[0m" "\n"); } while (0);
            current_syscall_error.type = seL4_IllegalOperation;
            return EXCEPTION_SYSCALL_ERROR;
        }

        setThreadState(ksCurThread, ThreadState_Restart);
        if (isMove) {
            return invokeCNodeMove(newCap, srcSlot, destSlot);
        } else {
            return invokeCNodeInsert(newCap, srcSlot, destSlot);
        }
    }

    if (label == CNodeRevoke) {
        setThreadState(ksCurThread, ThreadState_Restart);
        return invokeCNodeRevoke(destSlot);
    }

    if (label == CNodeDelete) {
        setThreadState(ksCurThread, ThreadState_Restart);
        return invokeCNodeDelete(destSlot);
    }

    if (label == CNodeSaveCaller) {
        status = ensureEmptySlot(destSlot);
        if (status != EXCEPTION_NONE) {
            do { printf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x @%x]: ", __func__, 208, (int)ksCurThread, (int)getRestartPC(ksCurThread)); printf("CNode SaveCaller: Destination slot not empty."); printf(">>" "\033[0m" "\n"); } while (0);
            return status;
        }

        setThreadState(ksCurThread, ThreadState_Restart);
        return invokeCNodeSaveCaller(destSlot);
    }

    if (label == CNodeRecycle) {
        if (!hasRecycleRights(destSlot->cap)) {
            do { printf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x @%x]: ", __func__, 218, (int)ksCurThread, (int)getRestartPC(ksCurThread)); printf("CNode Recycle: Target cap invalid."); printf(">>" "\033[0m" "\n"); } while (0);
            current_syscall_error.type = seL4_IllegalOperation;
            return EXCEPTION_SYSCALL_ERROR;
        }
        setThreadState(ksCurThread, ThreadState_Restart);
        return invokeCNodeRecycle(destSlot);
    }

    if (label == CNodeRotate) {
        word_t pivotNewData, pivotIndex, pivotDepth;
        word_t srcNewData, srcIndex, srcDepth;
        cte_t *pivotSlot, *srcSlot;
        cap_t pivotRoot, srcRoot, newSrcCap, newPivotCap;

        if (length < 8 || extraCaps.excaprefs[0] == ((void *)0)
                || extraCaps.excaprefs[1] == ((void *)0)) {
            current_syscall_error.type = seL4_TruncatedMessage;
            return EXCEPTION_SYSCALL_ERROR;
        }
        pivotNewData = getSyscallArg(2, buffer);
        pivotIndex = getSyscallArg(3, buffer);
        pivotDepth = getSyscallArg(4, buffer);
        srcNewData = getSyscallArg(5, buffer);
        srcIndex = getSyscallArg(6, buffer);
        srcDepth = getSyscallArg(7, buffer);

        pivotRoot = extraCaps.excaprefs[0]->cap;
        srcRoot = extraCaps.excaprefs[1]->cap;

        lu_ret = lookupSourceSlot(srcRoot, srcIndex, srcDepth);
        if (lu_ret.status != EXCEPTION_NONE) {
            return lu_ret.status;
        }
        srcSlot = lu_ret.slot;

        lu_ret = lookupPivotSlot(pivotRoot, pivotIndex, pivotDepth);
        if (lu_ret.status != EXCEPTION_NONE) {
            return lu_ret.status;
        }
        pivotSlot = lu_ret.slot;

        if (pivotSlot == srcSlot || pivotSlot == destSlot) {
            do { printf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x @%x]: ", __func__, 260, (int)ksCurThread, (int)getRestartPC(ksCurThread)); printf("CNode Rotate: Pivot slot the same as source or dest slot."); printf(">>" "\033[0m" "\n"); } while (0);
            current_syscall_error.type = seL4_IllegalOperation;
            return EXCEPTION_SYSCALL_ERROR;
        }

        if (srcSlot != destSlot) {
            status = ensureEmptySlot(destSlot);
            if (status != EXCEPTION_NONE) {
                return status;
            }
        }

        if (cap_get_capType(srcSlot->cap) == cap_null_cap) {
            current_syscall_error.type = seL4_FailedLookup;
            current_syscall_error.failedLookupWasSource = 1;
            current_lookup_fault = lookup_fault_missing_capability_new(srcDepth);
            return EXCEPTION_SYSCALL_ERROR;
        }

        if (cap_get_capType(pivotSlot->cap) == cap_null_cap) {
            current_syscall_error.type = seL4_FailedLookup;
            current_syscall_error.failedLookupWasSource = 0;
            current_lookup_fault = lookup_fault_missing_capability_new(pivotDepth);
            return EXCEPTION_SYSCALL_ERROR;
        }

        newSrcCap = updateCapData(true, srcNewData, srcSlot->cap);
        newPivotCap = updateCapData(true, pivotNewData, pivotSlot->cap);

        if (cap_get_capType(newSrcCap) == cap_null_cap) {
            do { printf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x @%x]: ", __func__, 290, (int)ksCurThread, (int)getRestartPC(ksCurThread)); printf("CNode Rotate: Source cap invalid."); printf(">>" "\033[0m" "\n"); } while (0);
            current_syscall_error.type = seL4_IllegalOperation;
            return EXCEPTION_SYSCALL_ERROR;
        }

        if (cap_get_capType(newPivotCap) == cap_null_cap) {
            do { printf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x @%x]: ", __func__, 296, (int)ksCurThread, (int)getRestartPC(ksCurThread)); printf("CNode Rotate: Pivot cap invalid."); printf(">>" "\033[0m" "\n"); } while (0);
            current_syscall_error.type = seL4_IllegalOperation;
            return EXCEPTION_SYSCALL_ERROR;
        }

        setThreadState(ksCurThread, ThreadState_Restart);
        return invokeCNodeRotate(newSrcCap, newPivotCap,
                                 srcSlot, pivotSlot, destSlot);
    }

    return EXCEPTION_NONE;
}

exception_t
invokeCNodeRevoke(cte_t *destSlot)
{
    return cteRevoke(destSlot);
}

exception_t
invokeCNodeDelete(cte_t *destSlot)
{
    return cteDelete(destSlot, true);
}

exception_t
invokeCNodeRecycle(cte_t *destSlot)
{
    return cteRecycle(destSlot);
}

exception_t
invokeCNodeInsert(cap_t cap, cte_t *srcSlot, cte_t *destSlot)
{
    cteInsert(cap, srcSlot, destSlot);

    return EXCEPTION_NONE;
}

exception_t
invokeCNodeMove(cap_t cap, cte_t *srcSlot, cte_t *destSlot)
{
    cteMove(cap, srcSlot, destSlot);

    return EXCEPTION_NONE;
}

exception_t
invokeCNodeRotate(cap_t cap1, cap_t cap2, cte_t *slot1,
                  cte_t *slot2, cte_t *slot3)
{
    if (slot1 == slot3) {
        cdtSwap(cap1, slot1, cap2, slot2);
    } else {
        cteMove(cap2, slot2, slot3);
        cteMove(cap1, slot1, slot2);
    }

    return EXCEPTION_NONE;
}

exception_t
invokeCNodeSaveCaller(cte_t *destSlot)
{
    cap_t cap;
    cte_t *srcSlot;

    srcSlot = (((cte_t *)((unsigned int)(ksCurThread)&~((1ul<<(((4 + 4) + 1)))-1ul)))+(tcbCaller));
    cap = srcSlot->cap;

    switch (cap_get_capType(cap)) {
    case cap_null_cap:
        do { printf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x @%x]: ", __func__, 368, (int)ksCurThread, (int)getRestartPC(ksCurThread)); printf("CNode SaveCaller: Reply cap not present."); printf(">>" "\033[0m" "\n"); } while (0);
        break;

    case cap_reply_cap: {
        tcb_t *callee;
        cte_t *calleeSlot;

        /* Put the master in the cdt */
        callee = ((tcb_t *)(cap_reply_cap_get_capTCBPtr(cap)));
        calleeSlot = (((cte_t *)((unsigned int)(callee)&~((1ul<<(((4 + 4) + 1)))-1ul)))+(tcbReply));
        cap_reply_cap_ptr_set_capInCDT(&calleeSlot->cap, true);
        cap_reply_cap_ptr_set_capTCBPtr(&calleeSlot->cap, ((unsigned int) (callee)));
        cdtInsert(((void *)0), calleeSlot);

        /* Now move the child */
        cap_reply_cap_ptr_set_capInCDT(&cap, true);
        destSlot->cap = cap;
        srcSlot->cap = cap_null_cap_new();
        cdtInsert(calleeSlot, destSlot);
        break;
    }
    default:
        _fail("caller capability must be null or reply", "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/cnode.c", 390, __func__);
        break;
    }

    return EXCEPTION_NONE;
}

void
cteInsert(cap_t newCap, cte_t *srcSlot, cte_t *destSlot)
{
    /* Haskell error: "cteInsert to non-empty destination" */
    do { if (cap_get_capType(destSlot->cap) == cap_null_cap) break; cputstring("Assertion failed: " "cap_get_capType(destSlot->cap) == cap_null_cap" "\n"); terminate(3); } while(0);

    destSlot->cap = newCap;
    cdtInsert(srcSlot, destSlot);
}

void
cteMove(cap_t newCap, cte_t *srcSlot, cte_t *destSlot)
{
    /* Haskell error: "cteMove to non-empty destination" */
    do { if (cap_get_capType(destSlot->cap) == cap_null_cap) break; cputstring("Assertion failed: " "cap_get_capType(destSlot->cap) == cap_null_cap" "\n"); terminate(3); } while(0);

    destSlot->cap = newCap;
    cdtMove(srcSlot, destSlot);
    srcSlot->cap = cap_null_cap_new();
}

void
capSwapForDelete(cte_t *slot1, cte_t *slot2)
{
    cap_t cap1, cap2;

    if (slot1 == slot2) {
        return;
    }

    cap1 = slot1->cap;
    cap2 = slot2->cap;

    cdtSwap(cap1, slot1, cap2, slot2);
}

exception_t
cteRevoke(cte_t *slot)
{
    cte_t *childPtr;
    exception_t status;

    if (cap_get_capType(slot->cap) == cap_null_cap) {
        return EXCEPTION_NONE;
    }
    for (childPtr = cdtFindChild(slot); childPtr; childPtr = cdtFindChild(slot)) {
        status = cteDelete(childPtr, true);
        if (status != EXCEPTION_NONE) {
            return status;
        }

        status = preemptionPoint();
        if (status != EXCEPTION_NONE) {
            return status;
        }
    }

    return EXCEPTION_NONE;
}

exception_t
cteDelete(cte_t *slot, bool_t exposed)
{
    finaliseSlot_ret_t fs_ret;

    fs_ret = finaliseSlot(slot, exposed);
    if (fs_ret.status != EXCEPTION_NONE) {
        return fs_ret.status;
    }

    if (exposed || fs_ret.success) {
        emptySlot(slot, fs_ret.irq);
    }
    return EXCEPTION_NONE;
}

static void
emptySlot(cte_t *slot, irq_t irq)
{
    if (cap_get_capType(slot->cap) != cap_null_cap) {
        cdtRemove(slot);
        slot->cap = cap_null_cap_new();

        if (irq != irqInvalid) {
            deletedIRQHandler(irq);
        }
    }
}

static inline bool_t __attribute__((__const__))
capRemovable(cap_t cap, cte_t* slot)
{
    switch (cap_get_capType(cap)) {
    case cap_null_cap:
        return true;
    case cap_zombie_cap: {
        word_t n = cap_zombie_cap_get_capZombieNumber(cap);
        cte_t* z_slot = (cte_t*)cap_zombie_cap_get_capZombiePtr(cap);
        return (n == 0 || (n == 1 && slot == z_slot));
    }
    default:
        _fail("finaliseCap should only return Zombie or NullCap", "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/cnode.c", 498, __func__);
    }
}

static inline bool_t __attribute__((__const__))
capCyclicZombie(cap_t cap, cte_t *slot)
{
    return cap_get_capType(cap) == cap_zombie_cap &&
           ((cte_t *)(cap_zombie_cap_get_capZombiePtr(cap))) == slot;
}

static finaliseSlot_ret_t
finaliseSlot(cte_t *slot, bool_t immediate)
{
    bool_t final;
    finaliseCap_ret_t fc_ret;
    exception_t status;
    finaliseSlot_ret_t ret;

    while (cap_get_capType(slot->cap) != cap_null_cap) {
        /* If we have a zombie cap then we know it is final and can
         * avoid an expensive cdtIsFinal check */
        final = (cap_get_capType(slot->cap) == cap_zombie_cap) || cdtIsFinal(slot);
        fc_ret = finaliseCap(slot->cap, final, false);

        if (capRemovable(fc_ret.remainder, slot)) {
            ret.status = EXCEPTION_NONE;
            ret.success = true;
            ret.irq = fc_ret.irq;
            return ret;
        }

        /* if we have a zombie then we actually don't need to call
         * cdtUpdate as the cap actually hasn't changed */
        if (cap_get_capType(slot->cap) != cap_zombie_cap) {
            cdtUpdate(slot, fc_ret.remainder);
        }

        if (!immediate && capCyclicZombie(fc_ret.remainder, slot)) {
            ret.status = EXCEPTION_NONE;
            ret.success = false;
            ret.irq = fc_ret.irq;
            return ret;
        }

        status = reduceZombie(slot, immediate);
        if (status != EXCEPTION_NONE) {
            ret.status = status;
            ret.success = false;
            ret.irq = irqInvalid;
            return ret;
        }

        status = preemptionPoint();
        if (status != EXCEPTION_NONE) {
            ret.status = status;
            ret.success = false;
            ret.irq = irqInvalid;
            return ret;
        }
    }
    ret.status = EXCEPTION_NONE;
    ret.success = true;
    ret.irq = irqInvalid;
    return ret;
}

static exception_t
reduceZombie(cte_t* slot, bool_t immediate)
{
    cte_t* ptr;
    word_t n, type;
    exception_t status;

    do { if (cap_get_capType(slot->cap) == cap_zombie_cap) break; cputstring("Assertion failed: " "cap_get_capType(slot->cap) == cap_zombie_cap" "\n"); terminate(3); } while(0);
    ptr = (cte_t*)cap_zombie_cap_get_capZombiePtr(slot->cap);
    n = cap_zombie_cap_get_capZombieNumber(slot->cap);
    type = cap_zombie_cap_get_capZombieType(slot->cap);

    /* Haskell error: "reduceZombie: expected unremovable zombie" */
    do { if (n > 0) break; cputstring("Assertion failed: " "n > 0" "\n"); terminate(3); } while(0);

    if (immediate) {
        cte_t* endSlot = &ptr[n - 1];

        status = cteDelete(endSlot, false);
        if (status != EXCEPTION_NONE) {
            return status;
        }

        switch (cap_get_capType(slot->cap)) {
        case cap_null_cap:
            break;

        case cap_zombie_cap: {
            cte_t* ptr2 =
                (cte_t*)cap_zombie_cap_get_capZombiePtr(slot->cap);

            if (ptr == ptr2 &&
                    cap_zombie_cap_get_capZombieNumber(slot->cap) == n &&
                    cap_zombie_cap_get_capZombieType(slot->cap) == type) {
                do { if (cap_get_capType(endSlot->cap) == cap_null_cap) break; cputstring("Assertion failed: " "cap_get_capType(endSlot->cap) == cap_null_cap" "\n"); terminate(3); } while(0);
                /* We could call cdtUpdate here, but we know it is not necessary
                 * because a zombie is not ordered in the aaTree by its zombieNumber
                 * and so cdtUpdate will always be a noop. Skipping the call to cdtUpdate
                 * here is to make revoking large cnodes faster as this gets called
                 * for every slot in the cnode */
                slot->cap = cap_zombie_cap_set_capZombieNumber(slot->cap, n - 1);
            } else {
                /* Haskell error:
                 * "Expected new Zombie to be self-referential."
                 */
                do { if (ptr2 == slot && ptr != slot) break; cputstring("Assertion failed: " "ptr2 == slot && ptr != slot" "\n"); terminate(3); } while(0);
            }
            break;
        }

        default:
            _fail("Expected recursion to result in Zombie.", "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/cnode.c", 616, __func__);
        }
    } else {
        /* Haskell error: "Cyclic zombie passed to unexposed reduceZombie" */
        do { if (ptr != slot) break; cputstring("Assertion failed: " "ptr != slot" "\n"); terminate(3); } while(0);

        if (cap_get_capType(ptr->cap) == cap_zombie_cap) {
            /* Haskell error: "Moving self-referential Zombie aside." */
            do { if (ptr != ((cte_t *)(cap_zombie_cap_get_capZombiePtr(ptr->cap)))) break; cputstring("Assertion failed: " "ptr != ((cte_t *)(cap_zombie_cap_get_capZombiePtr(ptr->cap)))" "\n"); terminate(3); } while(0);
        }

        capSwapForDelete(ptr, slot);
    }
    return EXCEPTION_NONE;
}

void
cteDeleteOne(cte_t* slot)
{
    if (cap_get_capType(slot->cap) != cap_null_cap) {
        bool_t final;
        finaliseCap_ret_t fc_ret __attribute__((unused));
        final = cdtIsFinal(slot);
        fc_ret = finaliseCap(slot->cap, final, true);
        /* Haskell error: "cteDeleteOne: cap should be removable" */
        do { if (capRemovable(fc_ret.remainder, slot) && fc_ret.irq == irqInvalid) break; cputstring("Assertion failed: " "capRemovable(fc_ret.remainder, slot) && fc_ret.irq == irqInvalid" "\n"); terminate(3); } while(0)
                                        ;
        emptySlot(slot, irqInvalid);
    }
}

exception_t
cteRecycle(cte_t* slot)
{
    exception_t status;
    finaliseSlot_ret_t fc_ret;

    status = cteRevoke(slot);
    if (status != EXCEPTION_NONE) {
        return status;
    }

    fc_ret = finaliseSlot(slot, true);
    if (fc_ret.status != EXCEPTION_NONE) {
        return fc_ret.status;
    }

    if (cap_get_capType(slot->cap) != cap_null_cap) {
        cap_t new_cap;
        bool_t is_final;
        is_final = cdtIsFinal(slot);
        new_cap = recycleCap(is_final, slot->cap);
        cdtUpdate(slot, new_cap);
    }

    return EXCEPTION_NONE;
}

void
insertNewCap(cte_t *parent, cte_t *slot, cap_t cap)
{
    slot->cap = cap;
    cdtInsert(parent, slot);
}

void
setupReplyMaster(tcb_t *thread)
{
    cte_t *slot;

    slot = (((cte_t *)((unsigned int)(thread)&~((1ul<<(((4 + 4) + 1)))-1ul)))+(tcbReply));
    if (cap_get_capType(slot->cap) == cap_null_cap) {
        /* Haskell asserts that no reply caps exist for this thread here. This
         * cannot be translated. */
        slot->cap = cap_reply_cap_new(false, true, ((unsigned int) (((void *)0))));
    }
}

exception_t
ensureEmptySlot(cte_t *slot)
{
    if (cap_get_capType(slot->cap) != cap_null_cap) {
        current_syscall_error.type = seL4_DeleteFirst;
        return EXCEPTION_SYSCALL_ERROR;
    }

    return EXCEPTION_NONE;
}

bool_t __attribute__((__pure__))
slotCapLongRunningDelete(cte_t *slot)
{
    if (cap_get_capType(slot->cap) == cap_null_cap) {
        return false;
    } else if (! cdtIsFinal(slot)) {
        return false;
    }
    switch (cap_get_capType(slot->cap)) {
    case cap_thread_cap:
    case cap_zombie_cap:
    case cap_cnode_cap:
        return true;
    default:
        return false;
    }
}

/* This implementation is specialised to the (current) limit
 * of one cap receive slot. */
cte_t *
getReceiveSlots(tcb_t *thread, word_t *buffer)
{
    cap_transfer_t ct;
    cptr_t cptr;
    lookupCap_ret_t luc_ret;
    lookupSlot_ret_t lus_ret;
    cte_t *slot;
    cap_t cnode;

    if (!buffer) {
        return ((void *)0);
    }

    ct = loadCapTransfer(buffer);
    cptr = ct.ctReceiveRoot;

    luc_ret = lookupCap(thread, cptr);
    if (luc_ret.status != EXCEPTION_NONE) {
        return ((void *)0);
    }
    cnode = luc_ret.cap;

    lus_ret = lookupTargetSlot(cnode, ct.ctReceiveIndex, ct.ctReceiveDepth);
    if (lus_ret.status != EXCEPTION_NONE) {
        return ((void *)0);
    }
    slot = lus_ret.slot;

    if (cap_get_capType(slot->cap) != cap_null_cap) {
        return ((void *)0);
    }

    return slot;
}

cap_transfer_t __attribute__((__pure__))
loadCapTransfer(word_t *buffer)
{
    const int offset = seL4_MsgMaxLength + ((1ul<<(seL4_MsgExtraCapBits))-1) + 2;
    return capTransferFromWords(buffer + offset);
}
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/endpoint.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 12 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/endpoint.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/kernel/thread.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 13 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/endpoint.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/kernel/vspace.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 14 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/endpoint.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/machine/registerset.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/endpoint.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/model/statedata.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/endpoint.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/asyncendpoint.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 17 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/endpoint.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/cnode.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 18 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/endpoint.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/endpoint.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 19 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/endpoint.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/tcb.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 20 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/endpoint.c" 2

static inline tcb_queue_t __attribute__((__pure__))
ep_ptr_get_queue(endpoint_t *epptr)
{
    tcb_queue_t queue;

    queue.head = (tcb_t*)endpoint_ptr_get_epQueue_head(epptr);
    queue.end = (tcb_t*)endpoint_ptr_get_epQueue_tail(epptr);

    return queue;
}

static inline void
ep_ptr_set_queue(endpoint_t *epptr, tcb_queue_t queue)
{
    endpoint_ptr_set_epQueue_head(epptr, (word_t)queue.head);
    endpoint_ptr_set_epQueue_tail(epptr, (word_t)queue.end);
}

void
sendIPC(bool_t blocking, bool_t do_call, word_t badge,
        bool_t canGrant, tcb_t *thread, endpoint_t *epptr)
{
    switch (endpoint_ptr_get_state(epptr)) {
    case EPState_Idle:
    case EPState_Send:
        if (blocking) {
            tcb_queue_t queue;

            /* Set thread state to BlockedOnSend */
            thread_state_ptr_set_tsType(&thread->tcbState,
                                        ThreadState_BlockedOnSend);
            thread_state_ptr_set_blockingIPCEndpoint(
                &thread->tcbState, ((unsigned int)(epptr)));
            thread_state_ptr_set_blockingIPCBadge(
                &thread->tcbState, badge);
            thread_state_ptr_set_blockingIPCCanGrant(
                &thread->tcbState, canGrant);
            thread_state_ptr_set_blockingIPCIsCall(
                &thread->tcbState, do_call);

            scheduleTCB(thread);

            /* Place calling thread in endpoint queue */
            queue = ep_ptr_get_queue(epptr);
            queue = tcbEPAppend(thread, queue);
            endpoint_ptr_set_state(epptr, EPState_Send);
            ep_ptr_set_queue(epptr, queue);
        }
        break;

    case EPState_Recv: {
        tcb_queue_t queue;
        tcb_t *dest;
        bool_t diminish;

        /* Get the head of the endpoint queue. */
        queue = ep_ptr_get_queue(epptr);
        dest = queue.head;

        /* Haskell error "Receive endpoint queue must not be empty" */
        do { if (dest) break; cputstring("Assertion failed: " "dest" "\n"); terminate(3); } while(0);

        /* Dequeue the first TCB */
        queue = tcbEPDequeue(dest, queue);
        ep_ptr_set_queue(epptr, queue);

        if (!queue.head) {
            endpoint_ptr_set_state(epptr, EPState_Idle);
        }

        /* Do the transfer */
        diminish =
            thread_state_get_blockingIPCDiminishCaps(dest->tcbState);
        doIPCTransfer(thread, epptr, badge, canGrant, dest, diminish);

        setThreadState(dest, ThreadState_Running);
        attemptSwitchTo(dest);

        if (do_call ||
                fault_ptr_get_faultType(&thread->tcbFault) != fault_null_fault) {
            if (canGrant && !diminish) {
                setupCallerCap(thread, dest);
            } else {
                setThreadState(thread, ThreadState_Inactive);
            }
        }

        break;
    }
    }
}

void
receiveIPC(tcb_t *thread, cap_t cap)
{
    endpoint_t *epptr;
    bool_t diminish;
    async_endpoint_t *aepptr;

    /* Haskell error "receiveIPC: invalid cap" */
    do { if (cap_get_capType(cap) == cap_endpoint_cap) break; cputstring("Assertion failed: " "cap_get_capType(cap) == cap_endpoint_cap" "\n"); terminate(3); } while(0);

    epptr = ((endpoint_t *)(cap_endpoint_cap_get_capEPPtr(cap)));
    diminish = !cap_endpoint_cap_get_capCanSend(cap);

    /* Check for anything waiting in the async endpoint*/
    aepptr = thread->boundAsyncEndpoint;
    if (aepptr && async_endpoint_ptr_get_state(aepptr) == AEPState_Active) {
        completeAsyncIPC(aepptr, thread);
    } else {
        switch (endpoint_ptr_get_state(epptr)) {
        case EPState_Idle:
        case EPState_Recv: {
            tcb_queue_t queue;

            /* Set thread state to BlockedOnReceive */
            thread_state_ptr_set_tsType(&thread->tcbState,
                                        ThreadState_BlockedOnReceive);
            thread_state_ptr_set_blockingIPCEndpoint(
                &thread->tcbState, ((unsigned int)(epptr)));
            thread_state_ptr_set_blockingIPCDiminishCaps(
                &thread->tcbState, diminish);

            scheduleTCB(thread);

            /* Place calling thread in endpoint queue */
            queue = ep_ptr_get_queue(epptr);
            queue = tcbEPAppend(thread, queue);
            endpoint_ptr_set_state(epptr, EPState_Recv);
            ep_ptr_set_queue(epptr, queue);
            break;
        }

        case EPState_Send: {
            tcb_queue_t queue;
            tcb_t *sender;
            word_t badge;
            bool_t canGrant;
            bool_t do_call;

            /* Get the head of the endpoint queue. */
            queue = ep_ptr_get_queue(epptr);
            sender = queue.head;

            /* Haskell error "Send endpoint queue must not be empty" */
            do { if (sender) break; cputstring("Assertion failed: " "sender" "\n"); terminate(3); } while(0);

            /* Dequeue the first TCB */
            queue = tcbEPDequeue(sender, queue);
            ep_ptr_set_queue(epptr, queue);

            if (!queue.head) {
                endpoint_ptr_set_state(epptr, EPState_Idle);
            }

            /* Get sender IPC details */
            badge = thread_state_ptr_get_blockingIPCBadge(&sender->tcbState);
            canGrant =
                thread_state_ptr_get_blockingIPCCanGrant(&sender->tcbState);

            /* Do the transfer */
            doIPCTransfer(sender, epptr, badge,
                          canGrant, thread, diminish);

            do_call = thread_state_ptr_get_blockingIPCIsCall(&sender->tcbState);

            if (do_call ||
                    fault_get_faultType(sender->tcbFault) != fault_null_fault) {
                if (canGrant && !diminish) {
                    setupCallerCap(sender, thread);
                } else {
                    setThreadState(sender, ThreadState_Inactive);
                }
            } else {
                setThreadState(sender, ThreadState_Running);
                switchIfRequiredTo(sender);
            }

            break;
        }
        }
    }
}

void
replyFromKernel_error(tcb_t *thread)
{
    unsigned int len;
    word_t *ipcBuffer;

    ipcBuffer = lookupIPCBuffer(true, thread);
    setRegister(thread, badgeRegister, 0);
    len = setMRs_syscall_error(thread, ipcBuffer);
    setRegister(thread, msgInfoRegister, wordFromMessageInfo(
                    message_info_new(current_syscall_error.type, 0, 0, len)));
}

void
replyFromKernel_success_empty(tcb_t *thread)
{
    setRegister(thread, badgeRegister, 0);
    setRegister(thread, msgInfoRegister, wordFromMessageInfo(
                    message_info_new(0, 0, 0, 0)));
}

void
ipcCancel(tcb_t *tptr)
{
    thread_state_t *state = &tptr->tcbState;

    switch (thread_state_ptr_get_tsType(state)) {
    case ThreadState_BlockedOnSend:
    case ThreadState_BlockedOnReceive: {
        /* blockedIPCCancel state */
        endpoint_t *epptr;
        tcb_queue_t queue;

        epptr = ((endpoint_t *)(thread_state_ptr_get_blockingIPCEndpoint(state)));

        /* Haskell error "blockedIPCCancel: endpoint must not be idle" */
        do { if (endpoint_ptr_get_state(epptr) != EPState_Idle) break; cputstring("Assertion failed: " "endpoint_ptr_get_state(epptr) != EPState_Idle" "\n"); terminate(3); } while(0);

        /* Dequeue TCB */
        queue = ep_ptr_get_queue(epptr);
        queue = tcbEPDequeue(tptr, queue);
        ep_ptr_set_queue(epptr, queue);

        if (!queue.head) {
            endpoint_ptr_set_state(epptr, EPState_Idle);
        }

        setThreadState(tptr, ThreadState_Inactive);
        break;
    }

    case ThreadState_BlockedOnAsyncEvent:
        asyncIPCCancel(tptr,
                       ((async_endpoint_t *)(thread_state_ptr_get_blockingIPCEndpoint(state))));
        break;

    case ThreadState_BlockedOnReply: {
        cte_t *slot, *callerCap;
        tcb_t *callerTCB;

        fault_null_fault_ptr_new(&tptr->tcbFault);

        /* Get the reply cap slot */
        slot = (((cte_t *)((unsigned int)(tptr)&~((1ul<<(((4 + 4) + 1)))-1ul)))+(tcbReply));
        do { if (cap_get_capType(slot->cap) == cap_reply_cap) break; cputstring("Assertion failed: " "cap_get_capType(slot->cap) == cap_reply_cap" "\n"); terminate(3); } while(0);
        callerTCB = ((tcb_t *)(cap_reply_cap_get_capTCBPtr(slot->cap)));

        do { if (callerTCB || !cap_reply_cap_get_capInCDT(slot->cap)) break; cputstring("Assertion failed: " "callerTCB || !cap_reply_cap_get_capInCDT(slot->cap)" "\n"); terminate(3); } while(0);

        /* Delete our child, if we have one */
        if (callerTCB) {
            if (cap_reply_cap_get_capInCDT(slot->cap)) {
                do { if (callerTCB == tptr) break; cputstring("Assertion failed: " "callerTCB == tptr" "\n"); terminate(3); } while(0);
                callerCap = cdtFindChild(slot);
                /* This cap may have already been deleted in the past? What is the invariant on this? */
                if (callerCap) {
                    cdtRemove(callerCap);
                }
                cdtRemove(slot);
            } else {
                callerCap = (((cte_t *)((unsigned int)(callerTCB)&~((1ul<<(((4 + 4) + 1)))-1ul)))+(tcbCaller));
                do { if (((tcb_t *)(cap_reply_cap_get_capTCBPtr(callerCap->cap))) == tptr) break; cputstring("Assertion failed: " "((tcb_t *)(cap_reply_cap_get_capTCBPtr(callerCap->cap))) == tptr" "\n"); terminate(3); } while(0);
            }
            callerCap->cap = cap_null_cap_new();
            cap_reply_cap_ptr_set_capTCBPtr(&slot->cap, ((unsigned int) (((void *)0))));
            cap_reply_cap_ptr_set_capInCDT(&slot->cap, false);
        }
        break;
    }
    }
}

void
epCancelAll(endpoint_t *epptr)
{
    switch (endpoint_ptr_get_state(epptr)) {
    case EPState_Idle:
        break;

    default: {
        tcb_t *thread = ((tcb_t *)(endpoint_ptr_get_epQueue_head(epptr)));

        /* Make endpoint idle */
        endpoint_ptr_set_state(epptr, EPState_Idle);
        endpoint_ptr_set_epQueue_head(epptr, 0);
        endpoint_ptr_set_epQueue_tail(epptr, 0);

        /* Set all blocked threads to restart */
        for (; thread; thread = thread->tcbEPNext) {
            setThreadState (thread, ThreadState_Restart);
            tcbSchedEnqueue(thread);
        }

        rescheduleRequired();
        break;
    }
    }
}

void
epCancelBadgedSends(endpoint_t *epptr, word_t badge)
{
    switch (endpoint_ptr_get_state(epptr)) {
    case EPState_Idle:
    case EPState_Recv:
        break;

    case EPState_Send: {
        tcb_t *thread, *next;
        tcb_queue_t queue = ep_ptr_get_queue(epptr);

        /* this is a de-optimisation for verification
         * reasons. it allows the contents of the endpoint
         * queue to be ignored during the for loop. */
        endpoint_ptr_set_state(epptr, EPState_Idle);
        endpoint_ptr_set_epQueue_head(epptr, 0);
        endpoint_ptr_set_epQueue_tail(epptr, 0);

        for (thread = queue.head; thread; thread = next) {
            word_t b = thread_state_ptr_get_blockingIPCBadge(
                           &thread->tcbState);
            next = thread->tcbEPNext;
            if (b == badge) {
                setThreadState(thread, ThreadState_Restart);
                tcbSchedEnqueue(thread);
                queue = tcbEPDequeue(thread, queue);
            }
        }
        ep_ptr_set_queue(epptr, queue);

        if (queue.head) {
            endpoint_ptr_set_state(epptr, EPState_Send);
        }

        rescheduleRequired();

        break;
    }

    default:
        _fail("invalid EP state", "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/endpoint.c", 365, __func__);
    }
}
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/interrupt.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/assert.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 12 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/interrupt.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 13 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/interrupt.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/api/failures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 14 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/interrupt.c" 2
# 1 "./api/invocation.h" 1
/* @LICENSE(OKL_CORE) */

/* This header was generated by kernel/tools/invocation_header_gen.py.
 *
 * To add an invocation call number, edit libsel4/include/interfaces/sel4.xml.
 *
 */
# 15 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/interrupt.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/api/syscall.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/interrupt.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/machine/io.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 17 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/interrupt.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/structures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 18 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/interrupt.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/interrupt.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 19 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/interrupt.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/cnode.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 20 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/interrupt.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/asyncendpoint.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 21 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/interrupt.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/kernel/cspace.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 22 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/interrupt.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/kernel/thread.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 23 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/interrupt.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/model/statedata.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 24 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/interrupt.c" 2

exception_t
decodeIRQControlInvocation(word_t label, unsigned int length,
                           cte_t *srcSlot, extra_caps_t extraCaps,
                           word_t *buffer)
{
    if (label == IRQIssueIRQHandler) {
        word_t index, depth, irq_w;
        irq_t irq;
        cte_t *destSlot;
        cap_t cnodeCap;
        lookupSlot_ret_t lu_ret;
        exception_t status;

        if (length < 3 || extraCaps.excaprefs[0] == ((void *)0)) {
            current_syscall_error.type = seL4_TruncatedMessage;
            return EXCEPTION_SYSCALL_ERROR;
        }
        irq_w = getSyscallArg(0, buffer);
        irq = (irq_t) irq_w;
        index = getSyscallArg(1, buffer);
        depth = getSyscallArg(2, buffer);

        cnodeCap = extraCaps.excaprefs[0]->cap;

        if (irq_w > maxIRQ) {
            current_syscall_error.type = seL4_RangeError;
            current_syscall_error.rangeErrorMin = 0;
            current_syscall_error.rangeErrorMax = maxIRQ;
            return EXCEPTION_SYSCALL_ERROR;
        }

        if (isIRQActive(irq)) {
            current_syscall_error.type = seL4_RevokeFirst;
            return EXCEPTION_SYSCALL_ERROR;
        }

        lu_ret = lookupTargetSlot(cnodeCap, index, depth);
        if (lu_ret.status != EXCEPTION_NONE) {
            return lu_ret.status;
        }
        destSlot = lu_ret.slot;

        status = ensureEmptySlot(destSlot);
        if (status != EXCEPTION_NONE) {
            return status;
        }

        setThreadState(ksCurThread, ThreadState_Restart);
        return invokeIRQControl(irq, destSlot, srcSlot);
    } else if (label == IRQInterruptControl) {
        return Arch_decodeInterruptControl(length, extraCaps);
    } else {
        do { printf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x @%x]: ", __func__, 77, (int)ksCurThread, (int)getRestartPC(ksCurThread)); printf("IRQControl: Illegal operation."); printf(">>" "\033[0m" "\n"); } while (0);
        current_syscall_error.type = seL4_IllegalOperation;
        return EXCEPTION_SYSCALL_ERROR;
    }
}

exception_t
invokeIRQControl(irq_t irq, cte_t *handlerSlot, cte_t *controlSlot)
{
    setIRQState(IRQNotifyAEP, irq);
    cteInsert(cap_irq_handler_cap_new(irq), controlSlot, handlerSlot);

    return EXCEPTION_NONE;
}

exception_t
decodeIRQHandlerInvocation(word_t label, unsigned int length, irq_t irq,
                           extra_caps_t extraCaps, word_t *buffer)
{
    switch (label) {
    case IRQAckIRQ:
        setThreadState(ksCurThread, ThreadState_Restart);
        invokeIRQHandler_AckIRQ(irq);
        return EXCEPTION_NONE;

    case IRQSetIRQHandler: {
        cap_t aepCap;
        cte_t *slot;

        if (extraCaps.excaprefs[0] == ((void *)0)) {
            current_syscall_error.type = seL4_TruncatedMessage;
            return EXCEPTION_SYSCALL_ERROR;
        }
        aepCap = extraCaps.excaprefs[0]->cap;
        slot = extraCaps.excaprefs[0];

        if (cap_get_capType(aepCap) != cap_async_endpoint_cap ||
                !cap_async_endpoint_cap_get_capAEPCanSend(aepCap)) {
            if (cap_get_capType(aepCap) != cap_async_endpoint_cap) {
                do { printf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x @%x]: ", __func__, 116, (int)ksCurThread, (int)getRestartPC(ksCurThread)); printf("IRQSetHandler: provided cap is not an async endpoint capability."); printf(">>" "\033[0m" "\n"); } while (0);
            } else {
                do { printf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x @%x]: ", __func__, 118, (int)ksCurThread, (int)getRestartPC(ksCurThread)); printf("IRQSetHandler: caller does not have send rights on the endpoint."); printf(">>" "\033[0m" "\n"); } while (0);
            }
            current_syscall_error.type = seL4_InvalidCapability;
            current_syscall_error.invalidCapNumber = 0;
            return EXCEPTION_SYSCALL_ERROR;
        }

        setThreadState(ksCurThread, ThreadState_Restart);
        invokeIRQHandler_SetIRQHandler(irq, aepCap, slot);
        return EXCEPTION_NONE;
    }

    case IRQClearIRQHandler:
        setThreadState(ksCurThread, ThreadState_Restart);
        invokeIRQHandler_ClearIRQHandler(irq);
        return EXCEPTION_NONE;
    case IRQSetMode: {
        bool_t trig, pol;

        if (length < 2) {
            do { printf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x @%x]: ", __func__, 138, (int)ksCurThread, (int)getRestartPC(ksCurThread)); printf("IRQSetMode: Not enough arguments", length); printf(">>" "\033[0m" "\n"); } while (0);
            current_syscall_error.type = seL4_TruncatedMessage;
            return EXCEPTION_SYSCALL_ERROR;
        }
        trig = getSyscallArg(0, buffer);
        pol = getSyscallArg(1, buffer);

        setThreadState(ksCurThread, ThreadState_Restart);
        invokeIRQHandler_SetMode(irq, !!trig, !!pol);
        return EXCEPTION_NONE;
    }

    default:
        do { printf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x @%x]: ", __func__, 151, (int)ksCurThread, (int)getRestartPC(ksCurThread)); printf("IRQHandler: Illegal operation."); printf(">>" "\033[0m" "\n"); } while (0);
        current_syscall_error.type = seL4_IllegalOperation;
        return EXCEPTION_SYSCALL_ERROR;
    }
}

void
invokeIRQHandler_AckIRQ(irq_t irq)
{
    maskInterrupt(false, irq);
}

void invokeIRQHandler_SetMode(irq_t irq, bool_t levelTrigger, bool_t polarityLow)
{
    setInterruptMode(irq, levelTrigger, polarityLow);
}

void
invokeIRQHandler_SetIRQHandler(irq_t irq, cap_t cap, cte_t *slot)
{
    cte_t *irqSlot;

    irqSlot = intStateIRQNode + irq;
    cteDeleteOne(irqSlot);
    cteInsert(cap, slot, irqSlot);
}

void
invokeIRQHandler_ClearIRQHandler(irq_t irq)
{
    cte_t *irqSlot;

    irqSlot = intStateIRQNode + irq;
    cteDeleteOne(irqSlot);
}

void
deletingIRQHandler(irq_t irq)
{
    cte_t *slot;

    do { printf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x @%x]: ", __func__, 192, (int)ksCurThread, (int)getRestartPC(ksCurThread)); printf("IRQ %d", irq); printf(">>" "\033[0m" "\n"); } while (0);
    slot = intStateIRQNode + irq;
    cteDeleteOne(slot);
}

void
deletedIRQHandler(irq_t irq)
{
    setIRQState(IRQInactive, irq);
}

void
handleInterrupt(irq_t irq)
{
    switch (intStateIRQTable[irq]) {
    case IRQNotifyAEP: {
        cap_t cap;

        cap = intStateIRQNode[irq].cap;

        if (cap_get_capType(cap) == cap_async_endpoint_cap &&
                cap_async_endpoint_cap_get_capAEPCanSend(cap)) {
            sendAsyncIPC(((async_endpoint_t *)(cap_async_endpoint_cap_get_capAEPPtr(cap))),
                         cap_async_endpoint_cap_get_capAEPBadge(cap));
        } else {

            printf("Undelivered IRQ: %d\n", (int)irq);

        }
        maskInterrupt(true, irq);
        break;
    }

    case IRQTimer:
        timerTick();
        resetTimer();
        break;

    case IRQReserved:
        handleReservedIRQ(irq);
        break;

    case IRQInactive:
        /*
         * This case shouldn't happen anyway unless the hardware or
         * platform code is broken. Hopefully masking it again should make
         * the interrupt go away.
         */
        maskInterrupt(true, irq);

        printf("Received disabled IRQ: %d\n", (int)irq);

        break;

    default:
        /* No corresponding haskell error */
        _fail("Invalid IRQ state", "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/interrupt.c", 248, __func__);
    }

    ackInterrupt(irq);
}

bool_t
isIRQActive(irq_t irq)
{
    return intStateIRQTable[irq] != IRQInactive;
}

void
setIRQState(irq_state_t irqState, irq_t irq)
{
    intStateIRQTable[irq] = irqState;
    maskInterrupt(irqState == IRQInactive, irq);
}
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/objecttype.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/assert.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 12 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/objecttype.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/config.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 13 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/objecttype.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 14 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/objecttype.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/api/failures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/objecttype.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/api/syscall.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/objecttype.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/object/objecttype.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 17 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/objecttype.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/machine/io.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 18 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/objecttype.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/objecttype.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 19 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/objecttype.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/structures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 20 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/objecttype.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/asyncendpoint.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 21 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/objecttype.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/endpoint.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 22 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/objecttype.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/cnode.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 23 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/objecttype.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/interrupt.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 24 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/objecttype.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/tcb.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 25 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/objecttype.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/untyped.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 26 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/objecttype.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/model/preemption.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 27 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/objecttype.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/model/statedata.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 28 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/objecttype.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/kernel/thread.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 29 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/objecttype.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/kernel/vspace.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 30 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/objecttype.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/machine.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 31 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/objecttype.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/util.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 32 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/objecttype.c" 2

word_t getObjectSize(word_t t, word_t userObjSize)
{
    if (t >= seL4_NonArchObjectTypeCount) {
        return Arch_getObjectSize(t);
    } else {
        switch (t) {
        case seL4_TCBObject:
            return ((4 + 4) + 1);
        case seL4_EndpointObject:
            return 4;
        case seL4_AsyncEndpointObject:
            return 4;
        case seL4_CapTableObject:
            return 4 + userObjSize;
        case seL4_UntypedObject:
            return userObjSize;
        default:
            _fail("Invalid object type", "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/objecttype.c", 50, __func__);
            return 0;
        }
    }
}

deriveCap_ret_t
deriveCap(cte_t *slot, cap_t cap)
{
    deriveCap_ret_t ret;

    if (isArchCap(cap)) {
        return Arch_deriveCap(slot, cap);
    }

    switch (cap_get_capType(cap)) {
    case cap_zombie_cap:
        ret.status = EXCEPTION_NONE;
        ret.cap = cap_null_cap_new();
        break;

    case cap_irq_control_cap:
        ret.status = EXCEPTION_NONE;
        ret.cap = cap_null_cap_new();
        break;

    case cap_reply_cap:
        ret.status = EXCEPTION_NONE;
        ret.cap = cap_null_cap_new();
        break;

    default:
        ret.status = EXCEPTION_NONE;
        ret.cap = cap;
    }

    return ret;
}

finaliseCap_ret_t
finaliseCap(cap_t cap, bool_t final, bool_t exposed)
{
    finaliseCap_ret_t fc_ret;

    if (isArchCap(cap)) {
        fc_ret.remainder = Arch_finaliseCap(cap, final);
        fc_ret.irq = irqInvalid;
        return fc_ret;
    }

    switch (cap_get_capType(cap)) {
    case cap_endpoint_cap:
        if (final) {
            epCancelAll(((endpoint_t *)(cap_endpoint_cap_get_capEPPtr(cap))));
        }

        fc_ret.remainder = cap_null_cap_new();
        fc_ret.irq = irqInvalid;
        return fc_ret;

    case cap_async_endpoint_cap:
        if (final) {
            async_endpoint_t *aep = ((async_endpoint_t *)(cap_async_endpoint_cap_get_capAEPPtr(cap)));
            tcb_t *boundTCB = (tcb_t*)async_endpoint_ptr_get_aepBoundTCB(aep);;

            if (boundTCB) {
                unbindAsyncEndpoint(boundTCB);
            }

            aepCancelAll(aep);
        }
        fc_ret.remainder = cap_null_cap_new();
        fc_ret.irq = irqInvalid;
        return fc_ret;

    case cap_reply_cap: {
        tcb_t *callee;
        cte_t *replySlot;
        do { if (cap_reply_cap_get_capInCDT(cap)) break; cputstring("Assertion failed: " "cap_reply_cap_get_capInCDT(cap)" "\n"); terminate(3); } while(0);
        callee = ((tcb_t *)(cap_reply_cap_get_capTCBPtr(cap)));
        replySlot = (((cte_t *)((unsigned int)(callee)&~((1ul<<(((4 + 4) + 1)))-1ul)))+(tcbReply));
        replySlot->cap = cap_reply_cap_new(false, true, ((unsigned int) (((void *)0))));
        fc_ret.remainder = cap_null_cap_new();
        fc_ret.irq = irqInvalid;
        return fc_ret;
    }
    case cap_null_cap:
    case cap_domain_cap:
        fc_ret.remainder = cap_null_cap_new();
        fc_ret.irq = irqInvalid;
        return fc_ret;
    }

    if (exposed) {
        _fail("finaliseCap: failed to finalise immediately.", "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/objecttype.c", 144, __func__);
    }

    switch (cap_get_capType(cap)) {
    case cap_cnode_cap: {
        if (final) {
            fc_ret.remainder =
                Zombie_new(
                    1 << cap_cnode_cap_get_capCNodeRadix(cap),
                    cap_cnode_cap_get_capCNodeRadix(cap),
                    cap_cnode_cap_get_capCNodePtr(cap)
                );
            fc_ret.irq = irqInvalid;
            return fc_ret;
        }
        break;
    }

    case cap_thread_cap: {
        if (final) {
            tcb_t *tcb;
            cte_t *cte_ptr;
            cte_t *replySlot;

            tcb = ((tcb_t *)(cap_thread_cap_get_capTCBPtr(cap)));
            cte_ptr = (((cte_t *)((unsigned int)(tcb)&~((1ul<<(((4 + 4) + 1)))-1ul)))+(tcbCTable));
            unbindAsyncEndpoint(tcb);
            suspend(tcb);
            replySlot = (((cte_t *)((unsigned int)(tcb)&~((1ul<<(((4 + 4) + 1)))-1ul)))+(tcbReply));
            if (cap_get_capType(replySlot->cap) == cap_reply_cap) {
                do { if (!cap_reply_cap_get_capInCDT(replySlot->cap)) break; cputstring("Assertion failed: " "!cap_reply_cap_get_capInCDT(replySlot->cap)" "\n"); terminate(3); } while(0);
                do { if (cap_reply_cap_get_capTCBPtr(replySlot->cap) == 0) break; cputstring("Assertion failed: " "cap_reply_cap_get_capTCBPtr(replySlot->cap) == 0" "\n"); terminate(3); } while(0);
                replySlot->cap = cap_null_cap_new();
            }
            Arch_prepareThreadDelete(tcb);
            fc_ret.remainder =
                Zombie_new(
                    tcbArchCNodeEntries,
                    (1ul<<(5)),
                    ((unsigned int)(cte_ptr))
                );
            fc_ret.irq = irqInvalid;
            return fc_ret;
        }
        break;
    }

    case cap_zombie_cap:
        fc_ret.remainder = cap;
        fc_ret.irq = irqInvalid;
        return fc_ret;

    case cap_irq_handler_cap:
        if (final) {
            irq_t irq = cap_irq_handler_cap_get_capIRQ(cap);

            deletingIRQHandler(irq);

            fc_ret.remainder = cap_null_cap_new();
            fc_ret.irq = irq;
            return fc_ret;
        }
        break;
    }

    fc_ret.remainder = cap_null_cap_new();
    fc_ret.irq = irqInvalid;
    return fc_ret;
}

cap_t
recycleCap(bool_t is_final, cap_t cap)
{
    if (isArchCap(cap)) {
        return Arch_recycleCap(is_final, cap);
    }

    switch (cap_get_capType(cap)) {
    case cap_null_cap:
        _fail("recycleCap: can't reconstruct Null", "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/objecttype.c", 223, __func__);
        break;
    case cap_domain_cap:
        return cap;
    case cap_cnode_cap:
        return cap;
    case cap_thread_cap:
        return cap;
    case cap_zombie_cap: {
        word_t type;

        type = cap_zombie_cap_get_capZombieType(cap);
        if (type == (1ul<<(5))) {
            tcb_t *tcb;
            _thread_state_t ts __attribute__((unused));

            tcb = ((tcb_t *)(cap_zombie_cap_get_capZombiePtr(cap) + (1 << (4 + 4))))
                                       ;
            ts = thread_state_get_tsType(tcb->tcbState);
            /* Haskell error:
             * "Zombie cap should point at inactive thread" */
            do { if (ts == ThreadState_Inactive || ts != ThreadState_IdleThreadState) break; cputstring("Assertion failed: " "ts == ThreadState_Inactive || ts != ThreadState_IdleThreadState" "\n"); terminate(3); } while(0)
                                                     ;
            /* Haskell error:
             * "Zombie cap should not point at queued thread" */
            do { if (!thread_state_get_tcbQueued(tcb->tcbState)) break; cputstring("Assertion failed: " "!thread_state_get_tcbQueued(tcb->tcbState)" "\n"); terminate(3); } while(0);
            /* Haskell error:
             * "Zombie cap should not point at bound thread" */
            do { if (tcb->boundAsyncEndpoint == ((void *)0)) break; cputstring("Assertion failed: " "tcb->boundAsyncEndpoint == ((void *)0)" "\n"); terminate(3); } while(0);

            /* makeObject doesn't exist in C, objects are initialised by
             * zeroing. The effect of recycle in Haskell is to reinitialise
             * the TCB, with the exception of the TCB CTEs.  I achieve this
             * here by zeroing the TCB part of the structure, while leaving
             * the CNode alone. */
            memzero(tcb, sizeof (tcb_t));
            Arch_initContext(&tcb->tcbArch.tcbContext);
            tcb->tcbTimeSlice = 1;
            tcb->tcbDomain = ksCurDomain;

            return cap_thread_cap_new(((unsigned int) (tcb)));
        } else {
            return cap_cnode_cap_new(type, 0, 0,
                                     cap_zombie_cap_get_capZombiePtr(cap));
        }
    }
    case cap_endpoint_cap: {
        word_t badge = cap_endpoint_cap_get_capEPBadge(cap);
        if (badge) {
            endpoint_t* ep = (endpoint_t*)
                             cap_endpoint_cap_get_capEPPtr(cap);
            epCancelBadgedSends(ep, badge);
        }
        return cap;
    }
    default:
        return cap;
    }
}

bool_t __attribute__((__const__))
hasRecycleRights(cap_t cap)
{
    switch (cap_get_capType(cap)) {
    case cap_null_cap:
    case cap_domain_cap:
        return false;

    case cap_endpoint_cap:
        return cap_endpoint_cap_get_capCanSend(cap) &&
               cap_endpoint_cap_get_capCanReceive(cap) &&
               cap_endpoint_cap_get_capCanGrant(cap);

    case cap_async_endpoint_cap:
        return cap_async_endpoint_cap_get_capAEPCanSend(cap) &&
               cap_async_endpoint_cap_get_capAEPCanReceive(cap);

    default:
        if (isArchCap(cap)) {
            return Arch_hasRecycleRights(cap);
        } else {
            return true;
        }
    }
}

bool_t __attribute__((__const__))
sameRegionAs(cap_t cap_a, cap_t cap_b)
{
    switch (cap_get_capType(cap_a)) {
    case cap_untyped_cap: {
        word_t aBase, bBase, aTop, bTop;

        aBase = (word_t)((word_t *)(cap_untyped_cap_get_capPtr(cap_a)));
        bBase = (word_t)cap_get_capPtr(cap_b);

        aTop = aBase + ((1ul<<(cap_untyped_cap_get_capBlockSize(cap_a)))-1ul);
        bTop = bBase + ((1ul<<(cap_get_capSizeBits(cap_b)))-1ul);

        return ((bBase != 0) && (aBase <= bBase) &&
                (bTop <= aTop) && (bBase <= bTop));
    }

    case cap_endpoint_cap:
        if (cap_get_capType(cap_b) == cap_endpoint_cap) {
            return cap_endpoint_cap_get_capEPPtr(cap_a) ==
                   cap_endpoint_cap_get_capEPPtr(cap_b);
        }
        break;

    case cap_async_endpoint_cap:
        if (cap_get_capType(cap_b) == cap_async_endpoint_cap) {
            return cap_async_endpoint_cap_get_capAEPPtr(cap_a) ==
                   cap_async_endpoint_cap_get_capAEPPtr(cap_b);
        }
        break;

    case cap_cnode_cap:
        if (cap_get_capType(cap_b) == cap_cnode_cap) {
            return (cap_cnode_cap_get_capCNodePtr(cap_a) ==
                    cap_cnode_cap_get_capCNodePtr(cap_b)) &&
                   (cap_cnode_cap_get_capCNodeRadix(cap_a) ==
                    cap_cnode_cap_get_capCNodeRadix(cap_b));
        }
        break;

    case cap_thread_cap:
        if (cap_get_capType(cap_b) == cap_thread_cap) {
            return cap_thread_cap_get_capTCBPtr(cap_a) ==
                   cap_thread_cap_get_capTCBPtr(cap_b);
        }
        break;

    case cap_reply_cap:
        if (cap_get_capType(cap_b) == cap_reply_cap) {
            return cap_reply_cap_get_capTCBPtr(cap_a) ==
                   cap_reply_cap_get_capTCBPtr(cap_b);
        }
        break;

    case cap_domain_cap:
        if (cap_get_capType(cap_b) == cap_domain_cap) {
            return true;
        }
        break;

    case cap_irq_control_cap:
        if (cap_get_capType(cap_b) == cap_irq_control_cap ||
                cap_get_capType(cap_b) == cap_irq_handler_cap) {
            return true;
        }
        break;

    case cap_irq_handler_cap:
        if (cap_get_capType(cap_b) == cap_irq_handler_cap) {
            return (irq_t)cap_irq_handler_cap_get_capIRQ(cap_a) ==
                   (irq_t)cap_irq_handler_cap_get_capIRQ(cap_b);
        }
        break;

    default:
        if (isArchCap(cap_a) &&
                isArchCap(cap_b)) {
            return Arch_sameRegionAs(cap_a, cap_b);
        }
        break;
    }

    return false;
}

bool_t __attribute__((__const__))
sameObjectAs(cap_t cap_a, cap_t cap_b)
{
    if (cap_get_capType(cap_a) == cap_untyped_cap) {
        return false;
    }
    if (cap_get_capType(cap_a) == cap_irq_control_cap &&
            cap_get_capType(cap_b) == cap_irq_handler_cap) {
        return false;
    }
    if (isArchCap(cap_a) && isArchCap(cap_b)) {
        return Arch_sameObjectAs(cap_a, cap_b);
    }
    return sameRegionAs(cap_a, cap_b);
}

cap_t __attribute__((__const__))
updateCapData(bool_t preserve, word_t newData, cap_t cap)
{
    if (isArchCap(cap)) {
        return Arch_updateCapData(preserve, newData, cap);
    }

    switch (cap_get_capType(cap)) {
    case cap_endpoint_cap:
        if (!preserve && cap_endpoint_cap_get_capEPBadge(cap) == 0) {
            return cap_endpoint_cap_set_capEPBadge(cap, newData);
        } else {
            return cap_null_cap_new();
        }

    case cap_async_endpoint_cap:
        if (!preserve && cap_async_endpoint_cap_get_capAEPBadge(cap) == 0) {
            return cap_async_endpoint_cap_set_capAEPBadge(cap, newData);
        } else {
            return cap_null_cap_new();
        }

    case cap_cnode_cap: {
        word_t guard, guardSize;
        cnode_capdata_t w = { .words = { newData } };

        guardSize = cnode_capdata_get_guardSize(w);

        if (guardSize + cap_cnode_cap_get_capCNodeRadix(cap) > 32) {
            return cap_null_cap_new();
        } else {
            cap_t new_cap;

            guard = cnode_capdata_get_guard(w) & ((1ul<<(guardSize))-1ul);
            new_cap = cap_cnode_cap_set_capCNodeGuard(cap, guard);
            new_cap = cap_cnode_cap_set_capCNodeGuardSize(new_cap,
                                                          guardSize);

            return new_cap;
        }
    }

    default:
        return cap;
    }
}

cap_t __attribute__((__const__))
maskCapRights(cap_rights_t cap_rights, cap_t cap)
{
    if (isArchCap(cap)) {
        return Arch_maskCapRights(cap_rights, cap);
    }

    switch (cap_get_capType(cap)) {
    case cap_null_cap:
    case cap_domain_cap:
    case cap_cnode_cap:
    case cap_untyped_cap:
    case cap_reply_cap:
    case cap_irq_control_cap:
    case cap_irq_handler_cap:
    case cap_zombie_cap:
    case cap_thread_cap:
        return cap;

    case cap_endpoint_cap: {
        cap_t new_cap;

        new_cap = cap_endpoint_cap_set_capCanSend(
                      cap, cap_endpoint_cap_get_capCanSend(cap) &
                      cap_rights_get_capAllowWrite(cap_rights));
        new_cap = cap_endpoint_cap_set_capCanReceive(
                      new_cap, cap_endpoint_cap_get_capCanReceive(cap) &
                      cap_rights_get_capAllowRead(cap_rights));
        new_cap = cap_endpoint_cap_set_capCanGrant(
                      new_cap, cap_endpoint_cap_get_capCanGrant(cap) &
                      cap_rights_get_capAllowGrant(cap_rights));

        return new_cap;
    }

    case cap_async_endpoint_cap: {
        cap_t new_cap;

        new_cap = cap_async_endpoint_cap_set_capAEPCanSend(
                      cap, cap_async_endpoint_cap_get_capAEPCanSend(cap) &
                      cap_rights_get_capAllowWrite(cap_rights));
        new_cap = cap_async_endpoint_cap_set_capAEPCanReceive(new_cap,
                                                              cap_async_endpoint_cap_get_capAEPCanReceive(cap) &
                                                              cap_rights_get_capAllowRead(cap_rights));

        return new_cap;
    }

    default:
        _fail("Invalid cap type", "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/objecttype.c", 506, __func__); /* Sentinel for invalid enums */
    }
}

cap_t
createObject(object_t t, void *regionBase, int userSize, bool_t deviceMemory)
{
    /* Handle architecture-specific objects. */
    if (t >= (object_t) seL4_NonArchObjectTypeCount) {
        return Arch_createObject(t, regionBase, userSize, deviceMemory);
    }

    /* Create objects. */
    switch ((api_object_t)t) {
    case seL4_TCBObject: {
        tcb_t *tcb;
        memzero(regionBase, 1UL << ((4 + 4) + 1));
        tcb = ((tcb_t *)((word_t)regionBase + (1 << (4 + 4))));
        /** AUXUPD: "(True, ptr_retyps 5
          (Ptr ((ptr_val \<acute>tcb) - 0x100) :: cte_C ptr)
            o (ptr_retyp \<acute>tcb))" */

        /* Setup non-zero parts of the TCB. */

        Arch_initContext(&tcb->tcbArch.tcbContext);
        tcb->tcbTimeSlice = 1;
        tcb->tcbDomain = ksCurDomain;

        return cap_thread_cap_new(((unsigned int) (tcb)));
    }

    case seL4_EndpointObject:
        memzero(regionBase, 1UL << 4);
        /** AUXUPD: "(True, ptr_retyp
          (Ptr (ptr_val \<acute>regionBase) :: endpoint_C ptr))" */
        return cap_endpoint_cap_new(0, true, true, true,
                                    ((unsigned int)(regionBase)));

    case seL4_AsyncEndpointObject:
        memzero(regionBase, 1UL << 4);
        /** AUXUPD: "(True, ptr_retyp
              (Ptr (ptr_val \<acute>regionBase) :: async_endpoint_C ptr))" */
        return cap_async_endpoint_cap_new(0, true, true,
                                          ((unsigned int)(regionBase)));

    case seL4_CapTableObject:
        memzero(regionBase, 1UL << (4 + userSize));
        /** AUXUPD: "(True, ptr_retyps (2 ^ (unat \<acute>userSize))
          (Ptr (ptr_val \<acute>regionBase) :: cte_C ptr))" */
        /** GHOSTUPD: "(True, gs_new_cnodes (unat \<acute>userSize)
                                (ptr_val \<acute>regionBase)
                                (4 + unat \<acute>userSize))" */
        return cap_cnode_cap_new(userSize, 0, 0, ((unsigned int)(regionBase)));

    case seL4_UntypedObject:
        /*
         * No objects need to be created; instead, just insert caps into
         * the destination slots.
         */
        return cap_untyped_cap_new(deviceMemory, userSize, ((unsigned int)(regionBase)));

    default:
        _fail("Invalid object type", "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/objecttype.c", 568, __func__);
    }
}

void
createNewObjects(object_t t, cte_t *parent, slot_range_t slots,
                 void *regionBase, unsigned int userSize, bool_t deviceMemory)
{
    word_t objectSize;
    void *nextFreeArea;
    unsigned int i;

    /* Create the objects. */
    nextFreeArea = regionBase;
    objectSize = getObjectSize(t, userSize);
    for (i = 0; i < slots.length; i++) {
        /* Create the object. */
        /** AUXUPD: "(True, typ_clear_region (ptr_val \<acute> nextFreeArea + ((\<acute> i) << unat (\<acute> objectSize))) (unat (\<acute> objectSize)))" */
        cap_t cap = createObject(t, (void *)((word_t)nextFreeArea + (i << objectSize)), userSize, deviceMemory);

        /* Insert the cap into the user's cspace. */
        insertNewCap(parent, &slots.cnode[slots.offset + i], cap);

        /* Move along to the next region of memory. been merged into a formula of i */
    }
}

exception_t
decodeInvocation(word_t label, unsigned int length,
                 cptr_t capIndex, cte_t *slot, cap_t cap,
                 extra_caps_t extraCaps, bool_t block, bool_t call,
                 word_t *buffer)
{
    if (isArchCap(cap)) {
        return Arch_decodeInvocation(label, length, capIndex,
                                     slot, cap, extraCaps, buffer);
    }

    switch (cap_get_capType(cap)) {
    case cap_null_cap:
        do { printf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x @%x]: ", __func__, 608, (int)ksCurThread, (int)getRestartPC(ksCurThread)); printf("Attempted to invoke a null cap #%u.", capIndex); printf(">>" "\033[0m" "\n"); } while (0);
        current_syscall_error.type = seL4_InvalidCapability;
        current_syscall_error.invalidCapNumber = 0;
        return EXCEPTION_SYSCALL_ERROR;

    case cap_zombie_cap:
        do { printf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x @%x]: ", __func__, 614, (int)ksCurThread, (int)getRestartPC(ksCurThread)); printf("Attempted to invoke a zombie cap #%u.", capIndex); printf(">>" "\033[0m" "\n"); } while (0);
        current_syscall_error.type = seL4_InvalidCapability;
        current_syscall_error.invalidCapNumber = 0;
        return EXCEPTION_SYSCALL_ERROR;

    case cap_endpoint_cap:
        if (__builtin_expect(!!(!cap_endpoint_cap_get_capCanSend(cap)), 0)) {
            do { printf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x @%x]: ", __func__,
                              622
# 621 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/objecttype.c"
            , (int)ksCurThread, (int)getRestartPC(ksCurThread)); printf("Attempted to invoke a read-only endpoint cap #%u.", capIndex); printf(">>" "\033[0m" "\n"); } while (0)
                               ;
            current_syscall_error.type = seL4_InvalidCapability;
            current_syscall_error.invalidCapNumber = 0;
            return EXCEPTION_SYSCALL_ERROR;
        }

        setThreadState(ksCurThread, ThreadState_Restart);
        return performInvocation_Endpoint(
                   ((endpoint_t *)(cap_endpoint_cap_get_capEPPtr(cap))),
                   cap_endpoint_cap_get_capEPBadge(cap),
                   cap_endpoint_cap_get_capCanGrant(cap), block, call);

    case cap_async_endpoint_cap: {
        if (__builtin_expect(!!(!cap_async_endpoint_cap_get_capAEPCanSend(cap)), 0)) {
            do { printf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x @%x]: ", __func__,
                              637
# 636 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/objecttype.c"
            , (int)ksCurThread, (int)getRestartPC(ksCurThread)); printf("Attempted to invoke a read-only async-endpoint cap #%u.", capIndex); printf(">>" "\033[0m" "\n"); } while (0)
                               ;
            current_syscall_error.type = seL4_InvalidCapability;
            current_syscall_error.invalidCapNumber = 0;
            return EXCEPTION_SYSCALL_ERROR;
        }

        setThreadState(ksCurThread, ThreadState_Restart);
        return performInvocation_AsyncEndpoint(
                   ((async_endpoint_t *)(cap_async_endpoint_cap_get_capAEPPtr(cap))),
                   cap_async_endpoint_cap_get_capAEPBadge(cap));
    }

    case cap_reply_cap:
        if (__builtin_expect(!!(cap_reply_cap_get_capReplyMaster(cap)), 0)) {
            do { printf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x @%x]: ", __func__,
                              652
# 651 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/objecttype.c"
            , (int)ksCurThread, (int)getRestartPC(ksCurThread)); printf("Attempted to invoke an invalid reply cap #%u.", capIndex); printf(">>" "\033[0m" "\n"); } while (0)
                               ;
            current_syscall_error.type = seL4_InvalidCapability;
            current_syscall_error.invalidCapNumber = 0;
            return EXCEPTION_SYSCALL_ERROR;
        }

        setThreadState(ksCurThread, ThreadState_Restart);
        return performInvocation_Reply(
                   ((tcb_t *)(cap_reply_cap_get_capTCBPtr(cap))), slot);

    case cap_thread_cap:
        return decodeTCBInvocation(label, length, cap,
                                   slot, extraCaps, call, buffer);

    case cap_domain_cap:
        return decodeDomainInvocation(label, length, extraCaps, buffer);

    case cap_cnode_cap:
        return decodeCNodeInvocation(label, length, cap, extraCaps, buffer);

    case cap_untyped_cap:
        return decodeUntypedInvocation(label, length, slot, cap, extraCaps,
                                       call, buffer);

    case cap_irq_control_cap:
        return decodeIRQControlInvocation(label, length, slot,
                                          extraCaps, buffer);

    case cap_irq_handler_cap:
        return decodeIRQHandlerInvocation(label, length,
                                          cap_irq_handler_cap_get_capIRQ(cap), extraCaps, buffer);

    default:
        _fail("Invalid cap type", "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/objecttype.c", 685, __func__);
    }
}

exception_t
performInvocation_Endpoint(endpoint_t *ep, word_t badge,
                           bool_t canGrant, bool_t block,
                           bool_t call)
{
    sendIPC(block, call, badge, canGrant, ksCurThread, ep);

    return EXCEPTION_NONE;
}

exception_t
performInvocation_AsyncEndpoint(async_endpoint_t *aep, word_t badge)
{
    sendAsyncIPC(aep, badge);

    return EXCEPTION_NONE;
}

exception_t
performInvocation_Reply(tcb_t *thread, cte_t *slot)
{
    doReplyTransfer(ksCurThread, thread, slot);
    return EXCEPTION_NONE;
}
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/tcb.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 12 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/tcb.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/api/failures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 13 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/tcb.c" 2
# 1 "./api/invocation.h" 1
/* @LICENSE(OKL_CORE) */

/* This header was generated by kernel/tools/invocation_header_gen.py.
 *
 * To add an invocation call number, edit libsel4/include/interfaces/sel4.xml.
 *
 */
# 14 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/tcb.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/api/syscall.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/tcb.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/machine/io.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/tcb.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/structures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 17 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/tcb.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/objecttype.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 18 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/tcb.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/cnode.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 19 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/tcb.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/tcb.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 20 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/tcb.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/kernel/cspace.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 21 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/tcb.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/kernel/thread.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 22 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/tcb.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/kernel/vspace.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 23 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/tcb.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/model/statedata.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 24 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/tcb.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/util.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 25 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/tcb.c" 2

static inline void
addToBitmap(word_t dom, word_t prio)
{
    uint32_t l1index;

    l1index = prio_to_l1index(prio);
    ksReadyQueuesL1Bitmap[dom] |= (1ul<<(l1index));
    ksReadyQueuesL2Bitmap[dom][l1index] |= (1ul<<(prio & ((1ul<<(5))-1ul)));
}

static inline void
removeFromBitmap(word_t dom, word_t prio)
{
    uint32_t l1index;

    l1index = prio_to_l1index(prio);
    ksReadyQueuesL2Bitmap[dom][l1index] &= ~(1ul<<(prio & ((1ul<<(5))-1ul)));
    if (__builtin_expect(!!(!ksReadyQueuesL2Bitmap[dom][l1index]), 0)) {
        ksReadyQueuesL1Bitmap[dom] &= ~(1ul<<(l1index));
    }
}

/* Add TCB to the head of a scheduler queue */
void
tcbSchedEnqueue(tcb_t *tcb)
{
    if (!thread_state_get_tcbQueued(tcb->tcbState)) {
        tcb_queue_t queue;
        __attribute__((unused)) dom_t dom;
        prio_t prio;
        unsigned int idx;

        dom = tcb->tcbDomain;
        prio = tcb->tcbPriority;
        idx = ready_queues_index(dom, prio);
        queue = ksReadyQueues[idx];

        if (!queue.end) { /* Empty list */
            queue.end = tcb;
            addToBitmap(dom, prio);
        } else {
            queue.head->tcbSchedPrev = tcb;
        }
        tcb->tcbSchedPrev = ((void *)0);
        tcb->tcbSchedNext = queue.head;
        queue.head = tcb;

        ksReadyQueues[idx] = queue;

        thread_state_ptr_set_tcbQueued(&tcb->tcbState, true);
    }
}

/* Add TCB to the end of a scheduler queue */
void
tcbSchedAppend(tcb_t *tcb)
{
    if (!thread_state_get_tcbQueued(tcb->tcbState)) {
        tcb_queue_t queue;
        __attribute__((unused)) dom_t dom;
        prio_t prio;
        unsigned int idx;

        dom = tcb->tcbDomain;
        prio = tcb->tcbPriority;
        idx = ready_queues_index(dom, prio);
        queue = ksReadyQueues[idx];

        if (!queue.head) { /* Empty list */
            queue.head = tcb;
            addToBitmap(dom, prio);
        } else {
            queue.end->tcbSchedNext = tcb;
        }
        tcb->tcbSchedPrev = queue.end;
        tcb->tcbSchedNext = ((void *)0);
        queue.end = tcb;

        ksReadyQueues[idx] = queue;

        thread_state_ptr_set_tcbQueued(&tcb->tcbState, true);
    }
}

/* Remove TCB from a scheduler queue */
void
tcbSchedDequeue(tcb_t *tcb)
{
    if (thread_state_get_tcbQueued(tcb->tcbState)) {
        tcb_queue_t queue;
        __attribute__((unused)) dom_t dom;
        prio_t prio;
        unsigned int idx;

        dom = tcb->tcbDomain;
        prio = tcb->tcbPriority;
        idx = ready_queues_index(dom, prio);
        queue = ksReadyQueues[idx];

        if (tcb->tcbSchedPrev) {
            tcb->tcbSchedPrev->tcbSchedNext = tcb->tcbSchedNext;
        } else {
            queue.head = tcb->tcbSchedNext;
            if (__builtin_expect(!!(!tcb->tcbSchedNext), 1)) {
                removeFromBitmap(dom, prio);
            }
        }

        if (tcb->tcbSchedNext) {
            tcb->tcbSchedNext->tcbSchedPrev = tcb->tcbSchedPrev;
        } else {
            queue.end = tcb->tcbSchedPrev;
        }

        ksReadyQueues[idx] = queue;

        thread_state_ptr_set_tcbQueued(&tcb->tcbState, false);
    }
}

/* Add TCB to the end of an endpoint queue */
tcb_queue_t
tcbEPAppend(tcb_t *tcb, tcb_queue_t queue)
{
    if (!queue.head) { /* Empty list */
        queue.head = tcb;
    } else {
        queue.end->tcbEPNext = tcb;
    }
    tcb->tcbEPPrev = queue.end;
    tcb->tcbEPNext = ((void *)0);
    queue.end = tcb;

    return queue;
}

/* Remove TCB from an endpoint queue */
tcb_queue_t
tcbEPDequeue(tcb_t *tcb, tcb_queue_t queue)
{
    if (tcb->tcbEPPrev) {
        tcb->tcbEPPrev->tcbEPNext = tcb->tcbEPNext;
    } else {
        queue.head = tcb->tcbEPNext;
    }

    if (tcb->tcbEPNext) {
        tcb->tcbEPNext->tcbEPPrev = tcb->tcbEPPrev;
    } else {
        queue.end = tcb->tcbEPPrev;
    }

    return queue;
}

cptr_t __attribute__((__pure__))
getExtraCPtr(word_t *bufferPtr, unsigned int i)
{
    return (cptr_t)bufferPtr[seL4_MsgMaxLength + 2 + i];
}

void
setExtraBadge(word_t *bufferPtr, word_t badge,
              unsigned int i)
{
    bufferPtr[seL4_MsgMaxLength + 2 + i] = badge;
}

void
setupCallerCap(tcb_t *sender, tcb_t *receiver)
{
    cte_t *replySlot, *callerSlot;
    cap_t masterCap __attribute__((unused)), callerCap __attribute__((unused));

    setThreadState(sender, ThreadState_BlockedOnReply);
    replySlot = (((cte_t *)((unsigned int)(sender)&~((1ul<<(((4 + 4) + 1)))-1ul)))+(tcbReply));
    masterCap = replySlot->cap;
    /* Haskell error: "Sender must have a valid master reply cap" */
    do { if (cap_get_capType(masterCap) == cap_reply_cap) break; cputstring("Assertion failed: " "cap_get_capType(masterCap) == cap_reply_cap" "\n"); terminate(3); } while(0);
    do { if (cap_reply_cap_get_capReplyMaster(masterCap)) break; cputstring("Assertion failed: " "cap_reply_cap_get_capReplyMaster(masterCap)" "\n"); terminate(3); } while(0);
    do { if (((tcb_t *)(cap_reply_cap_get_capTCBPtr(masterCap))) == ((void *)0)) break; cputstring("Assertion failed: " "((tcb_t *)(cap_reply_cap_get_capTCBPtr(masterCap))) == ((void *)0)" "\n"); terminate(3); } while(0);
    cap_reply_cap_ptr_set_capTCBPtr(&replySlot->cap, ((unsigned int) (receiver)));
    callerSlot = (((cte_t *)((unsigned int)(receiver)&~((1ul<<(((4 + 4) + 1)))-1ul)))+(tcbCaller));
    callerCap = callerSlot->cap;
    /* Haskell error: "Caller cap must not already exist" */
    do { if (cap_get_capType(callerCap) == cap_null_cap) break; cputstring("Assertion failed: " "cap_get_capType(callerCap) == cap_null_cap" "\n"); terminate(3); } while(0);
    callerSlot->cap = cap_reply_cap_new(false, false, ((unsigned int) (sender)));
}

void
deleteCallerCap(tcb_t *receiver)
{
    cte_t *callerSlot, *replySlot;
    tcb_t *replyTCB;

    callerSlot = (((cte_t *)((unsigned int)(receiver)&~((1ul<<(((4 + 4) + 1)))-1ul)))+(tcbCaller));
    if (cap_get_capType(callerSlot->cap) == cap_reply_cap) {
        replyTCB = ((tcb_t *)(cap_reply_cap_get_capTCBPtr(callerSlot->cap)));
        /* Is it possible for a caller cap to exist without a valid replyTCB? */
        if (replyTCB) {
            replySlot = (((cte_t *)((unsigned int)(replyTCB)&~((1ul<<(((4 + 4) + 1)))-1ul)))+(tcbReply));
            do { if (cap_get_capType(replySlot->cap) == cap_reply_cap) break; cputstring("Assertion failed: " "cap_get_capType(replySlot->cap) == cap_reply_cap" "\n"); terminate(3); } while(0);
            do { if (cap_reply_cap_get_capInCDT(callerSlot->cap) == cap_reply_cap_get_capInCDT(replySlot->cap)) break; cputstring("Assertion failed: " "cap_reply_cap_get_capInCDT(callerSlot->cap) == cap_reply_cap_get_capInCDT(replySlot->cap)" "\n"); terminate(3); } while(0);
            if (cap_reply_cap_get_capInCDT(replySlot->cap)) {
                cdtRemove(replySlot);
                cap_reply_cap_ptr_set_capInCDT(&replySlot->cap, false);
            }
            cap_reply_cap_ptr_set_capTCBPtr(&replySlot->cap, ((unsigned int) (((void *)0))));
        }
        if (cap_reply_cap_get_capInCDT(callerSlot->cap)) {
            cdtRemove(callerSlot);
        }
        callerSlot->cap = cap_null_cap_new();
    }
}

extra_caps_t current_extra_caps;

exception_t
lookupExtraCaps(tcb_t* thread, word_t *bufferPtr, message_info_t info)
{
    lookupSlot_raw_ret_t lu_ret;
    cptr_t cptr;
    unsigned int i, length;

    if (!bufferPtr) {
        current_extra_caps.excaprefs[0] = ((void *)0);
        return EXCEPTION_NONE;
    }

    length = message_info_get_msgExtraCaps(info);

    for (i = 0; i < length; i++) {
        cptr = getExtraCPtr(bufferPtr, i);

        lu_ret = lookupSlot(thread, cptr);
        if (lu_ret.status != EXCEPTION_NONE) {
            current_fault = fault_cap_fault_new(cptr, false);
            return lu_ret.status;
        }

        current_extra_caps.excaprefs[i] = lu_ret.slot;
    }
    if (i < ((1ul<<(seL4_MsgExtraCapBits))-1)) {
        current_extra_caps.excaprefs[i] = ((void *)0);
    }

    return EXCEPTION_NONE;
}

/* Copy IPC MRs from one thread to another */
unsigned int
copyMRs(tcb_t *sender, word_t *sendBuf, tcb_t *receiver,
        word_t *recvBuf, unsigned int n)
{
    unsigned int i;

    /* Copy inline words */
    for (i = 0; i < n && i < n_msgRegisters; i++) {
        setRegister(receiver, msgRegisters[i],
                    getRegister(sender, msgRegisters[i]));
    }

    if (!recvBuf || !sendBuf) {
        return i;
    }

    /* Copy out-of-line words */
    for (; i < n; i++) {
        recvBuf[i + 1] = sendBuf[i + 1];
    }

    return i;
}

/* The following functions sit in the syscall error monad, but include the
 * exception cases for the preemptible bottom end, as they call the invoke
 * functions directly.  This is a significant deviation from the Haskell
 * spec. */
exception_t
decodeTCBInvocation(word_t label, unsigned int length, cap_t cap,
                    cte_t* slot, extra_caps_t extraCaps, bool_t call,
                    word_t *buffer)
{
    switch (label) {
    case TCBReadRegisters:
        /* Second level of decoding */
        return decodeReadRegisters(cap, length, call, buffer);

    case TCBWriteRegisters:
        return decodeWriteRegisters(cap, length, buffer);

    case TCBCopyRegisters:
        return decodeCopyRegisters(cap, length, extraCaps, buffer);

    case TCBSuspend:
        /* Jump straight to the invoke */
        setThreadState(ksCurThread, ThreadState_Restart);
        return invokeTCB_Suspend(
                   ((tcb_t *)(cap_thread_cap_get_capTCBPtr(cap))));

    case TCBResume:
        setThreadState(ksCurThread, ThreadState_Restart);
        return invokeTCB_Resume(
                   ((tcb_t *)(cap_thread_cap_get_capTCBPtr(cap))));

    case TCBConfigure:
        return decodeTCBConfigure(cap, length, slot, extraCaps, buffer);

    case TCBSetPriority:
        return decodeSetPriority(cap, length, buffer);

    case TCBSetIPCBuffer:
        return decodeSetIPCBuffer(cap, length, slot, extraCaps, buffer);

    case TCBSetSpace:
        return decodeSetSpace(cap, length, slot, extraCaps, buffer);

    case TCBBindAEP:
        return decodeBindAEP(cap, extraCaps);

    case TCBUnbindAEP:
        return decodeUnbindAEP(cap);

        /* This is temporary until arch specific TCB operations are implemented */





    default:
        /* Haskell: "throw IllegalOperation" */
        do { printf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x @%x]: ", __func__, 358, (int)ksCurThread, (int)getRestartPC(ksCurThread)); printf("TCB: Illegal operation."); printf(">>" "\033[0m" "\n"); } while (0);
        current_syscall_error.type = seL4_IllegalOperation;
        return EXCEPTION_SYSCALL_ERROR;
    }
}

enum CopyRegistersFlags {
    CopyRegisters_suspendSource = 0,
    CopyRegisters_resumeTarget = 1,
    CopyRegisters_transferFrame = 2,
    CopyRegisters_transferInteger = 3
};

exception_t
decodeCopyRegisters(cap_t cap, unsigned int length,
                    extra_caps_t extraCaps, word_t *buffer)
{
    word_t transferArch;
    tcb_t *srcTCB;
    cap_t source_cap;
    word_t flags;

    if (length < 1 || extraCaps.excaprefs[0] == ((void *)0)) {
        do { printf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x @%x]: ", __func__, 381, (int)ksCurThread, (int)getRestartPC(ksCurThread)); printf("TCB CopyRegisters: Truncated message."); printf(">>" "\033[0m" "\n"); } while (0);
        current_syscall_error.type = seL4_TruncatedMessage;
        return EXCEPTION_SYSCALL_ERROR;
    }

    flags = getSyscallArg(0, buffer);

    transferArch = Arch_decodeTransfer(flags >> 8);

    source_cap = extraCaps.excaprefs[0]->cap;

    if (cap_get_capType(source_cap) == cap_thread_cap) {
        srcTCB = ((tcb_t *)(cap_thread_cap_get_capTCBPtr(source_cap)));
    } else {
        do { printf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x @%x]: ", __func__, 395, (int)ksCurThread, (int)getRestartPC(ksCurThread)); printf("TCB CopyRegisters: Invalid source TCB."); printf(">>" "\033[0m" "\n"); } while (0);
        current_syscall_error.type = seL4_InvalidCapability;
        current_syscall_error.invalidCapNumber = 1;
        return EXCEPTION_SYSCALL_ERROR;
    }

    setThreadState(ksCurThread, ThreadState_Restart);
    return invokeTCB_CopyRegisters(
               ((tcb_t *)(cap_thread_cap_get_capTCBPtr(cap))), srcTCB,
               flags & (1ul<<(CopyRegisters_suspendSource)),
               flags & (1ul<<(CopyRegisters_resumeTarget)),
               flags & (1ul<<(CopyRegisters_transferFrame)),
               flags & (1ul<<(CopyRegisters_transferInteger)),
               transferArch);

}

enum ReadRegistersFlags {
    ReadRegisters_suspend = 0
};

exception_t
decodeReadRegisters(cap_t cap, unsigned int length, bool_t call,
                    word_t *buffer)
{
    word_t transferArch, flags, n;

    if (length < 2) {
        do { printf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x @%x]: ", __func__, 423, (int)ksCurThread, (int)getRestartPC(ksCurThread)); printf("TCB ReadRegisters: Truncated message."); printf(">>" "\033[0m" "\n"); } while (0);
        current_syscall_error.type = seL4_TruncatedMessage;
        return EXCEPTION_SYSCALL_ERROR;
    }

    flags = getSyscallArg(0, buffer);
    n = getSyscallArg(1, buffer);

    if (n < 1 || n > n_frameRegisters + n_gpRegisters) {
        do { printf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x @%x]: ", __func__,
                        433
# 432 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/tcb.c"
        , (int)ksCurThread, (int)getRestartPC(ksCurThread)); printf("TCB ReadRegisters: Attempted to read an invalid number of registers (%d).", (int)n); printf(">>" "\033[0m" "\n"); } while (0)
                         ;
        current_syscall_error.type = seL4_RangeError;
        current_syscall_error.rangeErrorMin = 1;
        current_syscall_error.rangeErrorMax = n_frameRegisters +
                                              n_gpRegisters;
        return EXCEPTION_SYSCALL_ERROR;
    }

    transferArch = Arch_decodeTransfer(flags >> 8);

    setThreadState(ksCurThread, ThreadState_Restart);
    return invokeTCB_ReadRegisters(
               ((tcb_t *)(cap_thread_cap_get_capTCBPtr(cap))),
               flags & (1ul<<(ReadRegisters_suspend)),
               n, transferArch, call);
}

enum WriteRegistersFlags {
    WriteRegisters_resume = 0
};

exception_t
decodeWriteRegisters(cap_t cap, unsigned int length, word_t *buffer)
{
    word_t flags, w;
    word_t transferArch;
    tcb_t* thread;

    if (length < 2) {
        do { printf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x @%x]: ", __func__, 462, (int)ksCurThread, (int)getRestartPC(ksCurThread)); printf("TCB WriteRegisters: Truncated message."); printf(">>" "\033[0m" "\n"); } while (0);
        current_syscall_error.type = seL4_TruncatedMessage;
        return EXCEPTION_SYSCALL_ERROR;
    }

    flags = getSyscallArg(0, buffer);
    w = getSyscallArg(1, buffer);

    if (length - 2 < w) {
        do { printf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x @%x]: ", __func__,
                                           472
# 471 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/tcb.c"
        , (int)ksCurThread, (int)getRestartPC(ksCurThread)); printf("TCB WriteRegisters: Message too short for requested write size (%d/%d).", (int)(length - 2), (int)w); printf(">>" "\033[0m" "\n"); } while (0)
                                            ;
        current_syscall_error.type = seL4_TruncatedMessage;
        return EXCEPTION_SYSCALL_ERROR;
    }

    transferArch = Arch_decodeTransfer(flags >> 8);

    thread = ((tcb_t *)(cap_thread_cap_get_capTCBPtr(cap)));

    setThreadState(ksCurThread, ThreadState_Restart);
    return invokeTCB_WriteRegisters(thread,
                                    flags & (1ul<<(WriteRegisters_resume)),
                                    w, transferArch, buffer);
}

/* SetPriority, SetIPCParams and SetSpace are all
 * specialisations of TCBConfigure. */

exception_t
decodeTCBConfigure(cap_t cap, unsigned int length, cte_t* slot,
                   extra_caps_t rootCaps, word_t *buffer)
{
    cte_t *bufferSlot, *cRootSlot, *vRootSlot;
    cap_t bufferCap, cRootCap, vRootCap;
    deriveCap_ret_t dc_ret;
    cptr_t faultEP;
    unsigned int prio;
    word_t cRootData, vRootData, bufferAddr;

    if (length < 5 || rootCaps.excaprefs[0] == ((void *)0)
            || rootCaps.excaprefs[1] == ((void *)0)
            || rootCaps.excaprefs[2] == ((void *)0)) {
        do { printf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x @%x]: ", __func__, 504, (int)ksCurThread, (int)getRestartPC(ksCurThread)); printf("TCB Configure: Truncated message."); printf(">>" "\033[0m" "\n"); } while (0);
        current_syscall_error.type = seL4_TruncatedMessage;
        return EXCEPTION_SYSCALL_ERROR;
    }

    faultEP = getSyscallArg(0, buffer);
    prio = getSyscallArg(1, buffer);
    cRootData = getSyscallArg(2, buffer);
    vRootData = getSyscallArg(3, buffer);
    bufferAddr = getSyscallArg(4, buffer);

    cRootSlot = rootCaps.excaprefs[0];
    cRootCap = rootCaps.excaprefs[0]->cap;
    vRootSlot = rootCaps.excaprefs[1];
    vRootCap = rootCaps.excaprefs[1]->cap;
    bufferSlot = rootCaps.excaprefs[2];
    bufferCap = rootCaps.excaprefs[2]->cap;

    prio = prio & ((1ul<<(8))-1ul);

    if (prio > ksCurThread->tcbPriority) {
        do { printf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x @%x]: ", __func__,
                                                            526
# 525 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/tcb.c"
        , (int)ksCurThread, (int)getRestartPC(ksCurThread)); printf("TCB Configure: Requested priority %d too high (max %d).", (int)prio, (int)(ksCurThread->tcbPriority)); printf(">>" "\033[0m" "\n"); } while (0)
                                                             ;
        current_syscall_error.type = seL4_IllegalOperation;
        return EXCEPTION_SYSCALL_ERROR;
    }

    if (bufferAddr == 0) {
        bufferSlot = ((void *)0);
    } else {
        exception_t e;

        dc_ret = deriveCap(bufferSlot, bufferCap);
        if (dc_ret.status != EXCEPTION_NONE) {
            return dc_ret.status;
        }
        bufferCap = dc_ret.cap;
        e = checkValidIPCBuffer(bufferAddr, bufferCap);
        if (e != EXCEPTION_NONE) {
            return e;
        }
    }

    if (slotCapLongRunningDelete(
                (((cte_t *)((unsigned int)(cap_thread_cap_get_capTCBPtr(cap))&~((1ul<<(((4 + 4) + 1)))-1ul)))+(tcbCTable))) ||
            slotCapLongRunningDelete(
                (((cte_t *)((unsigned int)(cap_thread_cap_get_capTCBPtr(cap))&~((1ul<<(((4 + 4) + 1)))-1ul)))+(tcbVTable)))) {
        do { printf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x @%x]: ", __func__, 551, (int)ksCurThread, (int)getRestartPC(ksCurThread)); printf("TCB Configure: CSpace or VSpace currently being deleted."); printf(">>" "\033[0m" "\n"); } while (0);
        current_syscall_error.type = seL4_IllegalOperation;
        return EXCEPTION_SYSCALL_ERROR;
    }

    if (cRootData != 0) {
        cRootCap = updateCapData(false, cRootData, cRootCap);
    }

    dc_ret = deriveCap(cRootSlot, cRootCap);
    if (dc_ret.status != EXCEPTION_NONE) {
        return dc_ret.status;
    }
    cRootCap = dc_ret.cap;

    if (cap_get_capType(cRootCap) != cap_cnode_cap &&
            (!0 ||
             cap_get_capType(cRootCap) != cap_null_cap)) {
        do { printf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x @%x]: ", __func__, 569, (int)ksCurThread, (int)getRestartPC(ksCurThread)); printf("TCB Configure: CSpace cap is invalid."); printf(">>" "\033[0m" "\n"); } while (0);
        current_syscall_error.type = seL4_IllegalOperation;
        return EXCEPTION_SYSCALL_ERROR;
    }

    if (vRootData != 0) {
        vRootCap = updateCapData(false, vRootData, vRootCap);
    }

    dc_ret = deriveCap(vRootSlot, vRootCap);
    if (dc_ret.status != EXCEPTION_NONE) {
        return dc_ret.status;
    }
    vRootCap = dc_ret.cap;

    if (!isValidVTableRoot(vRootCap)) {
        do { printf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x @%x]: ", __func__, 585, (int)ksCurThread, (int)getRestartPC(ksCurThread)); printf("TCB Configure: VSpace cap is invalid."); printf(">>" "\033[0m" "\n"); } while (0);
        current_syscall_error.type = seL4_IllegalOperation;
        return EXCEPTION_SYSCALL_ERROR;
    }

    setThreadState(ksCurThread, ThreadState_Restart);
    return invokeTCB_ThreadControl(
               ((tcb_t *)(cap_thread_cap_get_capTCBPtr(cap))), slot,
               faultEP, prio,
               cRootCap, cRootSlot,
               vRootCap, vRootSlot,
               bufferAddr, bufferCap,
               bufferSlot, thread_control_update_all);
}

exception_t
decodeSetPriority(cap_t cap, unsigned int length, word_t *buffer)
{
    prio_t newPrio;

    if (length < 1) {
        do { printf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x @%x]: ", __func__, 606, (int)ksCurThread, (int)getRestartPC(ksCurThread)); printf("TCB SetPriority: Truncated message."); printf(">>" "\033[0m" "\n"); } while (0);
        current_syscall_error.type = seL4_TruncatedMessage;
        return EXCEPTION_SYSCALL_ERROR;
    }

    newPrio = getSyscallArg(0, buffer);

    /* assuming here seL4_MaxPrio is of form 2^n - 1 */
    newPrio = newPrio & ((1ul<<(8))-1ul);

    if (newPrio > ksCurThread->tcbPriority) {
        do { printf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x @%x]: ", __func__,
                                                             618
# 617 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/tcb.c"
        , (int)ksCurThread, (int)getRestartPC(ksCurThread)); printf("TCB SetPriority: Requested priority %d too high (max %d).", (int)newPrio, (int)ksCurThread->tcbPriority); printf(">>" "\033[0m" "\n"); } while (0)
                                                              ;
        current_syscall_error.type = seL4_IllegalOperation;
        return EXCEPTION_SYSCALL_ERROR;
    }

    setThreadState(ksCurThread, ThreadState_Restart);
    return invokeTCB_ThreadControl(
               ((tcb_t *)(cap_thread_cap_get_capTCBPtr(cap))), ((void *)0),
               0, newPrio,
               cap_null_cap_new(), ((void *)0),
               cap_null_cap_new(), ((void *)0),
               0, cap_null_cap_new(),
               ((void *)0), thread_control_update_priority);
}

exception_t
decodeSetIPCBuffer(cap_t cap, unsigned int length, cte_t* slot,
                   extra_caps_t extraCaps, word_t *buffer)
{
    cptr_t cptr_bufferPtr;
    cap_t bufferCap;
    cte_t *bufferSlot;

    if (length < 1 || extraCaps.excaprefs[0] == ((void *)0)) {
        do { printf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x @%x]: ", __func__, 642, (int)ksCurThread, (int)getRestartPC(ksCurThread)); printf("TCB SetIPCBuffer: Truncated message."); printf(">>" "\033[0m" "\n"); } while (0);
        current_syscall_error.type = seL4_TruncatedMessage;
        return EXCEPTION_SYSCALL_ERROR;
    }

    cptr_bufferPtr = getSyscallArg(0, buffer);
    bufferSlot = extraCaps.excaprefs[0];
    bufferCap = extraCaps.excaprefs[0]->cap;

    if (cptr_bufferPtr == 0) {
        bufferSlot = ((void *)0);
    } else {
        exception_t e;
        deriveCap_ret_t dc_ret;

        dc_ret = deriveCap(bufferSlot, bufferCap);
        if (dc_ret.status != EXCEPTION_NONE) {
            return dc_ret.status;
        }
        bufferCap = dc_ret.cap;
        e = checkValidIPCBuffer(cptr_bufferPtr, bufferCap);
        if (e != EXCEPTION_NONE) {
            return e;
        }
    }

    setThreadState(ksCurThread, ThreadState_Restart);
    return invokeTCB_ThreadControl(
               ((tcb_t *)(cap_thread_cap_get_capTCBPtr(cap))), slot,
               0,
               0, /* used to be prioInvalid, but it doesn't matter */
               cap_null_cap_new(), ((void *)0),
               cap_null_cap_new(), ((void *)0),
               cptr_bufferPtr, bufferCap,
               bufferSlot, thread_control_update_ipc_buffer);
}

exception_t
decodeSetSpace(cap_t cap, unsigned int length, cte_t* slot,
               extra_caps_t extraCaps, word_t *buffer)
{
    cptr_t faultEP;
    word_t cRootData, vRootData;
    cte_t *cRootSlot, *vRootSlot;
    cap_t cRootCap, vRootCap;
    deriveCap_ret_t dc_ret;

    if (length < 3 || extraCaps.excaprefs[0] == ((void *)0)
            || extraCaps.excaprefs[1] == ((void *)0)) {
        do { printf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x @%x]: ", __func__, 691, (int)ksCurThread, (int)getRestartPC(ksCurThread)); printf("TCB SetSpace: Truncated message."); printf(">>" "\033[0m" "\n"); } while (0);
        current_syscall_error.type = seL4_TruncatedMessage;
        return EXCEPTION_SYSCALL_ERROR;
    }

    faultEP = getSyscallArg(0, buffer);
    cRootData = getSyscallArg(1, buffer);
    vRootData = getSyscallArg(2, buffer);

    cRootSlot = extraCaps.excaprefs[0];
    cRootCap = extraCaps.excaprefs[0]->cap;
    vRootSlot = extraCaps.excaprefs[1];
    vRootCap = extraCaps.excaprefs[1]->cap;

    if (slotCapLongRunningDelete(
                (((cte_t *)((unsigned int)(cap_thread_cap_get_capTCBPtr(cap))&~((1ul<<(((4 + 4) + 1)))-1ul)))+(tcbCTable))) ||
            slotCapLongRunningDelete(
                (((cte_t *)((unsigned int)(cap_thread_cap_get_capTCBPtr(cap))&~((1ul<<(((4 + 4) + 1)))-1ul)))+(tcbVTable)))) {
        do { printf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x @%x]: ", __func__, 709, (int)ksCurThread, (int)getRestartPC(ksCurThread)); printf("TCB SetSpace: CSpace or VSpace currently being deleted."); printf(">>" "\033[0m" "\n"); } while (0);
        current_syscall_error.type = seL4_IllegalOperation;
        return EXCEPTION_SYSCALL_ERROR;
    }

    if (cRootData != 0) {
        cRootCap = updateCapData(false, cRootData, cRootCap);
    }

    dc_ret = deriveCap(cRootSlot, cRootCap);
    if (dc_ret.status != EXCEPTION_NONE) {
        return dc_ret.status;
    }
    cRootCap = dc_ret.cap;

    if (cap_get_capType(cRootCap) != cap_cnode_cap &&
            (!0 ||
             cap_get_capType(cRootCap) != cap_null_cap)) {
        do { printf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x @%x]: ", __func__, 727, (int)ksCurThread, (int)getRestartPC(ksCurThread)); printf("TCB SetSpace: Invalid CNode cap."); printf(">>" "\033[0m" "\n"); } while (0);
        current_syscall_error.type = seL4_IllegalOperation;
        return EXCEPTION_SYSCALL_ERROR;
    }

    if (vRootData != 0) {
        vRootCap = updateCapData(false, vRootData, vRootCap);
    }

    dc_ret = deriveCap(vRootSlot, vRootCap);
    if (dc_ret.status != EXCEPTION_NONE) {
        return dc_ret.status;
    }
    vRootCap = dc_ret.cap;

    if (!isValidVTableRoot(vRootCap)) {
        do { printf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x @%x]: ", __func__, 743, (int)ksCurThread, (int)getRestartPC(ksCurThread)); printf("TCB SetSpace: Invalid VSpace cap."); printf(">>" "\033[0m" "\n"); } while (0);
        current_syscall_error.type = seL4_IllegalOperation;
        return EXCEPTION_SYSCALL_ERROR;
    }

    setThreadState(ksCurThread, ThreadState_Restart);
    return invokeTCB_ThreadControl(
               ((tcb_t *)(cap_thread_cap_get_capTCBPtr(cap))), slot,
               faultEP,
               0, /* used to be prioInvalid, but it doesn't matter */
               cRootCap, cRootSlot,
               vRootCap, vRootSlot,
               0, cap_null_cap_new(), ((void *)0), thread_control_update_space);
}

exception_t
decodeDomainInvocation(word_t label, unsigned int length, extra_caps_t extraCaps, word_t *buffer)
{
    word_t domain;
    cap_t tcap;

    if (__builtin_expect(!!(label != DomainSetSet), 0)) {
        current_syscall_error.type = seL4_IllegalOperation;
        return EXCEPTION_SYSCALL_ERROR;
    }

    if (__builtin_expect(!!(length == 0), 0)) {
        do { printf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x @%x]: ", __func__, 770, (int)ksCurThread, (int)getRestartPC(ksCurThread)); printf("Domain Configure: Truncated message."); printf(">>" "\033[0m" "\n"); } while (0);
        current_syscall_error.type = seL4_TruncatedMessage;
        return EXCEPTION_SYSCALL_ERROR;
    } else {
        domain = getSyscallArg(0, buffer);
        if (domain >= 1) {
            do { printf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x @%x]: ", __func__,
                                                777
# 776 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/tcb.c"
            , (int)ksCurThread, (int)getRestartPC(ksCurThread)); printf("Domain Configure: invalid domain (%u >= %u).", domain, 1); printf(">>" "\033[0m" "\n"); } while (0)
                                                 ;
            current_syscall_error.type = seL4_InvalidArgument;
            current_syscall_error.invalidArgumentNumber = 0;
            return EXCEPTION_SYSCALL_ERROR;
        }
    }

    if (__builtin_expect(!!(extraCaps.excaprefs[0] == ((void *)0)), 0)) {
        do { printf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x @%x]: ", __func__, 785, (int)ksCurThread, (int)getRestartPC(ksCurThread)); printf("Domain Configure: Truncated message."); printf(">>" "\033[0m" "\n"); } while (0);
        current_syscall_error.type = seL4_TruncatedMessage;
        return EXCEPTION_SYSCALL_ERROR;
    }

    tcap = extraCaps.excaprefs[0]->cap;
    if (__builtin_expect(!!(cap_get_capType(tcap) != cap_thread_cap), 0)) {
        do { printf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x @%x]: ", __func__, 792, (int)ksCurThread, (int)getRestartPC(ksCurThread)); printf("Domain Configure: thread cap required."); printf(">>" "\033[0m" "\n"); } while (0);
        current_syscall_error.type = seL4_InvalidArgument;
        current_syscall_error.invalidArgumentNumber = 1;
        return EXCEPTION_SYSCALL_ERROR;
    }

    setThreadState(ksCurThread, ThreadState_Restart);
    setDomain(((tcb_t *)(cap_thread_cap_get_capTCBPtr(tcap))), domain);
    return EXCEPTION_NONE;
}

exception_t decodeBindAEP(cap_t cap, extra_caps_t extraCaps)
{
    async_endpoint_t *aepptr;
    tcb_t *tcb;

    if (extraCaps.excaprefs[0] == ((void *)0)) {
        do { printf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x @%x]: ", __func__, 809, (int)ksCurThread, (int)getRestartPC(ksCurThread)); printf("TCB BindAEP: Truncated message."); printf(">>" "\033[0m" "\n"); } while (0);
        current_syscall_error.type = seL4_TruncatedMessage;
        return EXCEPTION_SYSCALL_ERROR;
    }

    if (cap_get_capType(extraCaps.excaprefs[0]->cap) != cap_async_endpoint_cap) {
        do { printf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x @%x]: ", __func__, 815, (int)ksCurThread, (int)getRestartPC(ksCurThread)); printf("TCB BindAEP: Async endpoint is invalid."); printf(">>" "\033[0m" "\n"); } while (0);
        current_syscall_error.type = seL4_IllegalOperation;
        return EXCEPTION_SYSCALL_ERROR;
    }

    tcb = ((tcb_t *)(cap_thread_cap_get_capTCBPtr(cap)));

    if (tcb->boundAsyncEndpoint) {
        do { printf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x @%x]: ", __func__, 823, (int)ksCurThread, (int)getRestartPC(ksCurThread)); printf("TCB BindAEP: TCB already has AEP."); printf(">>" "\033[0m" "\n"); } while (0);
        current_syscall_error.type = seL4_IllegalOperation;
        return EXCEPTION_SYSCALL_ERROR;
    }

    aepptr = ((async_endpoint_t *)(cap_async_endpoint_cap_get_capAEPPtr(extraCaps.excaprefs[0]->cap)));
    if ((tcb_t*)async_endpoint_ptr_get_aepQueue_head(aepptr)) {
        do { printf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x @%x]: ", __func__, 830, (int)ksCurThread, (int)getRestartPC(ksCurThread)); printf("TCB BindAEP: AEP cannot be bound."); printf(">>" "\033[0m" "\n"); } while (0);
        current_syscall_error.type = seL4_IllegalOperation;
        return EXCEPTION_SYSCALL_ERROR;
    }

    setThreadState(ksCurThread, ThreadState_Restart);
    return invokeTCB_AEPControl(tcb, aepptr);
}

exception_t decodeUnbindAEP(cap_t cap)
{
    tcb_t *tcb;

    tcb = ((tcb_t *)(cap_thread_cap_get_capTCBPtr(cap)));

    if (!tcb->boundAsyncEndpoint) {
        do { printf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x @%x]: ", __func__, 846, (int)ksCurThread, (int)getRestartPC(ksCurThread)); printf("TCB UnbindAEP: TCB already has no bound AEP."); printf(">>" "\033[0m" "\n"); } while (0);
        current_syscall_error.type = seL4_IllegalOperation;
        return EXCEPTION_SYSCALL_ERROR;
    }

    setThreadState(ksCurThread, ThreadState_Restart);
    return invokeTCB_AEPControl(tcb, ((void *)0));
}

/* The following functions sit in the preemption monad and implement the
 * preemptible, non-faulting bottom end of a TCB invocation. */
exception_t
invokeTCB_Suspend(tcb_t *thread)
{
    suspend(thread);
    return EXCEPTION_NONE;
}

exception_t
invokeTCB_Resume(tcb_t *thread)
{
    restart(thread);
    return EXCEPTION_NONE;
}

exception_t
invokeTCB_ThreadControl(tcb_t *target, cte_t* slot,
                        cptr_t faultep, prio_t priority,
                        cap_t cRoot_newCap, cte_t *cRoot_srcSlot,
                        cap_t vRoot_newCap, cte_t *vRoot_srcSlot,
                        word_t bufferAddr, cap_t bufferCap,
                        cte_t *bufferSrcSlot,
                        thread_control_flag_t updateFlags)
{
    exception_t e;
    cap_t tCap = cap_thread_cap_new((word_t)target);

    if (updateFlags & thread_control_update_space) {
        target->tcbFaultHandler = faultep;
    }

    if (updateFlags & thread_control_update_priority) {
        setPriority(target, priority);
    }

    if (updateFlags & thread_control_update_space) {
        cte_t *rootSlot;

        rootSlot = (((cte_t *)((unsigned int)(target)&~((1ul<<(((4 + 4) + 1)))-1ul)))+(tcbCTable));
        e = cteDelete(rootSlot, true);
        if (e != EXCEPTION_NONE) {
            return e;
        }
        if (sameObjectAs(cRoot_newCap, cRoot_srcSlot->cap) &&
                sameObjectAs(tCap, slot->cap)) {
            cteInsert(cRoot_newCap, cRoot_srcSlot, rootSlot);
        }
    }

    if (updateFlags & thread_control_update_space) {
        cte_t *rootSlot;

        rootSlot = (((cte_t *)((unsigned int)(target)&~((1ul<<(((4 + 4) + 1)))-1ul)))+(tcbVTable));
        e = cteDelete(rootSlot, true);
        if (e != EXCEPTION_NONE) {
            return e;
        }
        if (sameObjectAs(vRoot_newCap, vRoot_srcSlot->cap) &&
                sameObjectAs(tCap, slot->cap)) {
            cteInsert(vRoot_newCap, vRoot_srcSlot, rootSlot);
        }
    }

    if (updateFlags & thread_control_update_ipc_buffer) {
        cte_t *bufferSlot;

        bufferSlot = (((cte_t *)((unsigned int)(target)&~((1ul<<(((4 + 4) + 1)))-1ul)))+(tcbBuffer));
        e = cteDelete(bufferSlot, true);
        if (e != EXCEPTION_NONE) {
            return e;
        }
        target->tcbIPCBuffer = bufferAddr;
        if (bufferSrcSlot && sameObjectAs(bufferCap, bufferSrcSlot->cap) &&
                sameObjectAs(tCap, slot->cap)) {
            cteInsert(bufferCap, bufferSrcSlot, bufferSlot);
        }
    }

    return EXCEPTION_NONE;
}

exception_t
invokeTCB_CopyRegisters(tcb_t *dest, tcb_t *tcb_src,
                        bool_t suspendSource, bool_t resumeTarget,
                        bool_t transferFrame, bool_t transferInteger,
                        word_t transferArch)
{
    if (suspendSource) {
        suspend(tcb_src);
    }

    if (resumeTarget) {
        restart(dest);
    }

    if (transferFrame) {
        unsigned int i;
        word_t v;
        word_t pc;

        for (i = 0; i < n_frameRegisters; i++) {
            v = getRegister(tcb_src, frameRegisters[i]);
            setRegister(dest, frameRegisters[i], v);
        }

        pc = getRestartPC(dest);
        setNextPC(dest, pc);
    }

    if (transferInteger) {
        unsigned int i;
        word_t v;

        for (i = 0; i < n_gpRegisters; i++) {
            v = getRegister(tcb_src, gpRegisters[i]);
            setRegister(dest, gpRegisters[i], v);
        }
    }

    return Arch_performTransfer(transferArch, tcb_src, dest);
}

/* ReadRegisters is a special case: replyFromKernel & setMRs are
 * unfolded here, in order to avoid passing the large reply message up
 * to the top level in a global (and double-copying). We prevent the
 * top-level replyFromKernel_success_empty() from running by setting the
 * thread state. Retype does this too.
 */
exception_t
invokeTCB_ReadRegisters(tcb_t *tcb_src, bool_t suspendSource,
                        unsigned int n, word_t arch, bool_t call)
{
    unsigned int i, j;
    exception_t e;
    tcb_t *thread;

    thread = ksCurThread;

    if (suspendSource) {
        suspend(tcb_src);
    }

    e = Arch_performTransfer(arch, tcb_src, ksCurThread);
    if (e != EXCEPTION_NONE) {
        return e;
    }

    if (call) {
        word_t *ipcBuffer;

        ipcBuffer = lookupIPCBuffer(true, thread);

        setRegister(thread, badgeRegister, 0);

        for (i = 0; i < n && i < n_frameRegisters && i < n_msgRegisters; i++) {
            setRegister(thread, msgRegisters[i],
                        getRegister(tcb_src, frameRegisters[i]));
        }

        if (ipcBuffer != ((void *)0) && i < n && i < n_frameRegisters) {
            for (; i < n && i < n_frameRegisters; i++) {
                ipcBuffer[i + 1] = getRegister(tcb_src, frameRegisters[i]);
            }
        }

        j = i;

        for (i = 0; i < n_gpRegisters && i + n_frameRegisters < n
                && i + n_frameRegisters < n_msgRegisters; i++) {
            setRegister(thread, msgRegisters[i + n_frameRegisters],
                        getRegister(tcb_src, gpRegisters[i]));
        }

        if (ipcBuffer != ((void *)0) && i < n_gpRegisters
                && i + n_frameRegisters < n) {
            for (; i < n_gpRegisters && i + n_frameRegisters < n; i++) {
                ipcBuffer[i + n_frameRegisters + 1] =
                    getRegister(tcb_src, gpRegisters[i]);
            }
        }

        setRegister(thread, msgInfoRegister, wordFromMessageInfo(
                        message_info_new(0, 0, 0, i + j)));
    }
    setThreadState(thread, ThreadState_Running);

    return EXCEPTION_NONE;
}

exception_t
invokeTCB_WriteRegisters(tcb_t *dest, bool_t resumeTarget,
                         unsigned int n, word_t arch, word_t *buffer)
{
    unsigned int i;
    word_t pc;
    exception_t e;

    e = Arch_performTransfer(arch, ksCurThread, dest);
    if (e != EXCEPTION_NONE) {
        return e;
    }

    if (n > n_frameRegisters + n_gpRegisters) {
        n = n_frameRegisters + n_gpRegisters;
    }

    for (i = 0; i < n_frameRegisters && i < n; i++) {
        /* Offset of 2 to get past the initial syscall arguments */
        setRegister(dest, frameRegisters[i],
                    sanitiseRegister(frameRegisters[i],
                                     getSyscallArg(i + 2, buffer)));
    }

    for (i = 0; i < n_gpRegisters && i + n_frameRegisters < n; i++) {
        setRegister(dest, gpRegisters[i],
                    sanitiseRegister(gpRegisters[i],
                                     getSyscallArg(i + n_frameRegisters + 2,
                                                   buffer)));
    }

    pc = getRestartPC(dest);
    setNextPC(dest, pc);

    if (resumeTarget) {
        restart(dest);
    }

    return EXCEPTION_NONE;
}

exception_t
invokeTCB_AEPControl(tcb_t *tcb, async_endpoint_t *aepptr)
{
    if (aepptr) {
        bindAsyncEndpoint(tcb, aepptr);
    } else {
        unbindAsyncEndpoint(tcb);
    }

    return EXCEPTION_NONE;
}
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/untyped.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/config.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 12 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/untyped.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 13 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/untyped.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/api/failures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 14 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/untyped.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/api/syscall.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/untyped.c" 2
# 1 "./api/invocation.h" 1
/* @LICENSE(OKL_CORE) */

/* This header was generated by kernel/tools/invocation_header_gen.py.
 *
 * To add an invocation call number, edit libsel4/include/interfaces/sel4.xml.
 *
 */
# 16 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/untyped.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/machine/io.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 17 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/untyped.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/structures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 18 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/untyped.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/untyped.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 19 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/untyped.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/objecttype.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 20 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/untyped.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/cnode.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 21 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/untyped.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/kernel/cspace.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 22 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/untyped.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/kernel/thread.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 23 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/untyped.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/util.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 24 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/untyped.c" 2

static word_t
alignUp(word_t baseValue, unsigned int alignment)
{
    return (baseValue + ((1ul<<(alignment)) - 1)) & ~((1ul<<(alignment))-1ul);
}

exception_t
decodeUntypedInvocation(word_t label, unsigned int length, cte_t *slot,
                        cap_t cap, extra_caps_t extraCaps,
                        bool_t call, word_t *buffer)
{
    word_t newType, userObjSize, nodeIndex;
    word_t nodeDepth, nodeOffset, nodeWindow;
    cte_t *rootSlot __attribute__((unused));
    exception_t status;
    cap_t nodeCap;
    lookupSlot_ret_t lu_ret;
    word_t nodeSize;
    unsigned int i;
    slot_range_t slots;
    word_t freeRef, objectSize, untypedSize;
    word_t freeIndex, alignedFreeIndex;

    /* Ensure operation is valid. */
    if (label != UntypedRetype) {
        do { printf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x @%x]: ", __func__, 50, (int)ksCurThread, (int)getRestartPC(ksCurThread)); printf("Untyped cap: Illegal operation attempted."); printf(">>" "\033[0m" "\n"); } while (0);
        current_syscall_error.type = seL4_IllegalOperation;
        return EXCEPTION_SYSCALL_ERROR;
    }

    /* Ensure message length valid. */
    if (length < 7 || extraCaps.excaprefs[0] == ((void *)0)) {
        do { printf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x @%x]: ", __func__, 57, (int)ksCurThread, (int)getRestartPC(ksCurThread)); printf("Untyped invocation: Truncated message."); printf(">>" "\033[0m" "\n"); } while (0);
        current_syscall_error.type = seL4_TruncatedMessage;
        return EXCEPTION_SYSCALL_ERROR;
    }

    /* Fetch arguments. */
    newType = getSyscallArg(0, buffer);
    freeIndex = getSyscallArg(1, buffer);
    userObjSize = getSyscallArg(2, buffer);
    nodeIndex = getSyscallArg(3, buffer);
    nodeDepth = getSyscallArg(4, buffer);
    nodeOffset = getSyscallArg(5, buffer);
    nodeWindow = getSyscallArg(6, buffer);

    rootSlot = extraCaps.excaprefs[0];

    /*
     * Okay to retype if at least one of the following criteria hold:
     *   - the original untyped sits in the kernel window.
     *   - we are retyping to a frame (small, big, whatever).
     *   - we are retyping to an untyped
     */
    if (!(inKernelWindow((void *)cap_untyped_cap_get_capPtr(cap)) ||
            Arch_isFrameType(newType) ||
            newType == seL4_UntypedObject)) {
        do { printf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x @%x]: ", __func__, 82, (int)ksCurThread, (int)getRestartPC(ksCurThread)); printf("Untyped Retype: Untyped outside kernel window (%p).", (void*)newType); printf(">>" "\033[0m" "\n"); } while (0);
        current_syscall_error.type = seL4_InvalidArgument;
        current_syscall_error.invalidArgumentNumber = 0;
        return EXCEPTION_SYSCALL_ERROR;
    }

    /* Is the requested object type valid? */
    if (newType >= seL4_ObjectTypeCount) {
        do { printf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x @%x]: ", __func__, 90, (int)ksCurThread, (int)getRestartPC(ksCurThread)); printf("Untyped Retype: Invalid object type."); printf(">>" "\033[0m" "\n"); } while (0);
        current_syscall_error.type = seL4_InvalidArgument;
        current_syscall_error.invalidArgumentNumber = 0;
        return EXCEPTION_SYSCALL_ERROR;
    }

    /* Is the requested object size valid? */
    if (userObjSize >= (32 - 1)) {
        do { printf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x @%x]: ", __func__, 98, (int)ksCurThread, (int)getRestartPC(ksCurThread)); printf("Untyped Retype: Invalid object size."); printf(">>" "\033[0m" "\n"); } while (0);
        current_syscall_error.type = seL4_RangeError;
        current_syscall_error.rangeErrorMin = 0;
        current_syscall_error.rangeErrorMax = 32 - 2;
        return EXCEPTION_SYSCALL_ERROR;
    }

    /* If the target object is a CNode, is it at least size 1? */
    if (newType == seL4_CapTableObject && userObjSize == 0) {
        do { printf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x @%x]: ", __func__, 107, (int)ksCurThread, (int)getRestartPC(ksCurThread)); printf("Untyped Retype: Requested CapTable size too small."); printf(">>" "\033[0m" "\n"); } while (0);
        current_syscall_error.type = seL4_InvalidArgument;
        current_syscall_error.invalidArgumentNumber = 1;
        return EXCEPTION_SYSCALL_ERROR;
    }

    /* If the target object is a Untyped, is it at least size 4? */
    if (newType == seL4_UntypedObject && userObjSize < 4) {
        do { printf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x @%x]: ", __func__, 115, (int)ksCurThread, (int)getRestartPC(ksCurThread)); printf("Untyped Retype: Requested UntypedItem size too small."); printf(">>" "\033[0m" "\n"); } while (0);
        current_syscall_error.type = seL4_InvalidArgument;
        current_syscall_error.invalidArgumentNumber = 1;
        return EXCEPTION_SYSCALL_ERROR;
    }

    /* Lookup the destination CNode (where our caps will be placed in). */
    if (nodeDepth == 0) {
        nodeCap = extraCaps.excaprefs[0]->cap;
    } else {
        cap_t rootCap = extraCaps.excaprefs[0]->cap;
        lu_ret = lookupTargetSlot(rootCap, nodeIndex, nodeDepth);
        if (lu_ret.status != EXCEPTION_NONE) {
            do { printf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x @%x]: ", __func__, 128, (int)ksCurThread, (int)getRestartPC(ksCurThread)); printf("Untyped Retype: Invalid destination address."); printf(">>" "\033[0m" "\n"); } while (0);
            return lu_ret.status;
        }
        nodeCap = lu_ret.slot->cap;
    }

    /* Is the destination actually a CNode? */
    if (cap_get_capType(nodeCap) != cap_cnode_cap) {
        do { printf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x @%x]: ", __func__, 136, (int)ksCurThread, (int)getRestartPC(ksCurThread)); printf("Untyped Retype: Destination cap invalid or read-only."); printf(">>" "\033[0m" "\n"); } while (0);
        current_syscall_error.type = seL4_FailedLookup;
        current_syscall_error.failedLookupWasSource = 0;
        current_lookup_fault = lookup_fault_missing_capability_new(nodeDepth);
        return EXCEPTION_SYSCALL_ERROR;
    }

    /* Is the region where the user wants to put the caps valid? */
    nodeSize = 1 << cap_cnode_cap_get_capCNodeRadix(nodeCap);
    if (nodeOffset > nodeSize - 1) {
        do { printf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x @%x]: ", __func__,
                                 147
# 146 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/untyped.c"
        , (int)ksCurThread, (int)getRestartPC(ksCurThread)); printf("Untyped Retype: Destination node offset #%d too large.", (int)nodeOffset); printf(">>" "\033[0m" "\n"); } while (0)
                                  ;
        current_syscall_error.type = seL4_RangeError;
        current_syscall_error.rangeErrorMin = 0;
        current_syscall_error.rangeErrorMax = nodeSize - 1;
        return EXCEPTION_SYSCALL_ERROR;
    }
    if (nodeWindow < 1 || nodeWindow > 256) {
        do { printf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x @%x]: ", __func__,
                                 155
# 154 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/untyped.c"
        , (int)ksCurThread, (int)getRestartPC(ksCurThread)); printf("Untyped Retype: Number of requested objects (%d) too small or large.", (int)nodeWindow); printf(">>" "\033[0m" "\n"); } while (0)
                                  ;
        current_syscall_error.type = seL4_RangeError;
        current_syscall_error.rangeErrorMin = 1;
        current_syscall_error.rangeErrorMax = 256;
        return EXCEPTION_SYSCALL_ERROR;
    }
    if (nodeWindow > nodeSize - nodeOffset) {
        do { printf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x @%x]: ", __func__, 162, (int)ksCurThread, (int)getRestartPC(ksCurThread)); printf("Untyped Retype: Requested destination window overruns size of node."); printf(">>" "\033[0m" "\n"); } while (0);
        current_syscall_error.type = seL4_RangeError;
        current_syscall_error.rangeErrorMin = 1;
        current_syscall_error.rangeErrorMax = nodeSize - nodeOffset;
        return EXCEPTION_SYSCALL_ERROR;
    }

    /* Ensure that the destination slots are all empty. */
    slots.cnode = ((cte_t *)(cap_cnode_cap_get_capCNodePtr(nodeCap)));
    slots.offset = nodeOffset;
    slots.length = nodeWindow;
    for (i = nodeOffset; i < nodeOffset + nodeWindow; i++) {
        status = ensureEmptySlot(slots.cnode + i);
        if (status != EXCEPTION_NONE) {
            do { printf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x @%x]: ", __func__,
                            177
# 176 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/untyped.c"
            , (int)ksCurThread, (int)getRestartPC(ksCurThread)); printf("Untyped Retype: Slot #%d in destination window non-empty.", (int)i); printf(">>" "\033[0m" "\n"); } while (0)
                             ;
            return status;
        }
    }

    objectSize = getObjectSize(newType, userObjSize);

    /* Align up the free region so that it is aligned to the target object's
     * size. */
    alignedFreeIndex = alignUp(freeIndex, objectSize);

    freeRef = ((word_t)(((word_t)(cap_untyped_cap_get_capPtr(cap))) + (alignedFreeIndex)));

    /* Check that this object will be within the bounds of the untyped */
    untypedSize = (1ul<<(cap_untyped_cap_get_capBlockSize(cap)));
    if (objectSize >= 32 || alignedFreeIndex + (1ul<<(objectSize)) > untypedSize) {
        do { printf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x @%x]: ", __func__, 193, (int)ksCurThread, (int)getRestartPC(ksCurThread)); printf("Untyped Retype: Insufficient memory or offset outside untyped"); printf(">>" "\033[0m" "\n"); } while (0);
        current_syscall_error.type = seL4_NotEnoughMemory;
        current_syscall_error.memoryLeft = untypedSize;
        return EXCEPTION_SYSCALL_ERROR;
    }

    /* Check to see if this retype will collide with an existing child. */
    if (newType != seL4_UntypedObject && !cap_untyped_cap_get_capDeviceMemory(cap)) {
        cte_t *child = cdtFindInRange(capSpaceTypedMemory, freeRef, nodeWindow << objectSize);
        if (child) {
            do { printf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x @%x]: ", __func__, 203, (int)ksCurThread, (int)getRestartPC(ksCurThread)); printf("Untyped Retype: collision with existing child"); printf(">>" "\033[0m" "\n"); } while (0);
            current_syscall_error.type = seL4_RevokeFirst;
            return EXCEPTION_SYSCALL_ERROR;
        }
    }

    /* Check we do not create non frames in frame only untypeds */
    if ( (cap_untyped_cap_get_capDeviceMemory(cap) && !Arch_isFrameType(newType))
            && newType != seL4_UntypedObject) {
        do { printf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x @%x]: ", __func__, 212, (int)ksCurThread, (int)getRestartPC(ksCurThread)); printf("Untyped Retype: Creating kernel objects with frame only untyped"); printf(">>" "\033[0m" "\n"); } while (0);
        current_syscall_error.type = seL4_InvalidArgument;
        current_syscall_error.invalidArgumentNumber = 1;
        return EXCEPTION_SYSCALL_ERROR;
    }

    /* Perform the retype. */
    setThreadState(ksCurThread, ThreadState_Restart);
    return invokeUntyped_Retype(
               slot, ((word_t *)(cap_untyped_cap_get_capPtr(cap))),
               (void*)freeRef, newType, userObjSize, slots, call, cap_untyped_cap_get_capDeviceMemory(cap));
}

exception_t
invokeUntyped_Retype(cte_t *srcSlot, void* regionBase,
                     void* freeRegionBase,
                     object_t newType, unsigned int userSize,
                     slot_range_t destSlots, bool_t call, bool_t deviceMemory)
{
    word_t size_ign __attribute__((unused));

    /*
     * If this is the first object we are creating in this untyped region, we
     * need to detype the old memory. At the concrete C level, this doesn't
     * have any effect, but updating this shadow state is important for the
     * verification process.
     */
    size_ign = cap_untyped_cap_ptr_get_capBlockSize(&(srcSlot->cap));
    /** AUXUPD: "(True,
        if (\<acute>freeRegionBase = \<acute>regionBase) then
          (typ_region_bytes (ptr_val \<acute>regionBase) (unat \<acute>size_ign))
        else
          id)" */
    /** GHOSTUPD: "(True,
        if (\<acute>freeRegionBase = \<acute>regionBase) then
          (gs_clear_region (ptr_val \<acute>regionBase) (unat \<acute>size_ign))
        else
          id)" */

    /* Create new objects and caps. */
    createNewObjects(newType, srcSlot, destSlots, freeRegionBase, userSize, deviceMemory);

    return EXCEPTION_NONE;
}
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/plat/qemu_riscv/machine/hardware.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 12 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/plat/qemu_riscv/machine/hardware.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/machine/io.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 13 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/plat/qemu_riscv/machine/hardware.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/kernel/vspace.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 14 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/plat/qemu_riscv/machine/hardware.c" 2

# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/kernel/vspace.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/plat/qemu_riscv/machine/hardware.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/plat/qemu_riscv/plat/machine.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 17 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/plat/qemu_riscv/machine/hardware.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/linker.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 18 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/plat/qemu_riscv/machine/hardware.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/plat/qemu_riscv/plat/machine/devices.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 19 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/plat/qemu_riscv/machine/hardware.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/plat/qemu_riscv/plat/machine/hardware.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 20 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/plat/qemu_riscv/machine/hardware.c" 2

/* Available physical memory regions on platform (RAM minus kernel image). */
/* NOTE: Regions are not allowed to be adjacent! */

const p_region_t __attribute__((__section__(".boot.rodata"))) avail_p_regs[] = {
    /* 128 MiB of memory minus kernel image at its beginning */
    { .start = 0x80000000, .end = 0x88000000 }
};

__attribute__((__section__(".boot.text"))) int get_num_avail_p_regs(void)
{
    return sizeof(avail_p_regs) / sizeof(p_region_t);
}

__attribute__((__section__(".boot.text"))) p_region_t get_avail_p_reg(unsigned int i)
{
    return avail_p_regs[i];
}

const p_region_t __attribute__((__section__(".boot.rodata"))) dev_p_regs[] = {
    { .start = 0x43f80000, .end = 0x43f81000 }, /* IMX31 I2C 1 */
    { .start = 0x43f84000, .end = 0x43f85000 }, /* IMX31 I2C 3 */
    { .start = 0x43f88000, .end = 0x43f89000 }, /* IMX31 USBOTG */
    { .start = 0x43f8c000, .end = 0x43f8d000 }, /* IMX31 ATA control */
    { .start = 0x43f90000, .end = 0x43f90000 + (1ul<<(12)) }, /* IMX31 UART 1 */
    { .start = 0x43f94000, .end = 0x43f95000 }, /* IMX31 UART 2 */
    { .start = 0x43f98000, .end = 0x43f99000 }, /* IMX31 I2C 2 */
    { .start = 0x43f9c000, .end = 0x43f9d000 }, /* IMX31 1-WIRE */
    { .start = 0x43fa0000, .end = 0x43fa1000 }, /* IMX31 SSI 1 */
    { .start = 0x43fa4000, .end = 0x43fa5000 }, /* IMX31 CSPI 1 */
    { .start = 0x43fa8000, .end = 0x43fa9000 }, /* IMX31 KPP */
    { .start = 0x43fac000, .end = 0x43fad000 }, /* IMX31 IOMUXC */
    { .start = 0x43fb0000, .end = 0x43fb1000 }, /* IMX31 UART 4 */
    { .start = 0x43fb4000, .end = 0x43fb5000 }, /* IMX31 UART 5 */

    /* The devices from here up to the SPBA are all accessed through the
     * SPBA (bus arbiter), which must be configured to attach them to either
     * the CPU or the DMA controller. The reset state is to disable everything
     * (except the SPBA itself). This may need to be handled by the kernel, if
     * the kernel is managing the SDMA controller.
     */
    { .start = 0x50004000, .end = 0x50005000 }, /* IMX31 SDHC 1 */
    { .start = 0x50008000, .end = 0x50009000 }, /* IMX31 SDHC 2 */
    { .start = 0x5000c000, .end = 0x5000d000 }, /* IMX31 UART 3 */
    { .start = 0x50010000, .end = 0x50011000 }, /* IMX31 CSPI 2 */
    { .start = 0x50014000, .end = 0x50015000 }, /* IMX31 SSI 2 */
    { .start = 0x50018000, .end = 0x50019000 }, /* IMX31 SIM */
    { .start = 0x5001c000, .end = 0x5001d000 }, /* IMX31 IIM */
    { .start = 0x50020000, .end = 0x50021000 }, /* IMX31 ATA (DMA) */
    { .start = 0x50024000, .end = 0x50025000 }, /* IMX31 MSHC 1 */
    { .start = 0x50028000, .end = 0x50029000 }, /* IMX31 MSHC 2 */
    { .start = 0x5003c000, .end = 0x5003d000 }, /* IMX31 SPBA */

    { .start = 0x53f80000, .end = 0x53f81000 }, /* IMX31 CCM */
    { .start = 0x53f84000, .end = 0x53f85000 }, /* IMX31 CSPI 3 */
    { .start = 0x53f8c000, .end = 0x53f8d000 }, /* IMX31 FIR */
    { .start = 0x53f90000, .end = 0x53f91000 }, /* IMX31 GPT */
    /* EPIT 1 is used by the kernel */
    { .start = 0x53f98000, .end = 0x53f99000 }, /* IMX31 EPIT 2 */
    { .start = 0x53fa4000, .end = 0x53fa8000 }, /* IMX31 GPIO 3 */
    /* This is disabled until we know what it does */
    //{ .start = 0x53fac000, .end = 0x53fad000 }, /* IMX31 SCC */
    { .start = 0x53fb0000, .end = 0x53fb1000 }, /* IMX31 RNGA */
    /* Disabled, because it has an internal DMA controller */
    //{ .start = 0x53fc0000, .end = 0x53fc1000 }, /* IMX31 IPU */
    { .start = 0x53fc4000, .end = 0x53fc5000 }, /* IMX31 AUDMUX */
    /* Disabled, because it has an internal DMA controller */
    //{ .start = 0x53fc8000, .end = 0x53fc9000 }, /* IMX31 MPEG4enc */
    { .start = 0x53fcc000, .end = 0x53fd0000 }, /* IMX31 GPIO 1 */
    { .start = 0x53fd0000, .end = 0x53fd4000 }, /* IMX31 GPIO 2 */
    /* This can access any physical address; the kernel should control it */
    //{ .start = 0x53fd4000, .end = 0x53fd5000 }, /* IMX31 SDMA */
    { .start = 0x53fd8000, .end = 0x53fd9000 }, /* IMX31 RTC */
    /* This can reset the machine if not regularly serviced; it should
     * be disabled or controlled by the kernel
     */
    //{ .start = 0x53fdc000, .end = 0x53fde000 }, /* IMX31 WDOG */
    { .start = 0x53fe0000, .end = 0x53fe1000 }, /* IMX31 PWM */
    { .start = 0x53fec000, .end = 0x53fed000 }, /* IMX31 RTIC */
    { .start = 0xa0000000, .end = 0xa4000000 }, /* IMX31 CS0 (flash) */
    { .start = 0xa8000000, .end = 0xaa000000 }, /* IMX31 CS1 (flash) */
    { .start = 0xb4000000, .end = 0xb6000000 }, /* IMX31 CS4 (FPGA) */
    { .start = 0xb6000000, .end = 0xb8000000 }, /* IMX31 CS5 (enet) */
    { .start = 0xc0000000, .end = 0xc2000000 } /* IMX31 PCMCIA/CF */
};

__attribute__((__section__(".boot.text"))) int get_num_dev_p_regs(void)
{
  return 0;
}

__attribute__((__section__(".boot.text"))) p_region_t get_dev_p_reg(unsigned int i)
{
    return dev_p_regs[i];
}

/**
   DONT_TRANSLATE
 */
interrupt_t
getActiveIRQ(void)
{
  /* TODO */
  return 0;
}

/* Check for pending IRQ */
bool_t isIRQPending(void)
{
}

/* Enable or disable irq according to the 'disable' flag. */
/**
   DONT_TRANSLATE
*/
void
maskInterrupt(bool_t disable, interrupt_t irq)
{
}

/* Determine if the given IRQ should be reserved by the kernel. */
bool_t __attribute__((__const__))
isReservedIRQ(irq_t irq)
{
    return false;
}

/* Handle a platform-reserved IRQ. */
void
handleReservedIRQ(irq_t irq)
{
}

void
ackInterrupt(irq_t irq)
{
    /* empty on this platform */
}

void
resetTimer(void)
{
    /* Timer resets automatically */
}

/* Configure EPIT1 as kernel preemption timer */
/**
   DONT_TRANSLATE
 */
__attribute__((__section__(".boot.text"))) void
initTimer(void)
{
}

static void invalidateL2(void)
{
}

static void finaliseL2Op(void)
{
}

void plat_cleanL2Range(paddr_t start, paddr_t end)
{
}
void plat_invalidateL2Range(paddr_t start, paddr_t end)
{
}

void plat_cleanInvalidateL2Range(paddr_t start, paddr_t end)
{
}

/**
   DONT_TRANSLATE
 */
__attribute__((__section__(".boot.text"))) void
initL2Cache(void)
{
}

/**
   DONT_TRANSLATE
 */
__attribute__((__section__(".boot.text"))) void
initIRQController(void)
{
    /* Do nothing */
}

void
handleSpuriousIRQ(void)
{
    /* Do nothing */
}
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/plat/qemu_riscv/machine/io.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/stdint.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 12 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/plat/qemu_riscv/machine/io.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/util.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 13 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/plat/qemu_riscv/machine/io.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/machine/io.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 14 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/plat/qemu_riscv/machine/io.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/plat/qemu_riscv/plat/machine/devices.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/plat/qemu_riscv/machine/io.c" 2
# 33 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/plat/qemu_riscv/machine/io.c"
/* FIFO Control Register */
# 44 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/plat/qemu_riscv/machine/io.c"
/* Line Control Register */
# 56 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/plat/qemu_riscv/machine/io.c"
/* Line Status Register */
# 65 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/plat/qemu_riscv/machine/io.c"
/* Modem Control Register */






/* Modem Status Register */
# 83 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/plat/qemu_riscv/machine/io.c"
static void uart_write_polled(char c)
{
  unsigned char lsr;
  const uint32_t transmit_finished =
    ((0x40) |
     (0x20));

  /* Wait until there is no pending data in the transmitter FIFO (empty) */
  do {
      lsr = (*((volatile char *) ((0x000003f8 +5))));
  } while (!(lsr & (0x20)));

  (*((volatile char *) ((0x000003f8 +0)))) = c;

  /* Wait until trasmit data is finished */
  do {
      lsr = (*((volatile char *) ((0x000003f8 +5))));
  } while ( (lsr & transmit_finished) != transmit_finished );
}



void
qemu_uart_putchar(char c)
{
  uart_write_polled(c);
}

void putDebugChar(unsigned char c)
{
  qemu_uart_putchar(c);
}

unsigned char getDebugChar(void)
{
}
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/util.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/assert.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 12 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/util.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/stdint.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 13 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/util.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/util.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 14 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/util.c" 2

/*
 * Zero 'n' bytes of memory starting from 's'.
 *
 * 'n' and 's' must be word aligned.
 */
void
memzero(void *s, unsigned int n)
{
    uint8_t *p = s;

    /* Ensure alignment constraints are met. */
    do { if ((unsigned int)s % 4 == 0) break; cputstring("Assertion failed: " "(unsigned int)s % 4 == 0" "\n"); terminate(3); } while(0);
    do { if (n % 4 == 0) break; cputstring("Assertion failed: " "n % 4 == 0" "\n"); terminate(3); } while(0);

    /* Write out words. */
    while (n != 0) {
        *(uint32_t *)p = 0;
        p += 4;
        n -= 4;
    }
}

void*
memset(void *s, unsigned int c, unsigned int n)
{
    uint8_t *p;

    /*
     * If we are only writing zeros and we are word aligned, we can
     * use the optimized 'memzero' function.
     */
    if (__builtin_expect(!!(c == 0 && ((uint32_t)s % 4) == 0 && (n % 4) == 0), 1)) {
        memzero(s, n);
    } else {
        /* Otherwise, we use a slower, simple memset. */
        for (p = (uint8_t *)s; n > 0; n--, p++) {
            *p = (uint8_t)c;
        }
    }

    return s;
}

void*
memcpy(void* ptr_dst, const void* ptr_src, unsigned int n)
{
    uint8_t *p;
    const uint8_t *q;

    for (p = (uint8_t *)ptr_dst, q = (const uint8_t *)ptr_src; n; n--, p++, q++) {
        *p = *q;
    }

    return ptr_dst;
}

int
strncmp(const char* s1, const char* s2, int n)
{
    unsigned int i;
    int diff;

    for (i = 0; i < n; i++) {
        diff = ((unsigned char*)s1)[i] - ((unsigned char*)s2)[i];
        if (diff != 0 || s1[i] == '\0') {
            return diff;
        }
    }

    return 0;
}

int __attribute__((__const__))
char_to_int(char c)
{
    if (c >= '0' && c <= '9') {
        return c - '0';
    } else if (c >= 'A' && c <= 'F') {
        return c - 'A' + 10;
    } else if (c >= 'a' && c <= 'f') {
        return c - 'a' + 10;
    }
    return -1;
}

int __attribute__((__pure__))
str_to_int(const char* str)
{
    unsigned int base;
    int res;
    int val = 0;
    char c;

    /*check for "0x" */
    if (*str == '0' && (*(str + 1) == 'x' || *(str + 1) == 'X')) {
        base = 16;
        str += 2;
    } else {
        base = 10;
    }

    if (!*str) {
        return -1;
    }

    c = *str;
    while (c != '\0') {
        res = char_to_int(c);
        if (res == -1 || res >= base) {
            return -1;
        }
        val = val * base + res;
        str++;
        c = *str;
    }

    return val;
}
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/config/default_domain.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/structures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 12 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/config/default_domain.c" 2
# 1 "/home/hesham/MSc-York/seL4/seL4test/kernel/include/model/statedata.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 13 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/config/default_domain.c" 2

/* Default schedule. */
const dschedule_t ksDomSchedule[] = {
    { .domain = 0, .length = 1 },
};

const unsigned int ksDomScheduleLength = sizeof(ksDomSchedule) / sizeof(dschedule_t);
