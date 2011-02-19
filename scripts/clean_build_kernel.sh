#!/bin/bash

cd Kernel
make arch=arm -j4 clean
make arch=arm -j4 prepare
make arch=arm -j4 modules
find . -name *.ko -exec cp {} ../initramfs-voodoo/lib/modules/ \;
make arch=arm -j4
cp arch/arm/boot/zImage ../
cd ..
ls -lh zImage

