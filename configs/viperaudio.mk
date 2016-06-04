# Viper4Android
PRODUCT_PACKAGES += \
    ViPER4Android

PRODUCT_COPY_FILES += \
    vendor/$(VENDOR)/prebuilt/common/addon.d/91-v4a.sh:system/addon.d/91-v4a.sh \
    vendor/$(VENDOR)/prebuilt/common/etc/v4a.zip:system/addon.d/v4a.zip

PRODUCT_PROPERTY_OVERRIDES += \
    audio.deep_buffer.media=false \
    lpa.decode=false \
    tunnel.decode=false \
    tunnel.audiovideo.decode=false \
    lpa.releaselock=false \
    lpa.use-stagefright=false \
    persist.sys.media.use-awesome=1 \
    af.resampler.quality=255 \
    persist.af.resampler.quality=255 \
    persist.dev.pm.dyn_samplingrate=1 \
    ro.sound.driver=alsa \
    ro.sound.alsa=snd_pcm \
    AUDIODRIVER=alsa \
    ro.sound.driver=alsa \
    clock.allow_streaming_errors=false \
    default.pcm.rate_converter=samplerate_zero_order \
    ro.ril.enable.amr.wideband=1 \
    sony.effect.custom.sp_bundle=0x122 \
    sony.effect.custom.caplus_hs=0x298 \
    sony.effect.custom.caplus_sp=0x2B8 \
    sony.support.effect=0x1FF \
    ro.semc.xloud.supported=true \
    persist.service.xloud.enable=1 \
    ro.semc.clearaudio.supported=true \
    persist.service.clearaudio.enable=1 \
    ro.semc.clearphase.supported=true \
    persist.service.clearphase.enable=1 \
    ro.somc.sforce.supported=true \
    persist.service.sforce.enable=1
