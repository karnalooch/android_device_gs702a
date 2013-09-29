#
# Copyright (C) 2011 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH := device/actions/gs702a
# Toolchain
TARGET_GCC_VERSION := 4.7
TARGET_GCC_VERSION_EXP := 4.7
TARGET_GLOBAL_CFLAGS += -O3
TARGET_GLOBAL_CPPFLAGS += -O3

# Arch vars
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a5
TARGET_BOARD_PLATFORM := ATM702X
TARGET_BOARD_PLATFORM_GPU := VIVANTE
TARGET_BOOTLOADER_BOARD_NAME := full_gs702a
TARGET_NO_BOOTLOADER := true
TARGET_NO_RECOVERY := true
TARGET_NO_RADIOIMAGE := true
TARGET_PROVIDES_INIT_RC := true
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true

# Depreciated vars
TARGET_ARCH_VARIANT_CPU := cortex-a5
TARGET_FPU_VARIANT := neon
TARGET_ARCH_VARIANT_FPU := neon
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HAVE_32_BYTE_CACHE_LINES := true

BOARD_USES_GENERIC_AUDIO := true
BOARD_EGL_CFG := device/actions/gs702a/configs/egl.cfg

# Kernel
BOARD_KERNEL_CMDLINE := console=ttyS5,115200 earlyprintk
BOARD_KERNEL_BASE := 0x00000000
BOARD_PAGE_SIZE := 2048
TARGET_PREBUILT_KERNEL := device/actions/gs702a/configs/kernel
TARGET_KERNEL_SOURCE := kernel/actions/gs702a
TARGET_KERNEL_CONFIG := leopard_evb_defconfig
#KERNEL_DIR := kernel/gs702a

# Filesystem
BOARD_BOOTIMAGE_PARTITION_SIZE := 50331648
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 50331648
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 536870912
BOARD_USERDATAIMAGE_PARTITION_SIZE := 536870912
BOARD_FLASH_BLOCK_SIZE := 4096
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_LARGE_FILESYSTEM := true

# Board
BOARD_USES_HGL := true
BOARD_USES_OVERLAY := true
USE_OPENGL_RENDERER := true
ENABLE_WEBGL := true
BOARD_USE_SKIA_LCDTEXT := true
BOARD_USES_HWCOMPOSER := true
USE_CAMERA_STUB := true
DEVICE_RESOLUTION := 800x1280
TARGET_BOARD_INFO_FILE := device/actions/gs702a/board-info.txt

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay
PRODUCT_PACKAGE_OVERLAYS += $(LOCAL_PATH/overlay)

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR=device/generic/common/bluetooth

# Recovery
TARGET_RECOVERY_FSTAB := device/actions/gs702a/rootdir/etc/fstab.gs702a
#TARGET_PREBUILT_RECOVERY_KERNEL := device/actions/gs702a/recovery-kernel
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_USERIMAGES_USE_EXT4 := true
RECOVERY_FSTAB_VERSION := 2

# Bootanimation
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

# Releasetool
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := build/tools/releasetools/ota_from_target_files

# Wifi stuff
BOARD_WLAN_DEVICE := rtl8188eu
#BOARD_WLAN_DEVICE := rtl8723as

WIFI_DRIVER_MODULE_NAME := wlan
WIFI_DRIVER_MODULE_PATH := /misc/modules/wlan.ko

WIFI_DRIVER_FW_PATH_STA := none
WIFI_DRIVER_MODULE_ARG  := "ifname=wlan0 if2name=p2p0"

WPA_SUPPLICANT_VERSION := VER_0_8_X_RTL
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_rtl
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_rtl

BOARD_WLAN_VENDOR := REALTEK
BOARD_WIFI_VENDOR := realtek

TARGET_CUSTOM_WIFI := hardware/act/gs702a/wlan/rtl8188eu/libhardware_legacy/wifi/wifi_realtek.c

#-include device/actions/gs802a/wifi/wifi.mk

# Android 4.3 defs
COMMON_GLOBAL_CFLAGS += -DACT_HARDWARE -DCHARGER_DISABLE_INIT_BLANK -DACT_GRLC -DACT_AUDIO

# Device select
TARGET_DEVICE := hero2
#TARGET_DEVICE := venus2
#TARGET_DEVICE := crystal2
