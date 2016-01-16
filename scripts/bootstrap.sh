#!/bin/sh

wget https://www.kernel.org/pub/linux/utils/boot/syslinux/syslinux-6.03.zip
wget https://www.kernel.org/pub/linux/utils/boot/syslinux/syslinux-6.03.zip.sign
gpg --verify syslinux-6.03.zip.sign syslinux-6.03.zip

