$(call inherit-product, device/samsung/quincyatt/full_quincyatt.mk)

# Inherit some common ev stuff.
$(call inherit-product, vendor/ev/config/gsm.mk)

# Inherit some common ev stuff.
$(call inherit-product, vendor/ev/config/common_full_phone.mk)

PRODUCT_NAME := ev_quincyatt
PRODUCT_DEVICE := quincyatt
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SAMSUNG-SGH-I717
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGH-I717 TARGET_DEVICE=SGH-I717 BUILD_FINGERPRINT="samsung/SGH-I717/SGH-I717:4.4/KRT16S/I717UCMD3:user/release-keys" PRIVATE_BUILD_DESC="SGH-I717-user 4.4 KRT16S I717UCMD3 release-keys"

PRODUCT_CODENAME := quincyatt

PRODUCT_MOTD :="\n\n\n--------------------MESSAGE---------------------\nThank you for choosing Evervolv \nfor your AT&T Samsung Galaxy Note I717\nPlease visit us at \#evervolv on irc.freenode.net\nFollow @preludedrew for the latest Evervolv updates\nGet the latest rom at XDA-Developers.com\n------------------------------------------------\n"

# Hot reboot
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/ev/overlay/hot_reboot

# Copy compatible prebuilt files
PRODUCT_COPY_FILES += \
    vendor/ev/prebuilt/720p/media/bootanimation.zip:system/media/bootanimation.zip
