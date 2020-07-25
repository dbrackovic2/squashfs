#!/bin/bash
folder1="$1"
folder2="$2"
folder3="$3"
for x in `rsync -rcnC --out-format="%n"  $folder1 $folder2`
    do
        if [ -d "$folder1/$x" ]; then
            mkdir -p "$folder3/$folder1/$x"
        else
            cp -frv --parents  $folder1/$x $folder3
        fi
done
