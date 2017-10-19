LOCAL_PATH := device/micromax/a106

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

# Storage allocations
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE:=943718400
BOARD_USERDATAIMAGE_PARTITION_SIZE:=2725773312
BOARD_CACHEIMAGE_PARTITION_SIZE:=132120576
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 131072

# kernel stuff
BOARD_CUSTOM_BOOTIMG_MK := $(LOCAL_PATH)/tools/bootimg.mk
MTK_PLATFORM := mt6582
MTK_PROJECT := a106
TARGET_KERNEL_SOURCE := kernel/micromax/a106
TARGET_KERNEL_CONFIG := a106_defconfig
BOARD_KERNEL_CMDLINE := console=tty0 console=ttyMT3,921600n1 root=/dev/ram vmalloc=496M slub_max_order=0 slub_debug=0 androidboot.hardware=sprout androidboot.selinux=permissive
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
KERNEL_TOOLCHAIN := $(ANDROID_BUILD_TOP)/prebuilts/gcc/$(HOST_OS)-x86/arm/arm-eabi-4.8/bin
KERNEL_TOOLCHAIN_PREFIX := arm-eabi-
#TARGET_PREBUILT_KERNEL := device/micromax/a106/kernel

# Hack for build
$(shell mkdir -p $(OUT)/obj/KERNEL_OBJ/usr)

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# MTK Partitions Defines
MTK_BOOT_DEVICE_NAME := /dev/bootimg
MTK_BOOT_DEVICE_SIZE := 16777216
MTK_RECOVERY_DEVICE_NAME := /dev/recovery
MTK_RECOVERY_DEVICE_SIZE := 16777216
MTK_UBOOT_DEVICE_NAME := /dev/uboot
MTK_UBOOT_DEVICE_SIZE := 393216
MTK_NVRAM_DEVICE_NAME := /dev/nvram
MTK_NVRAM_DEVICE_SIZE := 5242880
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"

# TWRP stuff
TW_THEME := portrait_hdpi
TW_SDEXT_NO_EXT4 := true
TW_EXCLUDE_MTP := true
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun/file"
TW_CUSTOM_CPU_TEMP_PATH := "/sys/class/power_supply/battery/batt_temp"
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_LARGE_FILESYSTEM := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_NO_REBOOT_BOOTLOADER := true
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_INTERNAL_STORAGE_PATH := "/emmc"
TW_INTERNAL_STORAGE_MOUNT_POINT := "emmc"
TW_EXTERNAL_STORAGE_PATH := "/sdcard"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
SP1_NAME := "uboot"
SP1_BACKUP_METHOD := image
SP1_MOUNTABLE := 0
SP2_NAME := "nvram"
SP2_DISPLAY_NAME := "nvram"
SP2_BACKUP_METHOD := image
SP2_MOUNTABLE := 0
TW_INCLUDE_FB2PNG := true
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/rootdir/root/twrp.fstab
BOARD_HAS_FLIPPED_SCREEN := true

# EGL settings
BOARD_EGL_CFG := $(DEVICE_FOLDER)/egl.cfg
USE_OPENGL_RENDERER := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true


# Set insecure for root access and device specifics
ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0 \
ro.allow.mock.location=1 \
persist.mtk.aee.aed=on \
ro.debuggable=1 \
persist.service.acm.enable=1 \
persist.sys.usb.config=mass_storage,adb \
ro.mount.fs=EXT4

# OpenGL
USE_OPENGL_RENDERER:= true

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

MALLOC_SVELTE := true
DEVICE_RESOLUTION := 480x800

# Mediatek flags
BOARD_HAS_MTK_HARDWARE := true
MTK_HARDWARE := true

# FRAMEWORK WITH OUT SYNC
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true

# Fonts
EXTENDED_FONT_FOOTPRINT := true

TARGET_SYSTEM_PROP := $(LOCAL_PATH)/system.prop

# Dual SIM
SIM_COUNT := 2
TARGET_GLOBAL_CFLAGS += -DANDROID_MULTI_SIM
TARGET_GLOBAL_CPPFLAGS += -DANDROID_MULTI_SIM

BOARD_RIL_CLASS := ../../../$(LOCAL_PATH)/ril/

TARGET_GLOBAL_CFLAGS   += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_USERIMAGES_USE_EXT4:=true
USE_CAMERA_STUB := true

# SELinux
BOARD_SEPOLICY_DIRS += \
    device/micromax/a106/sepolicy
