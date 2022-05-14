#!/bin/bash

age=0
country=""
path_file=""

read -p "Enter your Age: " age
read -p "Enter your Country: " country
read -p "Enter a Path to a File in your System: " path_file

if [ $age -lt 12 ]; then
    echo "You are a Child"
elif [ $age -ge 12 ] && [ $age -lt 18 ]; then
    echo "You are a Teenager"
elif [ $age -ge 18 ] && [ $age -lt 30 ]; then 
    echo "You are a Young Adult"
elif [ $age -ge 30 ] && [ $age -lt 60 ]; then
    echo "You are an Adult"
else
    echo "You are a Senior"
fi

if [ $country = "USA" ]; then 
    echo "You are From America"
elif [ $country = "Ecuador" ] || [ $country = "Colombia" ] || [ $country = "Panama" ] || [ $country = "Venezuela" ]; then
    echo "You are From the Great Colombia"
else
    echo "I don't Know from where are you from"
fi

if [ -d $path_file ]; then
    echo "$path_file exists in this system"
else
    echo "$path_file doesn't exist in this system"
fi
