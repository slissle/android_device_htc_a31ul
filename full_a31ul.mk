#
# Copyright (C) 2014 The CyanogenMod Project
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

# We don't have 64bit support (yet)
FORCE_32_BIT := true

# Inherit from those products. Most specific first.
ifneq ($(FORCE_32_BIT),true)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
endif
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from a31ul device
$(call inherit-product, device/htc/a31ul/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := a31ul
PRODUCT_NAME := full_a31ul
PRODUCT_BRAND := htc
PRODUCT_MODEL := HTC Desire 620
PRODUCT_MANUFACTURER := HTC
