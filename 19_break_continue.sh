#!/bin/bash

for file in $(ls)
do
    if [ -d $file ]; then
        continue;
    elif [[ $file =~ ^.*~$ ]]; then
        echo "$file is ~"
        rm $file
        break;
    else
        echo "$file"
    fi
done

# nvm I did it work c:
