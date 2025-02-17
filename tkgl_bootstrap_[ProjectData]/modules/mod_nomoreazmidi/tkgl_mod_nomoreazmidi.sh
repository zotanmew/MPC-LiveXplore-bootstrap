#!/bin/sh
#
# __ __| |           |  /_) |     ___|             |           |
#    |   __ \   _ \  ' /  | |  / |      _ \ __ \   |      _` | __ \   __|
#    |   | | |  __/  . \  |   <  |   |  __/ |   |  |     (   | |   |\__ \
#   _|  _| |_|\___| _|\_\_|_|\_\\____|\___|_|  _| _____|\__,_|_.__/ ____/
#
# BOOTSTRAP script for MPC device.
# Disable proprietary Akai network midi

SCRIPT_NAME=$(readlink -f "$0")
SCRIPT_DIR=$(dirname "$SCRIPT_NAME")
source "$SCRIPT_DIR/../../scripts/tkgl_path"

echo "-------------------------------------------------------------------------" >>  $TKGL_LOG
echo "MODULE $SCRIPT_NAME" >> $TKGL_LOG
echo "-------------------------------------------------------------------------" >>  $TKGL_LOG


systemctl stop az01-network-midi

echo "systemctl stop az01-network-midi done !">>$TKGL_LOG
