#!/bin/sh
OUT_DIR=/media/linux_data/data/rescued
BAK_DIR=$(date +%F' '%R)
DIR="$OUT_DIR"/"$BAK_DIR"
if [ "$(ls -A /dev/shm/)" ]
then
	mkdir "$DIR"
	cp -pru /dev/shm/* "$DIR"
	echo "done!"
else
	echo "directory empty"
fi
