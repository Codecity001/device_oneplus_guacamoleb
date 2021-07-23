#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from guacamoleb device
$(call inherit-product, device/oneplus/guacamoleb/device.mk)

# Inherit some common DotOS stuff.
$(call inherit-product, vendor/dot/config/common.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := dot_guacamoleb
PRODUCT_DEVICE := guacamoleb
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := GM1901
PRODUCT_MANUFACTURER := OnePlus

PRODUCT_AAPT_CONFIG := xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi
PRODUCT_CHARACTERISTICS := nosdcard
PRODUCT_BOARD_PLATFORM := msmnile
PRODUCT_USES_QCOM_HARDWARE := true

# Gapps
WITH_GAPPS := true

# Blur
TARGET_SUPPORTS_BLUR := true

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1080

# FOD Animation
EXTRA_FOD_ANIMATIONS := true


# Build info
BUILD_FINGERPRINT := "OnePlus/OnePlus7/OnePlus7:11/RKQ1.201022.002/2106290956:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=OnePlus7 \
    PRODUCT_NAME=OnePlus7 \
    PRIVATE_BUILD_DESC="OnePlus7-user 11   release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

# Faceunlock
TARGET_FACE_UNLOCK_SUPPORTED := true
