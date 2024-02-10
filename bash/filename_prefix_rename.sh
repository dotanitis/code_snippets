#!/bin/bash
SAVEIFS=$IFS
IFS=$(echo -en "\n\b")
directory="ok"
prefix="Copy of "
full_prefix="$directory/$prefix"

files=$(find "$directory" -type f -name "$prefix*")

for file in $files; do
    new_filename="$directory/${file#$full_prefix}"
    mv -v $file $new_filename
done
IFS=$SAVEIFS
