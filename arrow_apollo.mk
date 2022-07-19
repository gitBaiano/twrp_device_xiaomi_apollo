#
# Copyright (C) 2021 The ArrowOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from apollo device
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_minimal.mk)

# Inherit some common ArrowOS stuff.
$(call inherit-product, vendor/arrow/config/common.mk)

# Release name
PRODUCT_RELEASE_NAME := apollo
DEVICE_PATH := device/xiaomi/apollo

PRODUCT_CHARACTERISTICS := nosdcard

PRODUCT_NAME := arrow_apollo
PRODUCT_DEVICE := apollo
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Xiaomi Mi 10T

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="apollo_global-user 12 RKQ1.211001.001 V13.0.3.0.SJDMIXM release-keys"

BUILD_FINGERPRINT := Redmi/apollo_global/apollo:12/RKQ1.211001.001/V13.0.3.0.SJDMIXM:user/release-keys

# HACK: Set vendor patch level
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.build.security_patch=2099-12-31

# fastbootd stuff 
PRODUCT_PACKAGES += \
    fastbootd \
    android.hardware.fastboot@1.0-impl-mock \
    android.hardware.fastboot@1.0-impl-mock.recovery