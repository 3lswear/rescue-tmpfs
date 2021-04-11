#!/bin/sh
OUT_DIR=/media/linux_data/data/rescued
BAK_DIR=$(date +%F' '%R)
DIR="$OUT_DIR"/"$BAK_DIR"
mkdir "$DIR"
if [ "$(ls -A $DIR)" ]
then
	cp -pru /dev/shm/* "$DIR"
else
	echo "directory empty"
fi
