#
# Copyright (C) 2016 The CyanogenMod Project
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

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# call the proprietary setup
$(call inherit-product-if-exists, vendor/xiaomi/kenzo/kenzo-vendor.mk)

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_platform_info_extcodec.xml:system/etc/audio_platform_info_extcodec.xml \
    $(LOCAL_PATH)/audio/mixer_paths.xml:system/etc/mixer_paths_wcd9326.xml

# Camera
PRODUCT_PACKAGES += \
    camera.msm8952 \
    libqomx_core \
    libmm-qcamera \
    Snap

# Fingerprint
PRODUCT_PACKAGES += \
    fingerprint.msm8952 \

# Charger
PRODUCT_PACKAGES += \
    charger_res_images \
    cm_charger_res_images \
    font_log.png \
    libhealthd.cm

ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.usb.id.midi=90BA \
    ro.usb.id.midi_adb=90BB \
    ro.usb.id.mtp=300B \
    ro.usb.id.mtp_adb=300C \
    ro.usb.id.ptp=300D \
    ro.usb.id.ptp_adb=300E \
    ro.usb.id.ums=300F \
    ro.usb.id.ums_adb=3010 \
    ro.usb.vid=2a96


# Input
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/idc/uinput-fpc.idc:system/usr/idc/uinput-fpc.idc

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/Atmel_maXTouch_Touchscreen.kl:system/usr/keylayout/Atmel_maXTouch_Touchscreen.kl \
    $(LOCAL_PATH)/keylayout/ft5x06_ts.kl:system/usr/keylayout/ft5x06_ts.kl \
    $(LOCAL_PATH)/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    $(LOCAL_PATH)/keylayout/msm8976-tashalite-snd-card_Button_Jack.kl:system/usr/keylayout/msm8976-tashalite-snd-card_Button_Jack.kl \
    $(LOCAL_PATH)/keylayout/uinput-fpc.kl:system/usr/keylayout/uinput-fpc.kl

# Sensors
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sensors/hals.conf:system/etc/sensors/hals.conf \
    $(LOCAL_PATH)/configs/sensors/sensor_def_qcomdev.conf:system/etc/sensors/sensor_def_qcomdev.conf

# Wifi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wifi/WCNSS_qcom_wlan_nv.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin

# Disk Encryption
 PRODUCT_PACKAGES += \
     libcryptfs_hw

# Inherit from msm8956-common
$(call inherit-product, device/xiaomi/msm8956-common/msm8956.mk)
