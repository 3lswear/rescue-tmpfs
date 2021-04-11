#!/bin/sh
OUT_DIR=/media/linux_data/data/rescued
BAK_DIR=$(date +%F' '%R)
DIR="$OUT_DIR"/"$BAK_DIR"
echo $DIR
mkdir "$DIR"
cp -pru /dev/shm/* "$DIR"
