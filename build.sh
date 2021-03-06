#!/bin/bash -e
#
# Copyright (c) 2013 Robert Nelson <robertcnelson@gmail.com>
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.

if ! id | grep -q root; then
	echo "must be run as root"
	exit
fi

DIR=$PWD

if [ -f  /boot/uboot/dtbs/am335x-bone.dtb ] ; then
	rm -f /boot/uboot/dtbs/am335x-bone.dtb || true
fi
if [ -f /boot/uboot/dtbs/am335x-boneblack.dtb ] ; then
	rm -f /boot/uboot/dtbs/am335x-boneblack.dtb || true
fi

dtc -I dts -O dtb ${DIR}/3.13-bone/am335x-bone.dts > /boot/uboot/dtbs/am335x-bone.dtb
dtc -I dts -O dtb ${DIR}/3.13-bone/am335x-boneblack.dts > /boot/uboot/dtbs/am335x-boneblack.dtb

echo "done"

