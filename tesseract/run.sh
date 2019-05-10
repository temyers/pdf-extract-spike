#!/bin/bash
set -e -x

FILES=`find ../sample-data -type f -name "*.pdf"`

# NOTE: DOES NOT HANDLE SPACES

for FILE in $FILES
do
  FILENAME="$(basename $FILE)"
  
  docker-compose run --rm pdf-to-image /sample-data/${FILENAME} /images/${FILENAME}.tiff
  docker-compose run --rm tesseract /images/${FILENAME}.tiff /text/${FILENAME}.txt 
  
done
