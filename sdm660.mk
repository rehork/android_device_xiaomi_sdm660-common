#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit properties
$(call inherit-product, $(LOCAL_PATH)/properties.mk)
PRODUCT_COMPATIBLE_PROPERTY_OVERRIDE := true

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage

PRODUCT_ENFORCE_RRO_TARGETS := *

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Permissions
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/system-privapp-permissions-qti.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-qti.xml \
    $(LOCAL_PATH)/configs/system_ext-privapp-permissions-qti.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/privapp-permissions-qti.xml

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.audio.pro.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.audio.pro.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.full.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.full.xml \
    frameworks/native/data/etc/android.hardware.camera.raw.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.raw.xml \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.fingerprint.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.opengles.aep.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.telephony.ims.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.ims.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.vulkan.level-0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.level.xml \
    frameworks/native/data/etc/android.hardware.vulkan.version-1_1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.version-1_1.xml \
    frameworks/native/data/etc/android.hardware.vulkan.compute-0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.compute.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.passpoint.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.passpoint.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.ipsec_tunnels.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.ipsec_tunnels.xml \
    frameworks/native/data/etc/android.software.midi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.midi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.software.verified_boot.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.verified_boot.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/handheld_core_hardware.xml

# Audio
PRODUCT_PACKAGES += \
    android.hardware.audio@5.0-impl:32 \
    android.hardware.audio.effect@5.0-impl:32 \
    android.hardware.audio.service \
    android.hardware.soundtrigger@2.1-impl:32 \
    audio.a2dp.default \
    audio.primary.sdm660 \
    audio.r_submix.default \
    audio.usb.default \
    libaudio-resampler \
    libqcompostprocbundle \
    libqcomvisualizer \
    libqcomvoiceprocessing \
    libvolumelistener

PRODUCT_PACKAGES += \
    android.hardware.bluetooth.audio@2.0-impl:32 \
    audio.bluetooth.default \
    vendor.qti.hardware.bluetooth_audio@2.0.vendor

PRODUCT_PACKAGES += \
    liba2dpoffload \
    libhdmiedid \
    libhfp \
    libsndmonitor


# Audio configs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.xml \
    $(LOCAL_PATH)/configs/audio/a2dp_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_audio_policy_configuration.xml \
    $(LOCAL_PATH)/audio/audio_output_policy.conf:$(TARGET_COPY_OUT_VENDOR)/etc/audio_output_policy.conf \
    $(LOCAL_PATH)/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/audio_policy_configuration.xml \
    $(LOCAL_PATH)/audio/audio_policy_configuration_a2dp_offload_disabled.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml \
    $(LOCAL_PATH)/audio/audio_policy_configuration_a2dp_offload_disabled_qti.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/audio_policy_configuration_a2dp_offload_disabled.xml \
    $(LOCAL_PATH)/audio/audio_tuning_mixer.txt:$(TARGET_COPY_OUT_VENDOR)/etc/audio_tuning_mixer.txt \
    $(LOCAL_PATH)/audio/bluetooth_qti_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/bluetooth_qti_audio_policy_configuration.xml \
    $(LOCAL_PATH)/audio/graphite_ipc_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/graphite_ipc_platform_info.xml \
    $(LOCAL_PATH)/audio/bluetooth_hearing_aid_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/bluetooth_hearing_aid_audio_policy_configuration.xml \
    $(LOCAL_PATH)/audio/listen_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/listen_platform_info.xml \
    $(LOCAL_PATH)/audio/audio_platform_info_extcodec.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info_extcodec.xml \
    $(LOCAL_PATH)/configs/audio/audio_platform_info_skush.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info_skush.xml


PRODUCT_COPY_FILES += \
    frameworks/av/services/audiopolicy/config/a2dp_in_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_in_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
    frameworks/av/services/audiopolicy/config/bluetooth_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/bluetooth_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml \
    frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/r_submix_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/surround_sound_configuration_5_0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/surround_sound_configuration_5_0.xml \
    frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/usb_audio_policy_configuration.xml



#    
#    $(LOCAL_PATH)/configs/audio/audio_effects.conf:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.conf \
#    $(LOCAL_PATH)/configs/audio/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.xml \
#    $(LOCAL_PATH)/configs/audio/audio_output_policy.conf:$(TARGET_COPY_OUT_VENDOR)/etc/audio_output_policy.conf \
#    $(LOCAL_PATH)/configs/audio/audio_platform_info_extcodec.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info_extcodec.xml \

