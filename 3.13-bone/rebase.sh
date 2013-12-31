#!/bin/bash

rebase () {
	patch -p2 < ./${patch_file}
	git diff *.dts > ./${patch_file}
	patch -p2 -R < ./${patch_file}
}

rebase_one_dep () {
	patch -p2 < ./${patch_dep_one}
	patch -p2 < ./${patch_file}
	git diff *.dts > ./${patch_file}
	patch -p2 -R < ./${patch_file}
}

patch_file="simple/disable-ttyO1.diff"
rebase
patch_file="simple/enable-ttyO2.diff"
rebase
patch_file="simple/enable-ttyO4.diff"
rebase
patch_file="simple/enable-ttyO5.diff"
rebase
patch_file="simple/enable-i2c-1.diff"
rebase
patch_file="simple/enable-i2c-1-alt-pins.diff"
rebase
patch_file="simple/enable-i2c-1-400kHz.diff"
rebase
patch_file="simple/enable-i2c-1-alt-pins-400kHz.diff"
rebase

