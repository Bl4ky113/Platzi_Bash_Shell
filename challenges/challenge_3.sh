#!/bin/bash

read -p "Enter a Number in the Range of 1 to 5: " value
if [ $value -eq 1 ]; then
    echo "You have a 100% to meet your true lover today"
elif [ $value -eq 2 ]; then
    echo "You will lose 20k in cash the next month"
elif [ $value -eq 3 ]; then
    echo "The last thing you'll see is 3 black cats"
elif [ $value -eq 4 ]; then
    echo "If you play the 4th ticket next week, you'll win the big prize"
elif [ $value -eq 5 ]; then
    echo "You will find 5 new reasons to live this comming week"
else
    echo "Since you didn't pick a number between 1 and 5, I'll course"
fi

echo "Have a Good Day"
