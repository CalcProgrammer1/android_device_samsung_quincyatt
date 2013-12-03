# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 800

# Inherit device configuration
$(call inherit-product, device/samsung/quincyatt/full_quincyatt.mk)

# Inherit some common slim stuff.
$(call inherit-product, vendor/slim/config/common_full_phone.mk)

# Inherit some common slim stuff.
$(call inherit-product, vendor/slim/config/gsm.mk)

# Enhanced NFC
$(call inherit-product, vendor/slim/config/nfc_enhanced.mk)

# Inherit torch settings
$(call inherit-product, vendor/slim/config/common_ledflash.mk)

# Release name
PRODUCT_RELEASE_NAME := quincyatt

# Device identifier
PRODUCT_NAME := slim_quincyatt
PRODUCT_DEVICE := quincyatt

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGH-I717 TARGET_DEVICE=SGH-I717 BUILD_FINGERPRINT="samsung/SGH-I717/SGH-I717:4.4/KRT16S/I717UCMD3:user/release-keys" PRIVATE_BUILD_DESC="SGH-I717-user 4.4 KRT16S I717UCMD3 release-keys"
