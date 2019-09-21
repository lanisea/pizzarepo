#!/bin/bash

clear

cat LOGO.txt | randtype -l

#---------To start your order
read -p "Hello, welcome to Generation Pizza! Would you like to start your order? " answer1 
if [ "$answer1" = "yes" ] || [ "$answer1" = "Yes" ]
then 
 printf "Here are the daily specials!\n\nChoose any 2 or more for 10.99 each!\n\nAll pizzas, 3 toppings for 7.99!\n\n" 
else 
   echo "Thank you please come again!" 
fi 
#-------------Selecting # of Pizzas
read -p "How many pizza's would you like to order? " numofPizzas



