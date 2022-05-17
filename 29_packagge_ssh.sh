#!/bin/bash

user=""
host=""

read -p "usr: " user
read -p "host: " host

rsync -avz ./shell_scripts.tar.gz $user@$host:/data/data/com.termux/files/home

