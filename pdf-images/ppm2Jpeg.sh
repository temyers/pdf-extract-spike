#!/bin/bash
set -e -x
PPM_FILES=`find images/ -name "*.ppm"`

for FILE in $PPM_FILES
do
  DEST_DIR="jpeg-$(dirname $FILE)"
  mkdir -p $DEST_DIR
  ppmtojpeg $FILE > "jpeg-${FILE}.jpeg"
done