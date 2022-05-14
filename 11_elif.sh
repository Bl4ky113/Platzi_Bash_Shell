#!/bin/bash

read -p "Enter your Age: " age_value

if [ $age_value -lt 18 ]; then
    echo "You are still a Kid"
elif [ $age_value -ge 18 ] && [ $age_value -le 60 ]; then
    echo "G'day Sir, Madam"
else
    echo "Good day Senior"
fi
