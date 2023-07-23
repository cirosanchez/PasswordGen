#!/bin/bash

# PasswordGen 
# https://github.com/cirosanchez/passwordgen
# © Ciro Sánchez - 2023
# Licensed under GNU GPL v3.0

cyan="\e[36m"
bWhite="\e[1;37m"


echo -e "$cyan ██▓███   ▄▄▄        ██████   ██████  █     █░ ▒█████   ██▀███  ▓█████▄ "
echo -e "$cyan ▓██░  ██▒▒████▄    ▒██    ▒ ▒██    ▒ ▓█░ █ ░█░▒██▒  ██▒▓██ ▒ ██▒▒██▀ ██▌"
echo -e "$cyan ▓██░ ██▓▒▒██  ▀█▄  ░ ▓██▄   ░ ▓██▄   ▒█░ █ ░█ ▒██░  ██▒▓██ ░▄█ ▒░██   █▌"
echo -e "$cyan ▒██▄█▓▒ ▒░██▄▄▄▄██   ▒   ██▒  ▒   ██▒░█░ █ ░█ ▒██   ██░▒██▀▀█▄  ░▓█▄   ▌"
echo -e "$cyan ▒██▒ ░  ░ ▓█   ▓██▒▒██████▒▒▒██████▒▒░░██▒██▓ ░ ████▓▒░░██▓ ▒██▒░▒████▓ "
echo -e "$cyan ▒▓▒░ ░  ░ ▒▒   ▓▒█░▒ ▒▓▒ ▒ ░▒ ▒▓▒ ▒ ░░ ▓░▒ ▒  ░ ▒░▒░▒░ ░ ▒▓ ░▒▓░ ▒▒▓  ▒ "
echo -e "$cyan ░▒ ░       ▒   ▒▒ ░░ ░▒  ░ ░░ ░▒  ░ ░  ▒ ░ ░    ░ ▒ ▒░   ░▒ ░ ▒░ ░ ▒  ▒ "
echo -e "$cyan ░░         ░   ▒   ░  ░  ░  ░  ░  ░    ░   ░  ░ ░ ░ ▒    ░░   ░  ░ ░  ░ "
echo -e "$cyan                ░  ░      ░        ░      ░        ░ ░     ░        ░    "
echo -e "$cyan                                                                  ░      "
echo -e "$cyan   ▄████ ▓█████  ███▄    █ "
echo -e "$cyan  ██▒ ▀█▒▓█   ▀  ██ ▀█   █ "
echo -e "$cyan ▒██░▄▄▄░▒███   ▓██  ▀█ ██▒"
echo -e "$cyan ░▓█  ██▓▒▓█  ▄ ▓██▒  ▐▌██▒"
echo -e "$cyan ░▒▓███▀▒░▒████▒▒██░   ▓██░"
echo -e "$cyan  ░▒   ▒ ░░ ▒░ ░░ ▒░   ▒ ▒ "
echo -e "$cyan   ░   ░  ░ ░  ░░ ░░   ░ ▒░"
echo -e "$cyan ░ ░   ░    ░      ░   ░ ░ "
echo -e "$cyan       ░    ░  ░         ░ "
                          
echo ""
echo ""
echo -e "$cyan [1] $bWhite Generate a password"
echo -e "$cyan [2] $bWhite About me"
echo -e "$cyan [3] $bWhite Exit"

# Menu option
read option
clear

# Generate Password
if [ $option -eq 1 ]; then
echo -e "$cyan [1] $bWhite [Easier] Generate a password with 8 characters"
echo -e "$cyan [2] $bWhite [Recommended] Generate a password with 16 characters"
echo -e "$cyan [3] $bWhite [Secure] Generate a password with 24 characters"
read option1
clear
if [ $option1 -eq 1 ]; then
    gen=$(python3 src/python/gen8.py)
    echo -e "$cyan Your password is: $bWhite $gen"
    read a
    clear
    exit
    fi
if [ $option1 -eq 2 ]; then
    gen=$(python3 src/python/gen16.py)
    echo -e "$cyan Your password is: $bWhite $gen"
    read a
    clear
    exit
    fi
if [ $option1 -eq 3 ]; then
    gen=$(python3 src/python/gen24.py)
    echo -e "$cyan Your password is: $bWhite $gen"
    read a
    clear
    exit
    fi
fi

if [ $option -eq 2 ];
then
echo -e "$cyan About: $bWhite PasswordGen is a password generator made in bash and python."
echo -e "$cyan License: $bWhite It is licensed under GNU GPL v3.0"
echo -e "$cyan Github:  $bWhite All information and relateds are in: https://github.com/cirosanchez/passwordgen"
read a
clear
exit
fi

if [ $option -eq 3 ];
then
echo -e "$cyan Thanks for using PasswordGen!"
clear
exit
fi
