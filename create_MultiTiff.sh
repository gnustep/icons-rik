#!/bin/bash
#Filename: createIconset.sh
#Description: A script generating multiple size
#Usage createMultiTiff iconname


if [ $# -ne 1 ];
then
  echo Incorrect number of arguments
  exit 2
fi

dest_dir=./Tiff_Iconset;

icon_name=$1
#if [ -n $1 ];
#then
#    rm $1
#fi


file_24="$dest_dir/icon_24.tiff";
file_28="$dest_dir/icon_28.tiff";
file_32="$dest_dir/icon_32.tiff";
file_36="$dest_dir/icon_36.tiff";
file_40="$dest_dir/icon_40.tiff";
file_48="$dest_dir/icon_48.tiff";
file_64="$dest_dir/icon_64.tiff";
file_128="$dest_dir/icon_128.tiff";
file_256="$dest_dir/icon_256.tiff";
file_512="$dest_dir/icon_512.tiff";

tiffcp $file_64 $file_512 $file_256 $file_128 $file_48 $file_40 $file_36 $file_132 $file_28 $file_24 $icon_name
