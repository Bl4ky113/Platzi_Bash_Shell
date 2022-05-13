#!/bin/bash

echo "$*"

while [ -n "$1" ]
do
    case "$1" in
        -a) echo "usada option -a";;
        -b) echo "usada option -b";;
        -c) echo "usada option -c";;
        *) echo "usada option no especificada, $1";;
    esac
    shift
done
