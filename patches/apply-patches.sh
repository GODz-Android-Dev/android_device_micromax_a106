#!/bin/bash
cd ../../../..
cd system/core
patch -p1 < ../../device/micromax/a106/patches/system_core.patch
cd ../..
cd hardware/interfaces
patch -p1 < ../../device/micromax/a106/patches/hardware_interfaces.patch