#    $(LOCAL_PATH)/configs/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml \
#    $(LOCAL_PATH)/configs/audio/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/audio_policy_configuration.xml \
#    $(LOCAL_PATH)/configs/audio/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
#    $(LOCAL_PATH)/configs/audio/audio_tuning_mixer.txt:$(TARGET_COPY_OUT_VENDOR)/etc/audio_tuning_mixer.txt \
#    $(LOCAL_PATH)/configs/audio/audio_tuning_mixer_tasha.txt:$(TARGET_COPY_OUT_VENDOR)/etc/audio_tuning_mixer_tasha.txt \
#    $(LOCAL_PATH)/configs/audio/audio_tuning_mixer_tavil.txt:$(TARGET_COPY_OUT_VENDOR)/etc/audio_tuning_mixer_tavil.txt \
#    $(LOCAL_PATH)/configs/audio/graphite_ipc_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/graphite_ipc_platform_info.xml \
#    $(LOCAL_PATH)/configs/audio/mixer_paths_tasha.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_tasha.xml \
#    $(LOCAL_PATH)/configs/audio/mixer_paths_tavil.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_tavil.xml \
#    $(LOCAL_PATH)/configs/audio/mixer_paths_tasha_skus.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_tasha_skus.xml \
#    $(LOCAL_PATH)/configs/audio/mixer_paths_wcd9326.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_wcd9326.xml \
#    $(LOCAL_PATH)/configs/audio/mixer_paths_wcd9335.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_wcd9335.xml \
#    $(LOCAL_PATH)/configs/audio/mixer_paths_wcd9340.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_wcd9340.xml \
#    $(LOCAL_PATH)/configs/audio/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/r_submix_audio_policy_configuration.xml \
#    $(LOCAL_PATH)/configs/audio/sound_trigger_mixer_paths_wcd9330.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_mixer_paths_wcd9330.xml \
#    $(LOCAL_PATH)/configs/audio/sound_trigger_mixer_paths_wcd9335.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_mixer_paths_wcd9335.xml \
#    $(LOCAL_PATH)/configs/audio/sound_trigger_mixer_paths_wcd9340.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_mixer_paths_wcd9340.xml \
#    $(LOCAL_PATH)/configs/audio/usb_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/usb_audio_policy_configuration.xml \
#    $(LOCAL_PATH)/audio/audio_policy_configuration_a2dp_offload_disabled.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml \
#    $(LOCAL_PATH)/audio/audio_policy_configuration_a2dp_offload_disabled_qti.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/audio_policy_configuration_a2dp_offload_disabled.xml \
#    $(LOCAL_PATH)/audio/bluetooth_qti_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/bluetooth_qti_audio_policy_configuration.xml \
#    $(LOCAL_PATH)/audio/graphite_ipc_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/graphite_ipc_platform_info.xml \
#    $(LOCAL_PATH)/audio/audio_platform_info_extcodec.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info_extcodec.xml \
#    $(LOCAL_PATH)/audio/listen_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/listen_platform_info.xml \
#    frameworks/av/services/audiopolicy/config/a2dp_in_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_in_audio_policy_configuration.xml \
#    frameworks/av/services/audiopolicy/config/surround_sound_configuration_5_0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/surround_sound_configuration_5_0.xml \
#    frameworks/av/services/audiopolicy/config/bluetooth_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/bluetooth_audio_policy_configuration.xml \
#    frameworks/av/services/audiopolicy/config/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml

# Exclude TOF sensor from InputManager
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/excluded-input-devices.xml:system/etc/excluded-input-devices.xml \

   
# ANT+
PRODUCT_PACKAGES += \
    AntHalService \
    com.dsi.ant.antradio_library

PRODUCT_COPY_FILES += \
    external/ant-wireless/antradio-library/com.dsi.ant.antradio_library.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.dsi.ant.antradio_library.xml

# Biometrics
PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint@2.1-service.xiaomi_sdm660

PRODUCT_PACKAGES += \
    org.ifaa.android.manager

PRODUCT_BOOT_JARS += \
    org.ifaa.android.manager

# Bluetooth
PRODUCT_PACKAGES += \
    vendor.qti.hardware.btconfigstore@1.0.vendor \
    libbthost_if

