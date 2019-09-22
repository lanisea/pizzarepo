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

if [ "$answer1" = "yes" ] || [ "$answer1" = "Yes" ] || [ "$answer1" = "y" ]
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
#------------Pizza Options
 printf "\n\nHere are our menu options!\n"
printf "\nSize options:\n"
printf "\n1.) Extra-Large (20 inches)-18.99"
printf "\n2.) Large (16 inches)-15.99"
printf "\n3.) Medium (13 inches)-13.99"
printf "\n4.) Small (10 inches)-10.99"
printf "\n5.) Individual portion (8 inches)-8.99\n"
#------------Styles
printf "\nSpecialty Pizzas:\n"
printf "\nA.) Pepperoni"
printf "\nB.) Cheese"
printf "\nC.) Hawaiian"
printf "\nD.) Vegan Veggie Lovers"
printf "\nE.) Meat Lovers"
printf "\nF.) Philly Cheese"
printf "\nG.) Buffalo Chicken\n"
#--------------Additional Toppings
printf "\nAdditional Toppings 1.50 extra/each:\n"
printf "\n- Ham"
printf "\n- Vegan Beef"
printf "\n- Chicken"
printf "\n- Mushrooms"
printf "\n- Jalapenos Peppers"
printf "\n- Black Olives"
printf "\n- Green Peppers"
printf "\n- Sun Dried Tomatoes"
printf "\n- Onions"
printf "\n- Pineapple"



 
sleep 1s
tput setaf 1

printf "\n\n===============================\n\n"

read -p "To start off, how many pizzas are you getting today? " numofpizza2
 





