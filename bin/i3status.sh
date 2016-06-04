#!/bin/bash

i3status | while :
do
	read line
	drpbx=$(dropbox-cli status | head -1)
	vol=$(amixer sget Master | awk -F"[][]" '/dB/ {print $2}' | uniq)
	playing=$(mpc current)
	echo "VOL: $vol    $playing | $line | DROPBOX: $drpbx" || exit 1
done
