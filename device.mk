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
PRODUCT_COPY_FILES += \
	$(LOCAL_KERNEL):kernel \

PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,$(LOCAL_PATH)/rootdir/etc/dev,root/dev)

PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,$(LOCAL_PATH)/rootdir/etc/lib,root/lib)

PRODUCT_COPY_FILES += \
    device/actions/gs702a/rootdir/etc/apns-conf.xml:system/etc/apns-conf.xml \
	device/actions/gs702a/rootdir/etc/init.gs702a.rc:root/init.gs702a.rc \
	device/actions/gs702a/rootdir/etc/init.eth0.rc:root/init.eth0.rc \
	device/actions/gs702a/rootdir/etc/init.gs702a.sdboot.rc:root/init.gs702a.sdboot.rc \
	device/actions/gs702a/rootdir/etc/fstab.gs702a:root/fstab.gs702a \
	device/actions/gs702a/rootdir/etc/fstab.sdboot.gs702a:root/fstab.sdboot.gs702a \
	device/actions/gs702a/rootdir/etc/init.quickboot.rc:root/init.quickboot.rc \
	device/actions/gs702a/rootdir/etc/init.gs702a.usb.rc:root/init.gs702a.usb.rc \
	device/actions/gs702a/rootdir/etc/ueventd.gs702a.rc:root/ueventd.gs702a.rc \
	device/actions/gs702a/rootdir/etc/fstab.gs702a:system/etc/fstab.gs702a \
	device/actions/gs702a/configs/ft5x0x_ts.idc:system/usr/idc/ft5x0x_ts.idc \
	device/actions/gs702a/configs/GT813.idc:system/usr/idc/GT813.idc \
	device/actions/gs702a/configs/mt395.idc:system/usr/idc/mt395.idc \
	device/actions/gs702a/configs/atc260x-adckeypad.kl:system/usr/keylayout/atc260x-adckeypad.kl \
	device/actions/gs702a/configs/excluded-input-devices.xml:system/etc/excluded-input-devices.xml \
	device/actions/gs702a/configs/packages-compat-default.xml:system/etc/packages-compat-default.xml \
	device/actions/gs702a/configs/builtinapk:system/etc/builtinapk \
	device/actions/gs702a/configs/NOTICE.html:system/etc/NOTICE.html \
	frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/extras/android.hardware.bluetooth.xml \
	frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/extras/android.hardware.location.gps.xml \
	frameworks/native/data/etc/android.hardware.sensor.compass.xml:/system/etc/permissions/extras/android.hardware.sensor.compass.xml \
	frameworks/native/data/etc/tablet_core_hardware.xml:/system/etc/permissions/tablet_core_hardware.xml \
	vendor/carbon/config/permissions/com.carbon.android.xml:/system/etc/permissions/com.carbon.android.xml \
	vendor/carbon/config/permissions/com.carbon.nfc.enhanced.xml:/system/etc/permissions/com.carbon.nfc.enhanced.xml \
	vendor/carbon/config/permissions/com.tmobile.software.themes.xml:/system/etc/permissions/com.tmobile.software.themes.xml

# audio policy configuration
PRODUCT_COPY_FILES += \
	hardware/libhardware_legacy/audio/audio_policy.conf:/system/etc/audio_policy.conf
	
# FIXME init.rc doesn't run mkdir for system/vendor/app, so we use do this here using a dummy file
PRODUCT_COPY_FILES += \
	device/actions/gs702a/readme:system/vendor/app/readme

PRODUCT_PACKAGES += \
    make_ext4fs \
	com.android.future.usb.accessory

# Set default USB interface
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	persist.sys.usb.config=adb,mass_storage
	
PRODUCT_PROPERTY_OVERRIDES += \
	hwui.render_dirty_regions=false

PRODUCT_PACKAGES += \
	com.android.future.usb.accessory

PRODUCT_PROPERTY_OVERRIDES += \
	ro.product.locale.language=en \
	ro.product.locale.region=US

PRODUCT_PROPERTY_OVERRIDES += \
	dalvik.vm.dexopt-flags=v=n,o=v \
	dalvik.vm.checkjni=false \
	dalvik.vm.heapgrowthlimit=80m

PRODUCT_PROPERTY_OVERRIDES += \
	ro.secure=1	\
	ro.debuggable=1 \
	ro.setupwizard.mode=DISABLE \
	persist.sys.timezone=America/Los_Angeles \
	persist.sys.strictmode.disable=true \
	wifi.supplicant_scan_interval=120 \
	wifi.interface=wlan0 \
	debug.sf.no_hw_vsync=1

PRODUCT_PROPERTY_OVERRIDES += \
	ro.support.gpswithwifi=1

