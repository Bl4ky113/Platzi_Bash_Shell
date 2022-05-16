#!/bin/bash

num_arr=(1 2 3 4 5 6 7 8 9)
range_str=({A..G})

for num in ${num_arr[*]}
do
    echo "num: $num"
done

for str in $range_str
do
    echo "str: $str"
done

for file in $(ls -a /)
do
    echo "file: $file"
done

for ((i=0; i < 10; i ++)) {
    echo "iteration: $i"
}
