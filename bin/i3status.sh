#!/bin/bash

i3status | while :
do
	read line
	vol=$(amixer sget Master | awk -F"[][]" '/dB/ {print $2}' | uniq)
	playing=$(mpc current)
	echo "VOL: $vol    $playing | $line" || exit 1
done
