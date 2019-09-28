#
# Copyright (C) 2018-2019 The LineageOS Project
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
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit some common Nitrogen stuff
$(call inherit-product, vendor/nitrogen/products/common.mk)
$(call inherit-product, vendor/nitrogen/config/qcom_target.mk)
TARGET_SCREEN_WIDTH := 1080

TARGET_USES_MKE2FS := true

# Dalvik & HWUI overrides
$(call inherit-product, vendor/nitrogen/config/phone-xxxhdpi-3072-dalvik-heap.mk)
$(call inherit-product, vendor/nitrogen/config/phone-xxxhdpi-3072-hwui-memory.mk)

TARGET_QCOM_BLUETOOTH_VARIANT := caf-msm8998

# Long screenshot
PRODUCT_PACKAGES += \
    Longshot
	
USE_DEVICE_SPECIFIC_DISPLAY := true
DEVICE_SPECIFIC_DISPLAY_PATH := hardware/qcom/display-caf-msm8998
USE_DEVICE_SPECIFIC_AUDIO := true
DEVICE_SPECIFIC_AUDIO_PATH := hardware/qcom/audio-caf-msm8998
USE_DEVICE_SPECIFIC_MEDIA := true
DEVICE_SPECIFIC_MEDIA_PATH := hardware/qcom/media-caf-msm8998

# Inherit from X00T device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := asus
PRODUCT_DEVICE := X00T
PRODUCT_MANUFACTURER := asus
PRODUCT_NAME := nitrogen_X00T
PRODUCT_MODEL := ZenFone Max Pro M1

PRODUCT_GMS_CLIENTID_BASE := android-asus

TARGET_VENDOR := asus
TARGET_VENDOR_PRODUCT_NAME := X00T

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sdm660_64-user 9 PKQ1 1181 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Android/sdm660_64/sdm660_64:9/PKQ1/16.2017.1905.053-20190513:user/release-keys

HAVOC_BUILD_TYPE := Official
PRODUCT_PROPERTY_OVERRIDES += \
    ro.havoc.maintainer=rizkybenggolo