# Build
PRODUCT_BROKEN_VERIFY_USES_LIBRARIES := true
RELAX_USES_LIBRARY_CHECK := true

# Camera
PRODUCT_PACKAGES += \
    android.hardware.camera.device@3.4:64 \
    android.hardware.camera.device@3.5:64 \
    android.hardware.camera.provider@2.4:64 \
    android.hardware.camera.provider@2.4-impl:32 \
    android.hardware.camera.provider@2.4-service \
    android.hardware.camera.provider@2.5:64 \
    libdng_sdk.vendor \
    vendor.qti.hardware.camera.device@1.0:64

# Call recording for Google Dialer
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/com.google.android.apps.dialer.call_recording_audio.features.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/com.google.android.apps.dialer.call_recording_audio.features.xml

# Cgroup and task_profiles
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/cgroups.json:$(TARGET_COPY_OUT_VENDOR)/etc/cgroups.json \
    $(LOCAL_PATH)/configs/task_profiles.json:$(TARGET_COPY_OUT_VENDOR)/etc/task_profiles.json

# Component overrides
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/component-overrides.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sysconfig/component-overrides.xml \
    $(LOCAL_PATH)/configs/component-overrides-qti.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/component-overrides.xml

# ConsumerIR
ifeq ($(BOARD_HAVE_IR),true)
PRODUCT_PACKAGES += \
    android.hardware.ir@1.0-service.xiaomi_sdm660

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.consumerir.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.consumerir.xml
endif

# Display
PRODUCT_PACKAGES += \
    gralloc.sdm660 \
    hwcomposer.sdm660 \
    memtrack.sdm660 \
    libdisplayconfig \
    libdisplayconfig.qti \
    libdisplayconfig.qti.vendor \
    libtinyxml \
    libqdMetaData \
    libqdMetaData.system

PRODUCT_PACKAGES += \
    android.frameworks.displayservice@1.0_32 \
    android.hardware.graphics.allocator@2.0-impl:64 \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.mapper@2.0-impl-2.1 \
    android.hardware.graphics.composer@2.1-service \
    android.hardware.memtrack@1.0-impl \
    android.hardware.memtrack@1.0-service \
    android.hardware.renderscript@1.0-impl \
    android.frameworks.displayservice@1.0 \
    vendor.display.config@2.0 \
    vendor.display.config@2.0.vendor


# Display CFG
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/configs/ad_calib.cfg:$(TARGET_COPY_OUT_VENDOR)/etc/ad_calib.cfg \
   $(LOCAL_PATH)/configs/displayconfig/display_id_0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/displayconfig/display_id_0.xml

# Device Settings
PRODUCT_PACKAGES += \
    XiaomiParts

# DPM
PRODUCT_PACKAGES += \
    libshim_dpmframework

# DRM
PRODUCT_PACKAGES += \
    android.hardware.drm@1.0-impl:64 \
    android.hardware.drm@1.0-service \
    android.hardware.drm@1.3.vendor \
    android.hardware.drm@1.3-service.clearkey


# FM
ifeq ($(BOARD_HAVE_QCOM_FM),true)
PRODUCT_PACKAGES += \
    FM2 \
    libqcomfm_jni \
    qcom.fmradio \
    qcom.fmradio.xml
endif

# fwk-detect
PRODUCT_PACKAGES += \
    libqti_vndfwk_detect \
    libqti_vndfwk_detect.vendor \
    libvndfwk_detect_jni.qti \
    libvndfwk_detect_jni.qti.vendor

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.vendor.qti.va_aosp.support=1

PRODUCT_ODM_PROPERTIES += \
    ro.vendor.qti.va_odm.support=1

# Freeform Multiwindow
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.freeform_window_management.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.freeform_window_management.xml

# GPS / Location
PRODUCT_PACKAGES += \
    android.hardware.gnss@2.0-impl-qti \
    android.hardware.gnss@2.0-service-qti \
    android.hardware.gnss@2.0.vendor \
    libbatching \
    libgeofencing \
    libgnss \
    libsensorndkbridge \
    libwifi-hal-ctrl

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/gps/etc/flp.conf:$(TARGET_COPY_OUT_VENDOR)/etc/flp.conf \
    $(LOCAL_PATH)/gps/etc/gps.conf:$(TARGET_COPY_OUT_VENDOR)/etc/gps.conf \
    $(LOCAL_PATH)/gps/etc/izat.conf:$(TARGET_COPY_OUT_VENDOR)/etc/izat.conf \
    $(LOCAL_PATH)/gps/etc/lowi.conf:$(TARGET_COPY_OUT_VENDOR)/etc/lowi.conf \
    $(LOCAL_PATH)/gps/etc/sap.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sap.conf \
    $(LOCAL_PATH)/gps/etc/xtwifi.conf:$(TARGET_COPY_OUT_VENDOR)/etc/xtwifi.conf

