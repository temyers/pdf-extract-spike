#!/bin/bash
set -e -x

FILES=`find ../sample-data -type f -name "*.pdf"`

# NOTE: DOES NOT HANDLE SPACES

for FILE in $FILES
do
  FILENAME="$(basename $FILE)"
  mkdir -p "text-raw"
  pdftotext $FILE "text-raw/${FILENAME}.txt"
done
