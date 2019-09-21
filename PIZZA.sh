#!/bin/bash

clear
tput setaf 6
tput setab 1
tput bold
cat LOGO.txt | randtype -l

#---------To start your order
tput sgr0
tput setaf 7
read -p "Hello, welcome to Generation Pizza! Would you like to start your order? " answer1 
if [ "$answer1" = "yes" ] || [ "$answer1" = "Yes" ]
then 
tput bold
tput setaf 3
printf "\nHere are the daily specials!\n"
sleep 1s
printf "\nChoose any 2 or more for 10.99 each!\n"
printf "\nAll pizzas, 3 toppings for 7.99!\n" 
else 
   echo "See you again!"
fi
#------------Pizza Select





