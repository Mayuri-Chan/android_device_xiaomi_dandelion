#
# Copyright (C) 2021 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit some common Lineage stuff
TARGET_BOOT_ANIMATION_RES := 720
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from garden device makefile
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_garden
PRODUCT_DEVICE := garden
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi MT6765 G Series
PRODUCT_MANUFACTURER := xiaomi

# Build info
TARGET_VENDOR := xiaomi
TARGET_VENDOR_PRODUCT_NAME := garden
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=garden \
    PRODUCT_NAME=garden \
    PRIVATE_BUILD_DESC="dandelion-user 10 QP1A.190711.020 V12.0.12.0.QCDMIXM release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := google/sunfish/sunfish:11/RQ2A.210305.006/7119741:user/release-keys

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
