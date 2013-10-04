LOCAL_PATH := $(call my-dir)
# Common Stuff
ifeq ($(TARGET_BOARD_PLATFORM),ATM702X)
include $(CLEAR_VARS)
LOCAL_MODULE    := fstab.gs702a
LOCAL_MODULE_TAGS   := optional
LOCAL_MODULE_CLASS  := ETC
LOCAL_SRC_FILES := etc/fstab.gs702a
LOCAL_MODULE_PATH   := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE    := charger
LOCAL_MODULE_TAGS   := optional
LOCAL_MODULE_CLASS  := ETC
LOCAL_SRC_FILES := etc/charger
LOCAL_MODULE_PATH   := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE    := init.gs702a.rc
LOCAL_MODULE_TAGS   := optional
LOCAL_MODULE_CLASS  := ETC
LOCAL_SRC_FILES := etc/init.gs702a.rc
LOCAL_MODULE_PATH   := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE    := init.gs702a.usb.rc
LOCAL_MODULE_TAGS   := optional
LOCAL_MODULE_CLASS  := ETC
LOCAL_SRC_FILES := etc/init.gs702a.usb.rc
LOCAL_MODULE_PATH   := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE    := init.quickboot.rc
LOCAL_MODULE_TAGS   := optional
LOCAL_MODULE_CLASS  := ETC
LOCAL_SRC_FILES := etc/init.quickboot.rc
LOCAL_MODULE_PATH   := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE    := usbmond.sh
LOCAL_MODULE_TAGS   := optional
LOCAL_MODULE_CLASS  := ETC
LOCAL_SRC_FILES := etc/usbmond.sh
LOCAL_MODULE_PATH   := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE    := ueventd.gs702a.rc
LOCAL_MODULE_TAGS   := optional
LOCAL_MODULE_CLASS  := ETC
LOCAL_SRC_FILES := etc/ueventd.gs702a.rc
LOCAL_MODULE_PATH   := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

ifneq ($(PREBUILT_INITRC),false)
include $(CLEAR_VARS)
LOCAL_MODULE    := init.rc
LOCAL_MODULE_TAGS   := optional
LOCAL_MODULE_CLASS  := ETC
LOCAL_SRC_FILES := etc/init.rc
LOCAL_MODULE_PATH   := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)
endif

###########################################
# Device Specific Stuff
###########################################

# Hero 2
ifeq ($(TARGET_DEVICE),gs702a)
include $(CLEAR_VARS)
LOCAL_MODULE    := init.modules.rc
LOCAL_MODULE_TAGS   := optional
LOCAL_MODULE_CLASS  := ETC
LOCAL_SRC_FILES := etc/init.modules.hero2.rc
LOCAL_MODULE_PATH   := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE    := init.extra_modules.rc
LOCAL_MODULE_TAGS   := optional
LOCAL_MODULE_CLASS  := ETC
LOCAL_SRC_FILES := etc/init.extra_modules.hero2.rc
LOCAL_MODULE_PATH   := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)
endif

# Venus2
ifeq ($(TARGET_DEVICE),venus2)
include $(CLEAR_VARS)
LOCAL_MODULE    := init.modules.rc
LOCAL_MODULE_TAGS   := optional eng
LOCAL_MODULE_CLASS  := ETC
LOCAL_SRC_FILES := etc/init.modules.venus2.rc
LOCAL_MODULE_PATH   := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE    := init.extra_modules.rc
LOCAL_MODULE_TAGS   := optional eng
LOCAL_MODULE_CLASS  := ETC
LOCAL_SRC_FILES := etc/init.extra_modules.venus2.rc
LOCAL_MODULE_PATH   := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)
endif

# Crystal2
ifeq ($(TARGET_DEVICE),crystal2)
include $(CLEAR_VARS)
LOCAL_MODULE    := init.modules.rc
LOCAL_MODULE_TAGS   := optional eng
LOCAL_MODULE_CLASS  := ETC
LOCAL_SRC_FILES := etc/init.modules.crystal2.rc
LOCAL_MODULE_PATH   := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE    := init.extra_modules.rc
LOCAL_MODULE_TAGS   := optional
LOCAL_MODULE_CLASS  := ETC
LOCAL_SRC_FILES := etc/init.extra_modules.crystal2.rc
LOCAL_MODULE_PATH   := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)
endif

###########################################
# Wifi Specifics
###########################################

# Realtek rtl8188eu
ifeq ($(BOARD_WLAN_DEVICE),rtl8188eu)
include $(CLEAR_VARS)
LOCAL_MODULE    := init.wifi.rc
LOCAL_MODULE_TAGS   := optional
LOCAL_MODULE_CLASS  := ETC
LOCAL_SRC_FILES := etc/init.wifi.rtl8188eu.rc
LOCAL_MODULE_PATH   := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)
endif

endif
