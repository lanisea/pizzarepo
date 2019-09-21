#!/bin/bash

clear
tput setaf 6
tput setab 1
tput bold
cat LOGO.txt | randtype -l
sleep 1s

#---------To start your order
tput sgr0
tput bold
tput setaf 1
read -p "Hello, welcome to Generation Pizza! Would you like to start your order? " answer1 
if [ "$answer1" = "yes" ] || [ "$answer1" = "Yes" ]
then 
tput bold
tput setaf 3
printf "\nHere are the daily specials!\n" | randtype -t 0,10000
printf "\nChoose any 2 or more for 10.99 each!\n" | randtype -t 0,10000 
printf "\nAll pizzas, 3 toppings for 7.99!\n" | randtype -t 0,10000
else 
printf "\n\nSee you again!"
sleep 2s
clear
fi
#------------Pizza Select
tput setaf 1
echo "==============================="
read -p "To start off, how many pizzas are you getting today? " numofpizza




