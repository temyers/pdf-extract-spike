#!/bin/bash
set -e -x

FILES=`find ../sample-data -type f -name "*.pdf"`

# NOTE: DOES NOT HANDLE SPACES

for FILE in $FILES
do
  FILENAME="$(basename $FILE)"
  mkdir -p "images/${FILENAME}"
  pdfimages "../sample-data/$FILENAME" "images/$FILENAME/"
  pdfimages -list "../sample-data/$FILENAME" > "images/${FILENAME}.metadata.txt"
done
