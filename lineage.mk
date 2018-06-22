# Needed stuff
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit some common CM stuff.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Call device specific makefile
$(call inherit-product, device/micromax/a106/lineage_a106.mk)

LOCAL_PATH := device/micromax/a106

# Common CM stuff
CM_BUILD := a106

$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_a106
PRODUCT_DEVICE := a106
PRODUCT_BRAND := micromax
PRODUCT_MANUFACTURER := Mediatek
PRODUCT_MODEL := Micromax Unite 2

# Boot animation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

# Release name
PRODUCT_RELEASE_NAME := Unite 2