DEVICE_PACKAGE_OVERLAYS := \
    device/actions/gs702a/overlay

# Ramdisk
PRODUCT_PACKAGES += \
	fstab.gs702a \
	init.gs702a.rc \
	init.rc \
	init.wifi.rc \
	init.usb.rc \
	init.gs702a.usb.rc \
	init.modules.rc \
	init.extra_modules.rc \
	init.quickboot.rc \
	ueventd.gs702a.rc

PRODUCT_PACKAGES += \
	actions \
	pfmnceserver \
	libperformance \
	libactions_runtime \
	usbmond \
	charger \
	charger_res_images \
	SpeechRecorder \
	libsrec_jni

PRODUCT_PACKAGES += \
	updater \
	e2fsck \
	ping \
	netperf \
	netserver \
	tcpdump \
	wpa_cli \
	strace

PRODUCT_PACKAGES += \
	dosfslabel \
	iostat
	
PRODUCT_PACKAGES += \
	rild \
	libactions-ril \
	usb_modeswitch \
	libusb \
	libusb-compat \
	usbmond

PRODUCT_PACKAGES += \
	AdobeFlashPlayer.apk \
	libflashplayer.so \
	libstagefright_froyo.so \
	libstagefright_honeycomb.so \
	libysshared.so \
	libffmpeg_wrapper \
	libPopupVideo \
	libvinit \
	performancepolicy \
	ActSensorCalib

PRODUCT_PACKAGES += \
	init.superuser.rc

PRODUCT_PACKAGES += \
	libGAL \
	libGLSLC \
	gpuhwcomposer.ATM702X.so \
	libGLESv1_CM_VIVANTE.so \
	libEGL_VIVANTE.so \
	gpu_config \
	game_r2 \
	game_r3 \
	libGLESv2_VIVANTE.so
	
PRODUCT_PACKAGES += \
	libsub \
	libbmp \
	id_jpg\
	adAAC \
	adAC3 \
	adACELP \
	adAMR \
	adAPE \
	adAWB \
	adCOOK \
	adDTS \
	adFLAC \
	adMP3 \
	adOGG \
	adPCM \
	adWMALSL \
	adWMAPRO \
	adWMASTD \
	aeMP3 \
	aeWAV \
	apAAC \
	apAC3 \
	apAMR \
	apAPE \
	apDTS \
	apFLAC \
	apMP3 \
	apOGG \
	apRMA \
	apWAV \
	apWMA \
	avd_avi \
	avd_flv \
	avd_mkv \
	avd_mp4 \
	avd_mpg \
	avd_ogm \
	avd_rm \
	avd_ts \
	avd_wmv \
	vd_flv1 \
	vd_h263 \
	vd_h264 \
	vd_mjpg \
	vd_mpeg \
	vd_msm4 \
	vd_rv34 \
	vd_rvg2 \
	vd_vc1 \
	vd_vp6 \
	vd_vp8 \
	vd_xvid \
	libACT_ISP \
	libACT_FD \
	libvde_core \
	libbacklight \
	libimg_en

PRODUCT_PACKAGES += \
	libOMX_Core \
	gralloc.ATM702X \
	cvbs.ATM702X \
	displayengine.ATM702X \
	hdmi.ATM702X \
	hwcomposer.ATM702X \
	overlay.ATM702X \
	lights.ATM702X \
	sensors.ATM702X \
	libomxBellagio_base \
	libOMX.Action.Audio.Decoder \
	libOMX.Action.Video.Camera \
	libACT_V4L2HAL \
	libOMX.Action.Image.Decoder \
	libOMX.Action.Video.Encoder \
	libACT_EncAPI \
	libOMX.Action.Video.Decoder \
	libstagefrighthw \
	camera.ATM702X \
	audio.r_submix.default

PRODUCT_PACKAGES += \
	dhcpcd.conf \
	init.wifi.rc \
	lib_driver_cmd_rtl \
	hostapd \
	hostapd_cli \
	wpa_cli \
	libwpa_client \
	wpa_supplicant \
	wpa_supplicant.conf

$(call inherit-product, device/actions/gs702a/usb_modeswitch.d/usb_modeswitch.mk)
$(call inherit-product, frameworks/native/build/tablet-10in-xhdpi-2048-dalvik-heap.mk)

PRODUCT_NAME := full_gs702a
PRODUCT_DEVICE := gs702a

TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 1280

PRODUCT_AAPT_CONFIG += large xlarge mdpi hdpi tvdpi
PRODUCT_AAPT_PREF_CONFIG := xlarge

PRODUCT_CHARACTERISTICS := tablet

PRODUCT_TAGS += dalvik.gc.type-precise