# Healthd
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl-qti \
    android.hardware.health@2.1-impl:64 \
    android.hardware.health@2.1-service

ifneq ($(AB_OTA_UPDATER),true)
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl.recovery
endif

# HIDL
PRODUCT_PACKAGES += \
    android.hidl.base@1.0 \
    android.hidl.base@1.0.vendor \
    libhidltransport \
    libhidltransport.vendor \
    libhwbinder \
    libhwbinder.vendor

# Hotword blobs
$(call inherit-product, vendor/xiaomi/google/google.mk)

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/privapp-permissions-hotword.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/privapp-permissions-hotword.xml

# IDC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/idc/uinput-fpc.idc:$(TARGET_COPY_OUT_VENDOR)/usr/idc/uinput-fpc.idc \
    $(LOCAL_PATH)/idc/AVRCP.idc:$(TARGET_COPY_OUT_VENDOR)/usr/idc/AVRCP.idc \
    $(LOCAL_PATH)/idc/qwerty.idc:$(TARGET_COPY_OUT_VENDOR)/usr/idc/qwerty.idc \
    $(LOCAL_PATH)/idc/qwerty2.idc:$(TARGET_COPY_OUT_VENDOR)/usr/idc/qwerty2.idc \
    $(LOCAL_PATH)/idc/uinput-goodix.idc:$(TARGET_COPY_OUT_VENDOR)/usr/idc/uinput-goodix.idc

# Init
PRODUCT_PACKAGES += \
    init.class_main.sh \
    init.msm.usb.configfs.rc \
    init.qcom.early_boot.sh \
    init.qcom.post_boot.sh \
    init.qcom.rc \
    init.qcom.sh \
    init.qcom.usb.rc \
    init.qcom.usb.sh \
    init.recovery.qcom.rc \
    init.target.rc \
    ueventd.qcom.rc

# IRQ
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/msm_irqbalance.conf:$(TARGET_COPY_OUT_VENDOR)/etc/msm_irqbalance.conf

# IRSC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sec_config:$(TARGET_COPY_OUT_VENDOR)/etc/sec_config

# Keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/uinput-goodix.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/uinput-goodix.kl \
    $(LOCAL_PATH)/keylayout/AVRCP.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/AVRCP.kl \
    $(LOCAL_PATH)/keylayout/qwerty.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/qwerty.kl \
    $(LOCAL_PATH)/keylayout/uinput-fpc.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/uinput-fpc.kl \
    $(LOCAL_PATH)/keylayout/gpio-keys.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/gpio-keys.kl\
    $(LOCAL_PATH)/keylayout/sdm660-snd-card_Button_Jack.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/sdm660-snd-card_Button_Jack.kl

# Lights
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-service.xiaomi_sdm660

# Lineage Health
PRODUCT_PACKAGES += \
    vendor.lineage.health-service.default

# LiveDisplay native
PRODUCT_PACKAGES += \
    vendor.lineage.livedisplay@2.0-service-sdm \
    vendor.lineage.livedisplay@2.0-service-sysfs

# Media
PRODUCT_PACKAGES += \
    android.hardware.media.c2@1.1.vendor

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_codecs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media_codecs_performance.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/configs/media_profiles_V1_0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_V1_0.xml

PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_c2.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_c2.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_c2_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_c2_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_c2_video.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_c2_video.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video_le.xml

# Offline charger
PRODUCT_PACKAGES += \
    charger_res_images \
    product_charger_res_images

# OMX
PRODUCT_PACKAGES += \
    libc2dcolorconvert \
    libcodec2_hidl@1.0.vendor \
    libcodec2_vndk.vendor \
    libmm-omxcore \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxG711Enc \
    libOmxQcelp13Enc \
    libOmxVdec \
    libOmxVenc \
    libstagefrighthw

