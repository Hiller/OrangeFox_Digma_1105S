#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from TS1088ML device
$(call inherit-product, device/digma/TS1088ML/device.mk)

PRODUCT_DEVICE := TS1088ML
PRODUCT_NAME := omni_TS1088ML
PRODUCT_BRAND := DIGMA
PRODUCT_MODEL := Optima 1105S 4G TS1088ML
PRODUCT_MANUFACTURER := digma

PRODUCT_GMS_CLIENTID_BASE := alps-full_L710G_1250_JLC_DIGMA-{country}

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_L710G_1250_JLC_DIGMA-user 5.1 LMY47D 1480564041 test-keys"

BUILD_FINGERPRINT := DIGMA/Optima 1105S 4G/TS1088ML:5.1/LMY47D/1480564041:user/test-keys
