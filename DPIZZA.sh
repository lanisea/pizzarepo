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
tPizzaArray=()
tSizeArray=()
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

printf "\n\n===============================\n\n"

#-------------Loop for amount of pizzas
while [[ $n2 = "y" ]] || [[ $answer = "y" ]]
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
	esac
done
printf "Sorry, what was that again?\n\n"
printf "\nChoose your style:\n"
PS3="Please select the type of pizza:"
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

	esac
done

read -p "Do you want another pizza? (y/n) " answer

if [[ $answer = "n" ]] || [[ $n2 = "n" ]]
then
break
elif
printf "\nPlease select y/n\n"
fi
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

