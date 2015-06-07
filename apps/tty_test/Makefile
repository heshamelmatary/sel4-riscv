# Targets
TARGETS := tty_test.bin

ENTRY_POINT := __app_start

# Source files required to build the target
CFILES   := $(patsubst $(SOURCE_DIR)/%,%,$(wildcard $(SOURCE_DIR)/src/*.c))
CFILES   += $(patsubst $(SOURCE_DIR)/%,%,$(wildcard $(SOURCE_DIR)/crt/arch-${ARCH}/*.c))
ASMFILES := $(patsubst $(SOURCE_DIR)/%,%,$(wildcard $(SOURCE_DIR)/crt/arch-${ARCH}/crt0.S))
CFLAGS   += -m32

 # Libraries required to build the target
LIBS := c sel4
 #export DEBUG=1
include $(SEL4_COMMON)/common.mk

