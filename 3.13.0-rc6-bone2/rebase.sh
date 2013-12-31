#!/bin/bash

rebase () {
	patch -p2 < ./${patch_file}
	git diff *.dts > ./${patch_file}
	patch -p2 -R < ./${patch_file}
}

patch_file="patches/enable-ttyO1.diff"
rebase

patch_file="patches/enable-ttyO2.diff"
rebase

patch_file="patches/enable-ttyO4.diff"
rebase

patch_file="patches/enable-ttyO5.diff"
rebase
