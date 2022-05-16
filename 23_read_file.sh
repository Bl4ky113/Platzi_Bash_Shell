#!/bin/bash

cat output

i=0
while IFS= read line
do
    i=$((i + 1))
    echo "line $i: $line"
done < output
