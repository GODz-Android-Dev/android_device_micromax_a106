#!/bin/bash
cd ../../../..
cd system/core
patch -p1 < ../../device/micromax/a106/patches/0001-Remove-CAP_SYS_NICE-from-surfaceflinger.patch
patch -p1 < ../../device/micromax/a106/patches/0020-healthd_batteryVoltage.patch
patch -p1 < ../../device/micromax/a106/patches/0004-libnetutils-add-MTK-bits-ifc_ccmni_md_cfg.patch
patch -p1 < ../../device/micromax/a106/patches/0012-PATCH-xen0n-some-MTK-services-e.g.-ril-daemon-mtk-re.patch
cd ../..
cd bionic
patch -p1 < ../device/micromax/a106/patches/0002-Apply-LIBC-version-to-__pthread_gettid.patch
cd ..
cd packages/apps/Settings
patch -p1 -b < ../../../device/micromax/a106/patches/0005-add-author-info-in-device-info.patch
git clean -f -d
cd ../../..
cd frameworks/av
patch -p1 < ../../device/micromax/a106/patches/0006-fix-access-wvm-to-ReadOptions.patch
patch -p1 < ../../device/micromax/a106/patches/0007-Disable-usage-of-get_capture_position.patch
patch -p1 < ../../device/micromax/a106/patches/0008-Partial-Revert-Camera1-API-Support-SW-encoders.patch
patch -p1 < ../../device/micromax/a106/patches/0009-add-mtk-color-format-support.patch
cd ../..
cd system/netd
patch -p1 < ../../device/micromax/a106/patches/netd.patch
cd ../..

