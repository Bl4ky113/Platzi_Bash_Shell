#!/bin/bash

option=0

while :
do
    clear
    echo "__________________"
    echo "PGUTIL | PostGres Utility Menu"
    echo "__________________"
    echo "Menu"
    echo "__________________"
    echo "1. Install Postgres"
    echo "2. Uninstall Postgres"
    echo "3. Create db Backup"
    echo "4. Restore Backup"
    echo "5. Exit"
    echo "__________________"
    read -n 1 -p "Option {1 - 5} >   " option

    case $option in
        1)
            echo -e "\nInstalling Postgres"
            sleep 3
            ;;
        2) 
            echo -e "\nUninstalling Postgres"
            sleep 3
            ;;
        3)
            echo -e "\nCreating db Backup"
            sleep 3
            ;;
        4) 
            echo -e "\nRestoring db Backup"
            sleep 3
            ;;
        5)
            echo -e "\nGood Bye"
            sleep 3
            exit 0
            ;;
    esac
done
