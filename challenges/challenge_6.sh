#!/bin/bash

option=0
log_file = "$(date "+%Y_%m_%d_%H_%M_%S").log"

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
            touch "$(log_file)"
            echo "Openning top" >> $log_file
            ps >> $log_file
            ;;
        2)
            echo -e "Free RAM\n" >> $log_file
            free >> $log_file
            ;;
        3)
            echo -e "Free Storage Space\n" >> $log_file
            df -h >> $log_file
            ;;
        4)
            echo -e "\n" >> $log_file
            iw dev >> $log_file
            ;;
        5)
            echo -e "Local Enviroment Variables\n" >> $log_file
            printenv >> $log_file
            ;;
        6)
            echo "// Made By Bl4ky113" >> $log_file
            ;;
        7)
            user=""
            host=""
            path=""
            read -p "User: " user
            read -p "Host: " host
            read -p "Path: " path

            echo -e "Creating .tar.gz file with available logs\n" >> $log_file
            tar -cvf logs.tar *.log >> $log_file
            gzip  logs.tar >> $log_file
            echo -e "Sending logs.tar.gz to $user@$host to $path" >> $log_file
            rsync -avz ./logs.tar.gz $user@$host:$path >> $log_file
            ;;
        8)
            echo "Good Bye"
            exit 0
            ;;
    esac

    read -p "(Press Enter to Select another Option)"
done
