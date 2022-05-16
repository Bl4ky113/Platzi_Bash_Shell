#!/bin/bash

echo "Show Files in the current dir and child dirs"

for file in $(ls)
do
    if [ -d $file ]; then
        echo "dir: $file"
        for inner_file in $(ls $file)
        do
            echo " | $inner_file"
        done
    else
        echo "file: $file"
    fi
done
