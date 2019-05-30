#!/bin/bash
source ./SETTINGS
source ./Devices/$1/$2/DEVICE.settings
source ./$PATHTO/$3/props

echo $MANUFACTURER $DEVICENAME $ARCHITECTURE $TARGET

rm -rf ./Build
mkdir -p ./Build
cp -fR ./Initramfs/$TARGET/* Build

cp ./$PATHTO/$TARGET/fstab    ./Build/etc
cp ./$PATHTO/$TARGET/modules  ./Build
cp ./$PATHTO/$TARGET/postinit ./Build
cp ./$PATHTO/$TARGET/preinit  ./Build




