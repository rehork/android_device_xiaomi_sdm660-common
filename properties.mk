# App launch prefetching (IORapd)
PRODUCT_PROPERTY_OVERRIDES += \
ro.iorapd.enable=false \
iorapd.perfetto.enable=false \
iorapd.readahead.enable=false \
persist.device_config.runtime_native_boot.iorap_readahead_enable=false


# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    af.fast_track_multiplier=1 \
    vendor.audio_hal.period_size=240 \
    ro.vendor.audio.sdk.fluencetype=fluence \
    persist.vendor.audio.fluence.voicecall=true \
    persist.vendor.audio.fluence.voicerec=false \
    persist.vendor.audio.fluence.speaker=true \
    vendor.audio.tunnel.encode=false \
    persist.vendor.audio.ras.enabled=false \
    vendor.audio.offload.buffer.size.kb=256\
    audio.offload.min.duration.secs=30 \
    audio.offload.video=true \
    vendor.audio.offload.track.enable=true \
    audio.deep_buffer.media=true \
    vendor.voice.path.for.pcm.voip=true \
    vendor.audio.offload.multiaac.enable=true \
    vendor.audio.dolby.ds2.enabled=false \
    vendor.audio.dolby.ds2.hardbypass=false \
    vendor.audio.offload.multiple.enabled=false \
    vendor.audio.offload.passthrough=false \
    ro.vendor.audio.sdk.ssr=false \
    vendor.audio.offload.gapless.enabled=true \
    vendor.audio.safx.pbe.enabled=false \
    vendor.audio.parser.ip.buffer.size=262144 \
    vendor.audio.flac.sw.decoder.24bit=true \
    vendor.audio.use.sw.alac.decoder=true \
    vendor.audio.use.sw.ape.decoder=true \
    vendor.audio.hw.aac.encoder=true \
    audio.sys.noisy.broadcast.delay=600 \
    audio.sys.offload.pstimeout.secs=3 \
    persist.vendor.audio.hifi.int_codec=true \
    ro.af.client_heap_size_kbyte=7168 \
    vendor.audio.volume.headset.gain.depcal=true \
    persist.vendor.bt.aac_frm_ctl.enabled=true \
    vendor.audio.spkr_prot.tx.sampling_rate=48000

PRODUCT_PROPERTY_OVERRIDES += \
    vendor.audio.feature.afe_proxy.enable=true \
    vendor.audio.feature.anc_headset.enable=true \
    vendor.audio.feature.battery_listener.enable=false \
    vendor.audio.feature.compr_cap.enable=false \
    vendor.audio.feature.compress_in.enable=false \
    vendor.audio.feature.compress_meta_data.enable=true \
    vendor.audio.feature.compr_voip.enable=true \
    vendor.audio.feature.concurrent_capture.enable=false \
    vendor.audio.feature.custom_stereo.enable=true \
    vendor.audio.feature.display_port.enable=true \
    vendor.audio.feature.dsm_feedback.enable=false \
    vendor.audio.feature.dynamic_ecns.enable=false \
    vendor.audio.feature.ext_hw_plugin.enable=false \
    vendor.audio.feature.external_dsp.enable=false \
    vendor.audio.feature.external_speaker.enable=false \
    vendor.audio.feature.external_speaker_tfa.enable=false \
    vendor.audio.feature.fluence.enable=true \
    vendor.audio.feature.fm.enable=true \
    vendor.audio.feature.hdmi_edid.enable=true \
    vendor.audio.feature.hdmi_passthrough.enable=true \
    vendor.audio.feature.hfp.enable=true \
    vendor.audio.feature.hifi_audio.enable=true \
    vendor.audio.feature.hwdep_cal.enable=false \
    vendor.audio.feature.incall_music.enable=false \
    vendor.audio.feature.multi_voice_session.enable=true \
    vendor.audio.feature.keep_alive.enable=false \
    vendor.audio.feature.kpi_optimize.enable=true \
    vendor.audio.feature.maxx_audio.enable=false \
    vendor.audio.feature.ras.enable=true \
    vendor.audio.feature.record_play_concurency.enable=false \
    vendor.audio.feature.src_trkn.enable=true \
    vendor.audio.feature.spkr_prot.enable=true \
    vendor.audio.feature.ssrec.enable=true \
    vendor.audio.feature.usb_offload.enable=true \
    vendor.audio.feature.usb_offload_burst_mode.enable=false \
    vendor.audio.feature.usb_offload_sidetone_volume.enable=false \
    vendor.audio.feature.deepbuffer_as_primary.enable=false \
    vendor.audio.feature.vbat.enable=true \
    vendor.audio.feature.wsa.enable=false \
    vendor.audio.feature.audiozoom.enable=false \
    vendor.audio.feature.snd_mon.enable=true

PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.media_vol_steps=25 \
    ro.config.vc_call_vol_steps=20 \
    vendor.audio.adm.buffering.ms=6

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    persist.bluetooth.a2dp_offload.disabled=false \
    ro.bluetooth.a2dp_offload.supported=true \
    vendor.audio.feature.a2dp_offload.enable=true

# Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.qcom.bluetooth.soc=cherokee

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    persist.vendor.bt.a2dp.aac_whitelist=false \
    persist.vendor.qcom.bluetooth.enable.splita2dp=true \
    persist.vendor.qcom.bluetooth.a2dp_offload_cap=sbc-aptx-aptxhd-aac-ldac \
    ro.bluetooth.library_name=libbluetooth_qti.so \
    persist.vendor.qcom.bluetooth.soc=cherokee \
    vendor.bluetooth.soc=cherokee

# Blur
PRODUCT_PROPERTY_OVERRIDES += \
ro.surface_flinger.supports_background_blur=false \
ro.launcher.blur.appLaunch=0

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.camera.preview.ubwc=0 \
    vendor.video.disable.ubwc=1 \
    vidc.enc.dcvs.extra-buff-count=2 \
    persist.vendor.camera.perflock.enable=0

# Charger
PRODUCT_PRODUCT_PROPERTIES += \
ro.charger.disable_init_blank=true \
ro.charger.enable_suspend=true

# Codec2 switch
PRODUCT_PROPERTY_OVERRIDES += \
debug.media.codec2=2

# Dirac
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
ro.audio.soundfx.dirac=true  \
persist.audio.dirac.speaker=true  \
persist.dirac.acs.controller=qem \
persist.dirac.acs.ignore_error=1  \
persist.dirac.acs.storeSettings=1 \
audio.dirac.logging=0

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
persist.sys.fflag.override.settings_provider_model=false

# CNE
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
persist.vendor.cne.feature=1

# Display
PRODUCT_PROPERTY_OVERRIDES += \
debug.sf.early_phase_offset_ns=500000 \
debug.sf.early_app_phase_offset_ns=500000 \
debug.sf.early_gl_app_phase_offset_ns=15000000 \
debug.sf.early_gl_phase_offset_ns=3000000 \
debug.sf.hw=1 \
debug.sf.enable_gl_backpressure=1 \
debug.sf.disable_backpressure=1 \
debug.sf.latch_unsignaled=1 \
debug.sf.auto_latch_unsignaled=0 \
debug.sdm.support_writeback=0 \
vendor.display.disable_skip_validate=1 \
vendor.display.enable_default_color_mode=0 \
vendor.display.use_smooth_motion=1 \
vendor.gralloc.enable_fb_ubwc=1 \
ro.hardware.egl=adreno \
vendor.display.disable_rotator_downscale=1 \
ro.hardware.vulkan=adreno \
ro.opengles.version=196610

PRODUCT_PROPERTY_OVERRIDES += \
ro.surface_flinger.use_color_management=true \
ro.surface_flinger.has_wide_color_display=true \
ro.surface_flinger.protected_contents=true \
ro.surface_flinger.vsync_event_phase_offset_ns=2000000 \
ro.surface_flinger.vsync_sf_event_phase_offset_ns=6000000 \
ro.surface_flinger.force_hwc_copy_for_virtual_displays=true \
ro.surface_flinger.max_virtual_display_dimension=4096 \
debug.performance.tuning=1 \
ro.sf.blurs_are_expensive=1 \
persist.sys.sf.disable_blurs=1 

# DRM Service
PRODUCT_PROPERTY_OVERRIDES += \
drm.service.enabled=true \
media.mediadrmservice.enable=true

# The default sf phase offset is set to 6ms, to avoid it be included into next
# vsync threshold, set high fps early sf and next vsync threshold phase offset
# to 6.1ms, which is bigger than all sf phase offsets in normal frame rate.
PRODUCT_PROPERTY_OVERRIDES += \
    debug.sf.high_fps_early_phase_offset_ns=6100000 \
    debug.sf.high_fps_early_gl_phase_offset_ns=9000000 \
    debug.sf.phase_offset_threshold_for_next_vsync_ns=6100000

# FRP
PRODUCT_PROPERTY_OVERRIDES += \
ro.frp.pst=/dev/block/bootdevice/by-name/frp


# Fwk detect
PRODUCT_PRODUCT_PROPERTIES += \
ro.vendor.qti.va_aosp.support=1

