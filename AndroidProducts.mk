#
# Copyright (C) 2021 The ArrowOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/arrow_apollo.mk

PRODUCT_USE_DYNAMIC_PARTITIONS := true

COMMON_LUNCH_CHOICES := \
    arrow_apollo-user \
    arrow_apollo-userdebug \
    arrow_apollo-eng
