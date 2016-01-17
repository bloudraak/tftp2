#!/bin/sh

TFTPDIR="/volume1/tftp"
SYSLINUXVER="6.03"
TMPDIR="tmp"
SYSLINUXDIR="$TMPDIR/syslinux"

mkdir -p $TMPDIR

wget "https://www.kernel.org/pub/linux/utils/boot/syslinux/syslinux-$SYSLINUXVER.zip" -O "$TMPDIR/syslinux-$SYSLINUXVER.zip"

#
# Skip Checking 
#
# wget "https://www.kernel.org/pub/linux/utils/boot/syslinux/syslinux-$SYSLINUXVER.zip.sign" -O "syslinux-$SYSLINUXVER.zip.sign"
# gpg --recv-keys 58F7ABFE
# gpg --verify "syslinux-$SYSLINUXVER.zip.sign" 

mkdir -p -d "$SYSLINUXDIR"
unzip "$TMPDIR/syslinux-$SYSLINUXVERz.zip" -d "$SYSLINUXDIR"

cp "$SYSLINUXDIR/core/pxelinux.0" $TFTPDIR
cp "$SYSLINUXDIR/bios/com32/elflink/ldlinux/ldlinux.c32" $TFTPDIR 
cp "$SYSLINUXDIR/bios/memdisk/*" $TFTPDIR 
cp "$SYSLINUXDIR/bios/com32/menu/*" $TFTPDIR 
cp "$SYSLINUXDIR/bios/com32/chain/*" $TFTPDIR 

mkdir -p "$TFTPDIR/pxelinux.cfg"
cp "../pxelinux.cfg/*" "$TFTPDIR/pxelinux.cfg"


