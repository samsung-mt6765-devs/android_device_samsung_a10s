#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

BOARD_VENDOR := samsung

BUILD_BROKEN_DUP_RULES := true
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true
BUILD_BROKEN_ENFORCE_SYSPROP_OWNER := true

DEVICE_PATH := device/samsung/a10s

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := cortex-a53

TARGET_USES_64_BIT_BINDER := true

# APEX
OVERRIDE_TARGET_FLATTEN_APEX := true

# Assert
TARGET_OTA_ASSERT_DEVICE := a10s

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := S96116RA1
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_NO_RPC := true

# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true

# Display
TARGET_SCREEN_DENSITY := 280

# HWUI
HWUI_COMPILE_FOR_PERF := true

# Kernel
BOARD_BOOTIMG_HEADER_VERSION := 2
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
BOARD_KERNEL_CMDLINE += androidboot.init_fatal_reboot_target=recovery
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS += --base $(BOARD_KERNEL_BASE)
BOARD_MKBOOTIMG_ARGS += --pagesize $(BOARD_KERNEL_PAGESIZE)
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_MKBOOTIMG_ARGS += --kernel_offset $(BOARD_KERNEL_OFFSET)
BOARD_MKBOOTIMG_ARGS += --second_offset $(BOARD_KERNEL_SECOND_OFFSET)
BOARD_MKBOOTIMG_ARGS += --dtb_offset $(BOARD_DTB_OFFSET)
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOT_HEADER_VERSION)
BOARD_KERNEL_IMAGE_NAME := Image
BOARD_INCLUDE_DTB_IN_BOOTIMG := true
BOARD_KERNEL_SEPARATED_DTBO := true
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_CLANG_COMPILE := true
TARGET_KERNEL_VERSION := 4.19
TARGET_KERNEL_CONFIG := a10s_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/a10s

# Keymaster
TARGET_KEYMASTER_VARIANT := samsung

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
BOARD_DTBOIMG_PARTITION_SIZE := 16777216
BOARD_USERDATAIMAGE_PARTITION_SIZE := 10555997184

TARGET_COPY_OUT_VENDOR := vendor
TARGET_COPY_OUT_PRODUCT := product
TARGET_COPY_OUT_SYSTEM_EXT := system/system_ext

# Partitions (Dynamic)
BOARD_SUPER_PARTITION_GROUPS := samsung_dynamic_partitions
BOARD_MAIN_DYNAMIC_PARTITIONS_SIZE := 4402151424
BOARD_MAIN_DYNAMIC_PARTITIONS_PARTITION_LIST := system vendor product
BOARD_SUPER_PARTITION_SIZE := 4402151424

BOARD_SUPER_PARTITION_BLOCK_DEVICES := product vendor system
BOARD_SUPER_PARTITION_METADATA_DEVICE := system

BOARD_SUPER_PARTITION_SYSTEM_DEVICE_SIZE := 3674210304
BOARD_SUPER_PARTITION_VENDOR_DEVICE_SIZE := 469762048
BOARD_SUPER_PARTITION_PRODUCT_DEVICE_SIZE := 258179072

# Partitions (File systems)
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_USES_METADATA_PARTITION := true

# Platform
TARGET_BOARD_PLATFORM := mt6765
BOARD_HAS_MTK_HARDWARE := true

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop
TARGET_PRODUCT_PROP += $(DEVICE_PATH)/product.prop

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.mt6765
BOARD_INCLUDE_RECOVERY_DTBO := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := $(DEVICE_PATH)

# RIL
ENABLE_VENDOR_RIL_SERVICE := true

# Security patch level
VENDOR_SECURITY_PATCH := 2023-02-05

# SEPolicy
SELINUX_IGNORE_NEVERALLOWS := true
TARGET_USING_LEGACY_SELINUX := true
include device/mediatek/sepolicy_vndr/SEPolicy.mk

# Verified Boot
BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 3
BOARD_AVB_RECOVERY_KEY_PATH := external/avb/test/data/testkey_rsa4096.pem
BOARD_AVB_RECOVERY_ALGORITHM := SHA256_RSA4096
BOARD_AVB_RECOVERY_ROLLBACK_INDEX := 1
BOARD_AVB_RECOVERY_ROLLBACK_INDEX_LOCATION := 1

# VNDK
BOARD_VNDK_VERSION := current

# VINTF
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE := \
    vintf/mediatek_framework_compatibility_matrix.xml \
    hardware/samsung/vintf/samsung_framework_compatibility_matrix.xml \
    vendor/lineage/config/device_framework_matrix.xml \

DEVICE_MANIFEST_FILE := \
    $(DEVICE_PATH)/manifest.xml

DEVICE_MATRIX_FILE := \
    $(DEVICE_PATH)/compatibility_matrix.xml

# Inherit the proprietary files
include vendor/samsung/a10s/BoardConfigVendor.mk
