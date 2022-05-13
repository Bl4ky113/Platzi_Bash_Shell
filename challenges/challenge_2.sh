#!/bin/bash

echo -e "Enter the following Data:  \n\n"
read -p "First Name: " user_name
read -p "Last Name: " user_lastname
read -p "Age: " user_age
read -p "Direction: " user_direction
read -p "Telephone Number: " user_telephone

echo -e "Good Morning $user_name $user_lastname"
echo -e "You are almost $((user_age + 1)) years old, time flies by"
echo -e "Can I call you to $user_telephone in order to arange a birthday party at $user_direction?"
