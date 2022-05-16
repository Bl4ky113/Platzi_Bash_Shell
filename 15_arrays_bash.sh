#!/bin/bash

num_arr=(1 2 3 4 5 6 7 8 9)
str_arr=("Martin" "Steven" "Nicolas" "Gato" "Perro")
range_arr=({A..Z} {1..9} {10..24..2})

echo "num: ${num_arr[*]}"
echo "str: ${str_arr[*]}"
echo "range: ${range_arr[*]}"

echo "length"
echo "num: ${#num_arr[*]}"
echo "str: ${#str_arr[*]}"
echo "range: ${#range_arr[*]}"

echo "Random Index"
echo "num: ${num_arr[${#num_arr[*]} - 1]}"
echo "str: ${str_arr[2]}"
echo "range: ${range_arr[1]}"

echo "Adding, deleting Values"
num_arr[${#num_arr[*]}]=113
unset num_arr[4]
echo "num: ${num_arr[*]}"
