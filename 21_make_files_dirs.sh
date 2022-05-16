#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Parameters Must be 2"
    exit 1
fi

if [ $1 = "d" ]; then
    mkdir -m 755 $2
    ls -la $2
elif [ $1 = "f" ]; then
    touch $2
    ls -la $2
else
    echo "Not a Valid Option: $1"
fi