# IMS
PRODUCT_PROPERTY_OVERRIDES += \
    persist.dbg.volte_avail_ovr=1 \
    persist.dbg.vt_avail_ovr=1  \
    persist.dbg.wfc_avail_ovr=1


# Logs
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
persist.log.tag.OpenGLRenderer=S

# LMKD
PRODUCT_PRODUCT_PROPERTIES += \
ro.config.low_ram=false \
ro.lmk.log_stats=true \
ro.lmk.use_psi=false

# Media
PRODUCT_PROPERTY_OVERRIDES += \
debug.stagefright.omx_default_rank=0 \
debug.stagefright.omx_default_rank.sw-audio=1 \
media.settings.xml=/vendor/etc/media_profiles_vendor.xml \
vendor.vidc.enc.disable.pq=true \
media.stagefright.thumbnail.prefer_hw_codecs=true \
media.stagefright.enable-player=true \
media.stagefright.enable-http=true \
media.stagefright.enable-aac=true \
media.stagefright.enable-qcp=true \
media.stagefright.enable-scan=true \
mm.enable.smoothstreaming=true \
mm.enable.sec.smoothstreaming=true \
ro.media.recorder-max-base-layer-fps=60 \
vendor.mm.enable.qcom_parser=16777215 \
vendor.vidc.dec.enable.downscalar=1 \
vendor.vidc.enc.disable_bframes=1 \
vendor.vidc.enc.disable.pq=true

# Logs
PRODUCT_PROPERTY_OVERRIDES += \
persist.log.tag.OpenGLRenderer=S


# Netflix
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
ro.netflix.bsp_rev=Q660-13149-1

# ODM
PRODUCT_ODM_PROPERTIES += \
ro.vendor.qti.va_odm.support=1

# Perf
PRODUCT_PROPERTY_OVERRIDES += \
ro.vendor.extension_library=libqti-perfd-client.so


# Radio
PRODUCT_PROPERTY_OVERRIDES += \
persist.radio.multisim.config=dsds \
persist.vendor.data.iwlan.enable=true \
persist.vendor.data.mode=concurrent \
persist.vendor.radio.apm_sim_not_pwdn=1 \
persist.vendor.radio.atfwd.start=true \
persist.vendor.radio.custom_ecc=1 \
persist.vendor.radio.data_con_rprt=1 \
persist.vendor.radio.mt_sms_ack=30 \
persist.vendor.radio.rat_on=combine \
persist.vendor.radio.sib16_support=1 \
ro.telephony.default_network=22,22 \
ro.vendor.use_data_netmgrd=true

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
DEVICE_PROVISIONED=1 \
persist.sys.fflag.override.settings_network_and_internet_v2=true \
ro.telephony.handle_audio_direction_changes_between_call_state_changes=false \
ril.subscription.types=NV,RUIM \
telephony.lteOnCdmaDevice=1

PRODUCT_PRODUCT_PROPERTIES += \
ro.telephony.block_binder_thread_on_incoming_calls=false


# RmNet
PRODUCT_PROPERTY_OVERRIDES += \
persist.data.df.dev_name=rmnet_usb0

# Sensor
PRODUCT_PROPERTY_OVERRIDES += \
ro.vendor.sdk.sensors.gestures=false \
ro.vendor.sensors.cmc=false \
ro.vendor.sensors.facing=false \
ro.vendor.sensors.dev_ori=true \
ro.vendor.sensors.pmd=true \
ro.vendor.sensors.sta_detect=true \
ro.vendor.sensors.mot_detect=true

# Set system properties identifying the chipset
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
ro.soc.manufacturer=QTI \
ro.soc.model=SDM660

# Venom
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
ro.surface_flinger.running_without_sync_framework=true

# DHA Tunning
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
ro.config.dha_tunnable=1

# Smoothens UI
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
persist.service.lgospd.enable=0 \
persist.service.pcsync.enable=0

# Time
PRODUCT_PROPERTY_OVERRIDES += \
persist.vendor.delta_time.enable=true \
persist.timed.enable=true


# Video call
PRODUCT_PROPERTY_OVERRIDES += \
persist.vendor.qti.telephony.vt_cam_interface=1

# Watchdog
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
ro.hw_timeout_multiplier=3

# USB
PRODUCT_PROPERTY_OVERRIDES += \
vendor.usb.use_gadget_hal=0


# WFD
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
persist.debug.wfd.enable=1

# Zygote
PRODUCT_PROPERTY_OVERRIDES += \
zygote.critical_window.minute=10
