#!/bin/bash

dtc -I dtb -O dts /opt/github/linux-dev/KERNEL/arch/arm/boot/dts/am335x-boneblack.dtb > am335x-boneblack.dts
dtc -I dtb -O dts /opt/github/linux-dev/KERNEL/arch/arm/boot/dts/am335x-bone.dtb > am335x-bone.dts

