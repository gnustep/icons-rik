#!/bin/bash
#Filename: createIconset.sh
#Description: A script generating multiple size
#Usage createIconset.sh myimage.png


if [ $# -ne 1 ];
then
  echo Incorrect number of arguments
  exit 2
fi

dest_dir=./Iconset;
if [ -n $dest_dir ];
then
   rm -rf $dest_dir
fi
mkdir $dest_dir;


file_32="$dest_dir/icon_32.png";
file_48="$dest_dir/icon_48x48.png";
#file_64="$dest_dir/icon_64x64.png";
file_128="$dest_dir/icon_128x128.png";
file_256="$dest_dir/icon_256x256.png";
file_512="$dest_dir/icon_512x512.png";

convert -units PixelsPerInch -density 72  $1 -resize 32x32 $file_32;
convert -units PixelsPerInch -density 72  $1 -resize 48x48 $file_48;
#convert -units PixelsPerInch -density 72  $1 -resize 64x64 $file_64;
convert -units PixelsPerInch -density 72  $1 -resize 128x128 $file_128;
convert -units PixelsPerInch -density 72  $1 -resize 256x256 $file_256;
convert -units PixelsPerInch -density 72  $1 -resize 512x512 $file_512;





