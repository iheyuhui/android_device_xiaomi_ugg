#
# Copyright (C) 2018 The LineageOS Project
#
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
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit from ugg device
$(call inherit-product, device/xiaomi/ugg/device.mk)

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := ugg
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := lineage_ugg

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

TARGET_VENDOR_PRODUCT_NAME := ugg

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=Xiaomi/ugg/ugg:7.1.2/N2G47H/V9.8.4.26.NAMCNEK:user/release-keys \
    PRIVATE_BUILD_DESC="ugg-user 7.1.2 N2G47H V9.8.4.26.NAMCNEK release-keys"

PRODUCT_SYSTEM_PROPERTY_BLACKLIST += \
    ro.product.model