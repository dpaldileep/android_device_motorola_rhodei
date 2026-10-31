#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from rhodei device
$(call inherit-product, device/motorola/rhodei/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_rhodei
PRODUCT_DEVICE := rhodei
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g62 5G

# Lunch banner maintainer variable
RISING_MAINTAINER="Dileep"

# Chipset/Maintainer properties (ro.rising.chipset/ro.rising.maintainer) 
# Set RISING_MAINTAINER for version control 
# (Optional if builder is setting properties via init_<device>.cpp)
PRODUCT_BUILD_PROP_OVERRIDES += \
    RisingChipset="snapdragon 695" \
    RisingMaintainer="Dileep"

RISING_MAINTAINER := Dileep
# Disable/enable blur support, false by default
TARGET_ENABLE_BLUR := false

# Whether to ship aperture camera, false by default
PRODUCT_NO_CAMERA := false

# GMS build flags, true by default
# Ship with GMS packages, replaces default AOSP packages with Google manufactured packages.
WITH_GMS := true

# CORE build flags
WITH_GMS := true
TARGET_USES_PICO_GAPPS := true

# VANILLA only build flags
WITH_GMS := false

# VANILLA build with MICROG
WITH_GMS := false
WITH_MICROG := true

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="rhodei_g-user 13 T1SSIS33.1-75-7-16 3686b-585454 release-keys" \
    BuildFingerprint=motorola/rhodei_g/rhodei:13/T1SSIS33.1-75-7-16/3686b-585454:user/release-keys \
    DeviceProduct=rhodei_g
