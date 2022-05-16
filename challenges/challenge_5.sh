#!/bin/bash

option="Hello World"
result=$(neofetch)
log_variable="log_$(date "+%Y_%m_%d_%H_%M_%S")"

touch "$log_variable"

echo $option >> "$log_variable"
echo $result >> "$log_variable"

cat "$log_variable"