# Perf
PRODUCT_PACKAGES += \
    libqti-perfd-client \
    vendor.qti.hardware.perf@2.0.vendor

# Protobuf
PRODUCT_PACKAGES += \
    libprotobuf-cpp-full-vendorcompat \
    libprotobuf-cpp-lite-vendorcompat

# Power
PRODUCT_PACKAGES += \
    android.hardware.power-service.xiaomi-libperfmgr \
    android.hardware.power.stats@1.0-service.mock

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/perf/perf-profile0.conf:$(TARGET_COPY_OUT_VENDOR)/etc/perf/perf-profile0.conf

# Powerhint
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/power-libperfmgr/sdm660_powerhint.json:$(TARGET_COPY_OUT_VENDOR)/etc/powerhint.json
 
# Protobuf
PRODUCT_PACKAGES += \
    libprotobuf-cpp-full-vendorcompat \
    libprotobuf-cpp-lite-vendorcompat

# Public Libraries
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/public.libraries.txt:$(TARGET_COPY_OUT_VENDOR)/etc/public.libraries.txt

# Low power Whitelist
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/qti_whitelist.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/qti_whitelist.xml

# QMI
PRODUCT_PACKAGES += \
    libjson

# RenderScript HAL
PRODUCT_PACKAGES += \
    android.hardware.renderscript@1.0-impl

# RIL
PRODUCT_PACKAGES += \
    android.hardware.secure_element@1.0 \
    rild \
    libjson \
    librmnetctl \
    libprotobuf-cpp-full

PRODUCT_PACKAGES += \
    ims-ext-common \
    ims_ext_common.xml \
    qti-telephony-hidl-wrapper \
    qti_telephony_hidl_wrapper.xml \
    qti-telephony-utils \
    qti_telephony_utils.xml \
    telephony-ext

# RIL JAR
PRODUCT_BOOT_JARS += \
    telephony-ext

# Seccomp policy
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/seccomp/mediacodec-seccomp.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediacodec.policy \
    $(LOCAL_PATH)/seccomp/mediaextractor-seccomp.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediaextractor.policy

# Sensors
PRODUCT_PACKAGES += \
    android.frameworks.sensorservice@1.0 \
    android.frameworks.sensorservice@1.0.vendor \
    android.hardware.sensors@1.0-impl:64 \
    android.hardware.sensors@1.0-service \
    libsensorndkbridge

# Speed profile services and wifi-service to reduce RAM and storage
PRODUCT_SYSTEM_SERVER_COMPILER_FILTER := speed-profile
PRODUCT_ALWAYS_PREOPT_EXTRACTED_APK := true
USE_DEX2OAT_DEBUG := false
PRODUCT_MINIMIZE_JAVA_DEBUG_INFO := true
PRODUCT_ART_TARGET_INCLUDE_DEBUG_BUILD := false
WITH_DEXPREOPT_DEBUG_INFO := false

PRODUCT_DEXPREOPT_SPEED_APPS += \
    Settings


# Tethering
PRODUCT_PACKAGES += \
    TetheringConfigOverlay

# Tetheroffload
PRODUCT_PACKAGES += \
    ipacm \
    IPACM_cfg.xml

# Trust
PRODUCT_PACKAGES += \
    vendor.lineage.trust@1.0-service

# Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator@1.0-impl:64 \
    android.hardware.vibrator@1.0-service

# VNDK
PRODUCT_PACKAGES += \
    vndk-ext

# Wifi
PRODUCT_PACKAGES += \
    android.hardware.wifi@1.0-service \
    hostapd \
    libwifi-hal-qcom \
    libwpa_client \
    WifiOverlay \
    wpa_supplicant \
    wpa_supplicant.conf \
    wpa_cli

# WiFi Configs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wifi/p2p_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/wifi/wpa_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant_overlay.conf \
    $(LOCAL_PATH)/wifi/WCNSS_qcom_cfg.ini:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/WCNSS_qcom_cfg.ini  \
    $(LOCAL_PATH)/wifi/fstman.ini:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/fstman.ini

# WiFi Display
PRODUCT_PACKAGES += \
    libaacwrapper \
    libnl \
    libshim_wfdmmsink \
    libstagefright_enc_common

PRODUCT_BOOT_JARS += \
    WfdCommon

# Inherit the proprietary files
$(call inherit-product, vendor/xiaomi/sdm660-common/sdm660-common-vendor.mk)
