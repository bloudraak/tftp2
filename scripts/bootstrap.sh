#!/bin/sh

SYSLINUXVER="6.03"

rm -Rf tmp
mkdir -p tmp
cd tmp

wget "https://www.kernel.org/pub/linux/utils/boot/syslinux/syslinux-$SYSLINUXVER.zip" -O "syslinux-$SYSLINUXVER.zip"
wget "https://www.kernel.org/pub/linux/utils/boot/syslinux/syslinux-$SYSLINUXVER.zip.sign" -O "syslinux-$SYSLINUXVER.zip.sign"

gpg --recv-keys 58F7ABFE
gpg --verify "syslinux-$SYSLINUXVER.zip.sign" 

cd ..

