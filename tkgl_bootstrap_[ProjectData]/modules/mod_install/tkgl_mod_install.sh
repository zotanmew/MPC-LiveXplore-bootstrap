#!/bin/sh
#
# __ __| |           |  /_) |     ___|             |           |
#    |   __ \   _ \  ' /  | |  / |      _ \ __ \   |      _` | __ \   __|
#    |   | | |  __/  . \  |   <  |   |  __/ |   |  |     (   | |   |\__ \
#   _|  _| |_|\___| _|\_\_|_|\_\\____|\___|_|  _| _____|\__,_|_.__/ ____/
#
# BOOTSTRAP INSTALL script for MPC device.
# install      : setup some directories and permissions on the filesystem

SCRIPT_NAME=$(readlink -f "$0")
SCRIPT_DIR=$(dirname "$SCRIPT_NAME")
source "$SCRIPT_DIR/../../scripts/tkgl_path"

# creates all the directories again because empty dirs can be missing

echo "*** The KiGenLabs bootstrap install script"
echo "Directories creation..."
mkdir -p $TKGL_SCRIPT
mkdir -p $TKGL_BIN
mkdir -p $TKGL_CONF
mkdir -p $TKGL_LOGS
mkdir -p $TKGL_LIB

echo "*** $0 module">>$TKGL_LOG

echo "Changing permission and ownership in /bin /scripts..."

if [ -d "$TKGL_BIN" ]
then
  chown root:root $TKGL_BIN/*
  chmod 755 $TKGL_BIN/*
fi

if [ -d "$TKGL_SCRIPT" ]
then
  chown root:root $TKGL_SCRIPT/*
  chmod 755 $TKGL_SCRIPT/*
fi

if [ -d "$TKGL_LIB" ]
then
  chown root:root $TKGL_LIB/*
  chmod 755 $TKGL_LIB/*
fi

ls $TKGL_ROOT>>$TKGL_LOG
ls -l $TKGL_BIN>>$TKGL_LOG
ls -l $TKGL_SCRIPT>>$TKGL_LOG

echo "*** Done !"
echo "*** Please check $TKGL_LOG"
