#!/bin/bash
SAVEIFS=$IFS
IFS=$(echo -en "\n\b")
directory="ok"

files=$(find "$directory" -type f -name "*.ipynb.ipynb")

for file in $files; do
    new_filename="${file%.*}"
    echo "mv -v \"$file\" \"$new_filename\" "
    
done
IFS=$SAVEIFS
