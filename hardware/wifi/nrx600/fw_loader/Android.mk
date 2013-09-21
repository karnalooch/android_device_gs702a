ifeq ($(strip $(BOARD_WIFI_VENDOR)), nanoradio)

LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

TARGET = wlan_loader
LOCAL_MODULE = $(TARGET)

LOCAL_SRC_FILES := nrwlan_loader.c

LOCAL_SHARED_LIBRARIES += libc libcutils libhardware_legacy

LOCAL_CFLAGS = -Wall -Wstrict-prototypes -D__LINUX__ 
LOCAL_CFLAGS += -DHOST_COMPILE -DANDROID

ifdef WIFI_DRIVER_FW_PATH_STA
LOCAL_CFLAGS += -DWIFI_DRIVER_FW_PATH_STA=\"$(WIFI_DRIVER_FW_PATH_STA)\"
endif

ifdef WIFI_DRIVER_FW_PATH_AP
LOCAL_CFLAGS += -DWIFI_DRIVER_FW_PATH_AP=\"$(WIFI_DRIVER_FW_PATH_AP)\"
endif

ifdef WIFI_DRIVER_FW_PATH_P2P
LOCAL_CFLAGS += -DWIFI_DRIVER_FW_PATH_P2P=\"$(WIFI_DRIVER_FW_PATH_P2P)\"
endif

ifdef WIFI_DRIVER_FW_PATH_PARAM
LOCAL_CFLAGS += -DWIFI_DRIVER_FW_PATH_PARAM=\"$(WIFI_DRIVER_FW_PATH_PARAM)\"
endif

ifdef WIFI_DRIVER_IFACE
LOCAL_CFLAGS += -DWIFI_DRIVER_IFACE=\"$(WIFI_DRIVER_IFACE)\"
endif

LOCAL_MODULE_CLASS := EXECUTABLES

LOCAL_MODULE_TAGS := optional 

LOCAL_C_INCLUDES = $(INCLUDES)


#include $(BUILD_EXECUTABLE)

endif