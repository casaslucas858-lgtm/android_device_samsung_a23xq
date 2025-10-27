# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from a23xq device
$(call inherit-product, device/samsung/a23xq/device.mk)

# Inherit some common LineageOS stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier
PRODUCT_NAME := lineage_a23xq
PRODUCT_DEVICE := a23xq
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A236M
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

# Build fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a23xqmxx-user 14 UP1A.231005.007 A236MUBSBEYG1 release-keys"

BUILD_FINGERPRINT := samsung/a23xqmxx/a23xq:14/UP1A.231005.007/A236MUBSBEYG1:user/release-keys
