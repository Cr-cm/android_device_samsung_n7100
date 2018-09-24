PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.secure=0 \
    ro.adb.secure=0 \
    ro.debuggable=1 \
    persist.service.adb.enable=1 \
    debug.generate-debug-info=1

PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.image-dex2oat-filter=interpret-only \
    dalvik.vm.dex2oat-filter=interpret-only

# Art compiler filter, don't use speed and speed-profile
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.image-dex2oat-filter=quicken \
    dalvik.vm.dex2oat-filter=quicken \
    pm.dexopt.first-boot=quicken \
    pm.dexopt.boot=verify \
    pm.dexopt.install=verify \
    pm.dexopt.bg-dexopt=quicken \
    pm.dexopt.ab-ota=quicken \
    pm.dexopt.inactive=verify \
    pm.dexopt.shared=quicken
