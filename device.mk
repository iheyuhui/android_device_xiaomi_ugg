#
# Copyright (C) 2018 The LineageOS Project
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

DEVICE_PATH := $(LOCAL_PATH)

# Inherit from msm8937-common
$(call inherit-product, device/xiaomi/msm8937-common/msm8937.mk)

# Include device-specific product fragments
include $(DEVICE_PATH)/product/*.mk

# SOTER (Fingerprint support for WeChat Payment)
PRODUCT_PACKAGES += \
    soter

PRODUCT_BOOT_JARS += \
    soter

# Consumerir
PRODUCT_PACKAGES += \   
   android.hardware.ir@1.0-impl \    
   android.hardware.ir@1.0-service

# Inherit proprietary files
$(call inherit-product-if-exists, vendor/xiaomi/ugg/ugg-vendor.mk)
