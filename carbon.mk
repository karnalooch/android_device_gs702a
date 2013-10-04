# Inherit some common carbon stuff.
$(call inherit-product, vendor/carbon/config/common_full_tablet_wifionly.mk)
$(call inherit-product, vendor/carbon/config/common.mk)

# Inherit device configuration
#$(call inherit-product, device/actions/gs702a/full_gs702a.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

#Device identifier. This must come after all inclusions
PRODUCT_NAME := carbon_gs702a
PRODUCT_DEVICE := gs702a
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 1280
