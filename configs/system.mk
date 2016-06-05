# Include overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/$(VENDOR)/overlay/common
PRODUCT_PACKAGE_OVERLAYS += vendor/$(VENDOR)/overlay/$(TARGET_PRODUCT)

# Copy custom ramdisk
PRODUCT_COPY_FILES += \
    vendor/$(VENDOR)/prebuilt/etc/init.$(VENDOR).rc:root/init.$(VENDOR).rc

# init.d script support
PRODUCT_COPY_FILES += \
    vendor/$(VENDOR)/prebuilt/bin/sysinit:system/bin/sysinit

# userinit support
PRODUCT_COPY_FILES += \
    vendor/$(VENDOR)/prebuilt/etc/init.d/90userinit:system/etc/init.d/90userinit

# backup script
 PRODUCT_COPY_FILES += \
    vendor/$(VENDOR)/prebuilt/bin/backuptool.sh:system/bin/backuptool.sh \
    vendor/$(VENDOR)/prebuilt/bin/backuptool.functions:system/bin/backuptool.functions \
    vendor/$(VENDOR)/prebuilt/bin/50-backupScript.sh:system/addon.d/50-backupScript.sh

# Bootanimation support
PRODUCT_COPY_FILES += \
    vendor/$(VENDOR)/prebuilt/media/bootanimation.zip:system/media/bootanimation.zip

# SuperSU
PRODUCT_COPY_FILES += \
    vendor/$(VENDOR)/prebuilt/etc/99SuperSUDaemon:system/etc/init.d/99SuperSUDaemon \
    vendor/$(VENDOR)/prebuilt/common/UPDATE-SuperSU.zip:system/addon.d/UPDATE-SuperSU.zip

# Viper4Android
PRODUCT_COPY_FILES += \
    vendor/mallow/prebuilt/etc/v4a.zip:system/addon.d/v4a.zip \
    vendor/mallow/prebuilt/addon.d/91-v4a.sh:system/addon.d/91-v4a.sh

ifneq ($(filter mallow_flo mallow_hammerhead mallow_shamu,$(TARGET_PRODUCT)),)
# media effects
PRODUCT_COPY_FILES +=  \
    vendor/$(VENDOR)/prebuilt/media/LMspeed_508.emd:system/vendor/media/LMspeed_508.emd \
    vendor/$(VENDOR)/prebuilt/media/PFFprec_600.emd:system/vendor/media/PFFprec_600.emd
endif

# APN list
PRODUCT_COPY_FILES += \
    vendor/$(VENDOR)/prebuilt/etc/apns-conf.xml:system/etc/apns-conf.xml
