#!/system/bin/sh
# Do NOT assume where your module will be located.
# ALWAYS use $MODDIR if you need to know where this script
# and module is placed.
# This will make sure your module will still work
# if Magisk change its mount point in the future
MODDIR=${0%/*}

# This script will be executed in late_start service mode
cmd overlay enable com.google.android.theme.pixel
cmd overlay enable com.android.internal.display.cutout.emulation.zigafide

setprop persist.camera.HAL3.enabled 1
setprop persist.camera.eis.enabled 1