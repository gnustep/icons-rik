#!/bin/bash
#Filename: createIconset.sh
#Description: A script generating multiple size
#Usage createIconset.sh myimage.png


if [ $# -ne 1 ];
then
  echo Incorrect number of arguments
  exit 2
fi

dest_dir=./Tiff_Iconset;
if [ -n $dest_dir ];
then
   rm -rf $dest_dir
fi
mkdir $dest_dir;

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

convert -units PixelsPerInch -density 72  $1 -resize 24x $file_24;
convert -units PixelsPerInch -density 72  $1 -resize 28x $file_28;
convert -units PixelsPerInch -density 72  $1 -resize 32x $file_32;
convert -units PixelsPerInch -density 72  $1 -resize 36x $file_36;
convert -units PixelsPerInch -density 72  $1 -resize 40x $file_40;
convert -units PixelsPerInch -density 72  $1 -resize 48x $file_48;
convert -units PixelsPerInch -density 72  $1 -resize 64x $file_64;
convert -units PixelsPerInch -density 72  $1 -resize 128x $file_128;
convert -units PixelsPerInch -density 72  $1 -resize 256x $file_256;
convert -units PixelsPerInch -density 72  $1 -resize 512x $file_512;





