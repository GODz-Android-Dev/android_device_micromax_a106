# LOCAL PATH
LOCAL_PATH := device/micromax/a106

# ARCHITECTURE
TARGET_BOARD_PLATFORM := mt6582
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
ARCH_ARM_HAVE_VFP := true
TARGET_CPU_SMP := true
TARGET_ARCH := arm
ARCH_ARM_HAVE_NEON := true
TARGET_NO_BOOTLOADER := true
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a7
TARGET_CPU_VARIANT:= cortex-a7
TARGET_CPU_MEMCPY_OPT_DISABLE := true

# NINJA
USE_NINJA := true

# Block based ota
BLOCK_BASED_OTA := false

# Storage Allocations
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE:=943718400
BOARD_USERDATAIMAGE_PARTITION_SIZE:=2725773312
BOARD_CACHEIMAGE_PARTITION_SIZE:=132120576
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 131072

# Use mke2fs instead of make_ext4fs
TARGET_USES_MKE2FS := true

# Kernel Stuff
BOARD_CUSTOM_BOOTIMG_MK := $(LOCAL_PATH)/tools/bootimg.mk
MTK_PLATFORM := mt6582
MTK_PROJECT := a106
TARGET_KERNEL_SOURCE := kernel/micromax/a106
TARGET_KERNEL_CONFIG := a106_defconfig
BOARD_KERNEL_IMAGE_NAME := zImage
BOARD_KERNEL_CMDLINE :=
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048
KERNEL_TOOLCHAIN := $(ANDROID_BUILD_TOP)/prebuilts/gcc/$(HOST_OS)-x86/arm/arm-eabi-4.8/bin
KERNEL_TOOLCHAIN_PREFIX := arm-eabi-
#TARGET_PREBUILT_KERNEL := device/micromax/a106/kernel

# Hack for build
$(shell mkdir -p $(OUT)/obj/KERNEL_OBJ/usr)

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# TWRP stuff
TW_THEME := portrait_hdpi
TW_SDEXT_NO_EXT4 := true
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun/file"
TW_CUSTOM_CPU_TEMP_PATH := "/sys/class/power_supply/battery/batt_temp"
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_LARGE_FILESYSTEM := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_THEME := portrait_hdpi
TW_INCLUDE_FB2PNG := true
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_NO_REBOOT_BOOTLOADER := true
TW_NO_USB_STORAGE := true
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_INCLUDE_JB_CRYPTO := true
TW_CRYPTO_FS_TYPE := "ext4"
TW_CRYPTO_REAL_BLKDEV := "/dev/block/mmcblk0p7"
TW_CRYPTO_MNT_POINT := "/data"
TW_CRYPTO_FS_OPTIONS := "nosuid,nodev,noatime,discard,noauto_da_alloc,data=ordered"
TW_CUSTOM_CPU_TEMP_PATH := /sys/devices/virtual/thermal/thermal_zone1/temp
TW_BRIGHTNESS_PATH := /sys/devices/platform/leds-mt65xx/leds/lcd-backlight/brightness
TW_MAX_BRIGHTNESS := 255
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/rootdir/root/twrp.fstab
BOARD_HAS_FLIPPED_SCREEN := true
BOARD_HAS_LARGE_FILESYSTEM := true

# EGL settings
#BOARD_EGL_CFG := $(DEVICE_FOLDER)/egl.cfg
#USE_OPENGL_RENDERER := true

# OpenGL
USE_OPENGL_RENDERER:= true

# GRAPHICS_ALLOCATOR_SERVICE
SF_START_GRAPHICS_ALLOCATOR_SERVICE := true

# WiFi
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mt66xx
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_mt66xx
WIFI_DRIVER_FW_PATH_PARAM:="/dev/wmtWifi"
WIFI_DRIVER_FW_PATH_STA:=STA
WIFI_DRIVER_FW_PATH_AP:=AP
WIFI_DRIVER_FW_PATH_STA:=P2P

# Enable Minikin text layout engine (will be the default soon)
USE_MINIKIN := true

# Use dmalloc() for low memory devices
MALLOC_SVELTE := true

# Device Resolution
DEVICE_RESOLUTION := 480x800

# Mediatek flags
# BOARD_USES_LEGACY_MTK_AV_BLOB := true
# BOARD_HAS_MTK_HARDWARE := true
# BOARD_USES_MTK_HARDWARE := true
# MTK_HARDWARE := true
# BOARD_GLOBAL_CFLAGS += -DMTK_HARDWARE -DADD_LEGACY_ACQUIRE_BUFFER_SYMBOL
# BOARD_GLOBAL_CPPFLAGS += -DMTK_HARDWARE

# FRAMEWORK WITH OUT SYNC
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true

# Fonts
EXTENDED_FONT_FOOTPRINT := true

# System Properties
TARGET_SYSTEM_PROP := $(LOCAL_PATH)/system.prop

# Custom RIL
BOARD_RIL_CLASS := ../../../$(LOCAL_PATH)/ril/

# Neon Flags
BOARD_GLOBAL_CFLAGS   += -mfpu=neon -mfloat-abi=softfp
BOARD_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp


TARGET_USERIMAGES_USE_EXT4:=true
# TARGET_USERIMAGES_USE_F2FS := true

# Camera
USE_CAMERA_STUB := true

# SELinux
#BOARD_SEPOLICY_DIRS += \
#    device/micromax/a106/sepolicy

# HIDL
DEVICE_MANIFEST_FILE := device/micromax/a106/hidl/manifest.xml
