#!/bin/bash

option=""

read -p "Enter an Option A - D: " option

case $option in
    A) echo "You have chosen An Airplane ticket to mamiami";;
    B) echo "You have chosen A Billion dolars";;
    C) echo "You have chosen A new Car";;
    D) echo "You have chosen A phone Directory";;
    *) echo "This isn't a valid option";;
esac

