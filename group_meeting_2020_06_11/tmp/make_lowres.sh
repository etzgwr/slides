#!/bin/bash
set -e
for x in img/*.png;
do
    width=$(identify -format '%w' $x)
    echo $width
    continue
    if [ $width -ge "1000" ];
    then
	convert $x -resize 25% $x
    else
#	cp $x img_downscaled/
	echo $x
    fi
done
