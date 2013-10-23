# Inherit some common carbon stuff.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, vendor/carbon/config/common_full_tablet_wifionly.mk)
$(call inherit-product, vendor/carbon/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/actions/gs702a/full_gs702a.mk)

#Device identifier. This must come after all inclusions
PRODUCT_NAME := carbon_gs702a
PRODUCT_BRAND := Android
PRODUCT_DEVICE := gs702a
PRODUCT_MODEL := Novo 10 Hero QuadCore
PRODUCT_MANUFACTURER := ainol

TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 1280
