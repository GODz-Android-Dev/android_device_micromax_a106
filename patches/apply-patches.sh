#!/bin/bash
cd ../../../..
cd system/core
patch -p1 < ../../device/micromax/a106/patches/system_core.patch
patch -p1 < ../../device/micromax/a106/patches/mkbootimg1.patch
patch -p1 < ../../device/micromax/a106/patches/mkbootimg2.patch
patch -p1 < ../../device/micromax/a106/patches/mkbootimg3.patch
patch -p1 < ../../device/micromax/a106/patches/earlysuspend.patch
cd ../../
