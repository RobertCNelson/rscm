#!/bin/bash

rebase () {
	patch -p2 < ./${patch_file}
	git diff *.dts > ./${patch_file}
	patch -p2 -R < ./${patch_file}
}

patch_file="simple/enable-ttyO1.diff"
rebase

patch_file="simple/enable-ttyO2.diff"
rebase

patch_file="simple/enable-ttyO4.diff"
rebase

patch_file="simple/enable-ttyO5.diff"
rebase

patch_file="simple/enable-i2c-1.diff"
rebase
