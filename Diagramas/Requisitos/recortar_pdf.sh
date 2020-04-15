#!/bin/bash

OIFS="$IFS"
IFS=$'\n'
for file in `find . -name *.pdf`
do
    pdfcrop "$file" "$file"
    #echo $file
done
IFS="$OIFS"
