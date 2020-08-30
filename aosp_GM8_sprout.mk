
# Copyright (C) 2017 The LineageOS Project
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

# Installs gsi keys into ramdisk, to boot a GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit from daisy device
$(call inherit-product, device/GM/GM8_sprout/base.mk)

# Enable updating of APEXes
#$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Inherit some common PixelExperience stuff.
TARGET_BOOT_ANIMATION_RES := 720
TARGET_BOOTANIM_LOW_RES := true
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)
    
#Gapps
TARGET_GAPPS_ARCH := arm64

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := GM8_sprout
PRODUCT_NAME := aosp_GM8_sprout
PRODUCT_BRAND := GM
PRODUCT_MODEL := GM 8
PRODUCT_MANUFACTURER := General Mobile
TARGET_VENDOR := GM
BOARD_VENDOR := GM

PRODUCT_GMS_CLIENTID_BASE := android-a1-gm-rev2

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="daisy-user 9 PKQ1.180917.001 V10.0.1.0.PDLMIFJ release-keys"

# FINGERPRINT
BUILD_FINGERPRINT := "GM/GM8/GM8_sprout:9/OPM1.171019.011/P.GM8.1912.E-s:user/release-keys"

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
