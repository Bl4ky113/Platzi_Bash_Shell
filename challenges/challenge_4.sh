#!/bin/bash

option=0

while :
do
    clear
    echo "System Menu"
    echo "____________________________"
    echo "1. Active Process"
    echo "2. RAM available"
    echo "3. Storage available"
    echo "4. Wifi Information"
    echo "5. Local Enviroment Variables"
    echo "6. Program info"
    echo "7. Backup Information"
    echo "8. Exit"

    read -n 1 -p "Option >   " option

    echo -e "\n\n"

    case $option in
        1) 
            echo "Openning top"
            echo -e "Press "q" to exit \n"
            top
            ;;
        2)
            echo -e "Free RAM\n"
            free
            ;;
        3)
            echo -e "Free Storage Space\n"
            df -h
            ;;
        4)
            echo -e "\n"
            iw dev
            ;;
        5)
            echo -e "Local Enviroment Variables\n"
            printenv
            ;;
        6)
            echo "// Made By Bl4ky113"
            ;;
        7)
            echo "IDK"
            ;;
        8)
            echo "Good Bye"
            exit 0
            ;;
    esac

    read -p "(Press Enter to Select another Option)"
done
