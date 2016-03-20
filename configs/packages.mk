# SELinux override
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1

# Included packages
PRODUCT_PACKAGES += \
    Browser \
    Busybox \
    ExactCalculator \
    Gallery2 \
    KernelAdiutor \
    Launcher3 \
    messaging

# Extra tools
PRODUCT_PACKAGES += \
    e2fsck \
    mount.exfat \
    fsck.exfat \
    mkfs.exfat
