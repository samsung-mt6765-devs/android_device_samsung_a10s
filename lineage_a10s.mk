#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from a10s device
$(call inherit-product, device/samsung/a10s/device.mk)

PRODUCT_DEVICE := a10s
PRODUCT_NAME := lineage_a10s
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A107F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a10sxx-user 11 RP1A.200720.012 A107FXXS8CWD3 release-keys"

BUILD_FINGERPRINT := samsung/a10sxx/a10s:11/RP1A.200720.012/A107FXXS8CWD3:user/release-keys
