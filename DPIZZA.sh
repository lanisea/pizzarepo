#!/bin/bash

#------------TITLE LOGO
clear
tput setaf 6
tput setab 1
tput bold
cat LOGO.txt 
sleep 1s
tput sgr0
#-----SUM TOTAL CALC
TOTAL=()
#------ARRAYS
topArray=("Pepperoni" "Ham" "Pineapples" "Red Peppers" "Green Peppers" "Olives" "Sausage" "Meatballs")
pizzaArray=("Cheese" "Pepperoni" "Hawaiian" "Veggie" "Vegan" "MeatLovers")
sizeArray=("Extra Large" "Large" "Medium" "Small")
pizzaCount=0
#---------Greeting
tput setaf 2
tput bold
printf "\n\nWelcome to PIZZA GENERATION!\n" 
tput sgr0
sleep 2s
#------------------------------=======----------PIZZA MENU
tput setaf 3
tput bold
printf "\nOur signature pizzas:\n" 
for p in ${!pizzaArray[*]}
do
printf "$(($p +1)). ${pizzaArray[$p]}\n" 
done


printf '\nChoose your own toppings! $1 each!\n' 
for s in ${!topArray[*]}
do
printf "$(($s +1)). ${topArray[$s]}\n" 
done
#=================================================Starting off
tput setaf 3
printf "\n\n===============================\n\n" 

read -p "Would you like to place an order? " n2

if [ $n2 = "yes" ] || [ $n2 = "Yes" ] || [ $n2 = "Y" ] || [ $n2 = "y" ]
then
tput bold
tput setaf 3 
printf "\n\nLet's start!\n" 
sleep 1s
else
tput setaf 1
tput bold
printf "\nSee you around!\n"
sleep 2s
reset
exit;
fi
tput sgr0
tput bold
tput setaf 6


#=============================================================FUNCTIONS
function SIZE
{
select size in ${
#==============================================================SELECTION
read -p "How many Pizzas do you want? " pizzaCount

for s in $(seq $pizzaCount)
do
SIZE



