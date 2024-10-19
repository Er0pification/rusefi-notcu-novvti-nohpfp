BOARDCPPSRC =  $(BOARD_DIR)/board_configuration.cpp \
    $(BOARD_DIR)/default_tune.cpp \


BOARDINC += $(BOARD_DIR)/generated/controllers/generated

# defines SHORT_BOARD_NAME
include $(BOARD_DIR)/meta-info.env

# reduce memory usage monitoring
DDEFS += -DRAM_UNUSED_SIZE=100
IS_STM32F429 = yes
# assign critical LED to a non-existent pin if you do not have it on your board
DDEFS += -DLED_CRITICAL_ERROR_BRAIN_PIN=Gpio::E3
