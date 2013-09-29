# name
PRODUCT_RELEASE_NAME := Hero2

# Inherit device configuration
$(call inherit-product, device/actions/gs702a/full_gs702a.mk)

# tablet
$(call inherit-product, vendor/carbon/config/common_tablet.mk)

# Inherit some common carbon stuff.
$(call inherit-product, vendor/carbon/config/common_full_tablet_wifionly.mk)

#Device identifier. This must come after all inclusions
PRODUCT_NAME := carbon_gs702a
PRODUCT_BRAND := Android
PRODUCT_DEVICE := gs702a
PRODUCT_MODEL := Novo 10 Hero QuadCore
PRODUCT_MANUFACTURER := Ainol
PRODUCT_PROPERTY_OVERRIDES += ro.buildzipid=carbon.gs702a.$(shell date +%m%d%y).$(shell date +%H%M%S)

TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 1280
