#!/bin/sh

wget https://www.kernel.org/pub/linux/utils/boot/syslinux/syslinux-6.03.zip
wget https://www.kernel.org/pub/linux/utils/boot/syslinux/syslinux-6.03.zip.sign

gpg --keyserver hkp://keys.gnupg.net --recv-keys 58F7ABFE
gpg --verify syslinux-6.03.zip.sign 

