#!/bin/bash

#------------TITLE LOGO
clear
tput setaf 6
tput setab 1
tput bold
cat LOGO.txt | randtype -l
sleep 1s
tput sgr0

#------ARRAYS
pizzaArray=("Cheese" "Pepperoni" "Hawaiian" "Veggie" "Vegan" "MeatLovers")
sizeArray=("Extra Large" "Large" "Medium" "Small")
priceArray=('$15.99' '$13.99' '$10.99' '$8.99')
tPizzaArray=(*)
tSizeArray=()
counter=0
#---------Greeting
tput setaf 2
tput bold
printf "\n\nWelcome to PIZZA GENERATION!\n" | randtype -t 0,10000
tput sgr0
sleep 1s
#------------------------------=======----------PIZZA MENU
tput setaf 3
tput bold
printf "\nOur pizza sizes:\n" | randtype -t 0,1000
for p in ${!sizeArray[*]}
do
printf "$(($p +1)). ${sizeArray[$p]}-${priceArray[$p]}\n" | randtype -t 0,1000
done
printf "\nOur signature pizzas:\n" | randtype -t 0,1000
for p in ${!pizzaArray[*]}
do
printf "$(($p +1)). ${pizzaArray[$p]}\n" | randtype -t 0,1000
done

#=================================================Starting off
tput setaf 3
printf "\n\n===============================\n\n" | randtype -l

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
#==========================SELECTION
sleep 1
tput setaf 1

printf "\n\n===============================\n\n"


#-------------Loop for amount of pizzas
read -p "How many pizzas are you getting today? " n3

for x in $(seq $n3)
do
 printf "\nChoose your size:\n"
PS3="Please select your size:  "
  select size in "${sizeArray[@]}" 
   do
	case $size in
	"Extra Large")
		break;;
	"Large")
		break;;
	"Medium")
		break;;
	"Small")
		break;;
		*)
		printf "Sorry, what was that again?\n\n "
        userSize[$x]=$PS3
       esac
done
printf "\nChoose your style:\n"
PS2="Please select the type of pizza:"
     select style in "${pizzaArray[@]}"
         do
        case $style in
        "Cheese")
                break;;
        "Pepperoni")
                break;;
        "Hawaiian")
                break;;
        "Veggie")
                break;;
        "Vegan")
                break;;
        "Meat Lovers")
                break;;
        	'*') printf "Sorry, what was that again?\n"
     userStyle[$x]=$PS2          
esac

done
done


#==================SUMMARY
tput setaf 7
tput bold
printf "==================\nOrder\n==================\n"
for s in ${!userSize[*]}
do
printf "$(($s+1)). ${userSize[$s]} - ${userStyle[$s]}\n"
done
printf "=================\nHave a good day!\n=================\n"

