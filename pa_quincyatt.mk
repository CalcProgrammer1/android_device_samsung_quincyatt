# Copyright (C) 2012 ParanoidAndroid Project
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

# Check for target product
ifeq (pa_quincyatt,$(TARGET_PRODUCT))

# Define PA bootanimation size
PARANOID_BOOTANIMATION_NAME := XHDPI

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_quincyatt

# Build paprefs from sources
PREFS_FROM_SOURCE ?= false

# Inherit telephony common stuff
$(call inherit-product, vendor/pa/configs/telephony.mk)

# Include AOSPA common configuration
include vendor/pa/main.mk

# Inherit AOSP device configuration
$(call inherit-product, device/samsung/quincyatt/full_quincyatt.mk)

# Extra Packages
PRODUCT_PACKAGES += \
    CMFileManager \
    Torch

# Override AOSP build properties
PRODUCT_NAME := pa_quincyatt
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SAMSUNG-SGH-I717
PRODUCT_MANUFACTURER := Samsung
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGH-I717 TARGET_DEVICE=SGH-I717 BUILD_FINGERPRINT="samsung/SGH-I717/SGH-I717:4.4/KRT16M/I717UCMD3:user/release-keys" PRIVATE_BUILD_DESC="SGH-I717-user 4.4 KRT16M I717UCMD3 release-keys"

endif
