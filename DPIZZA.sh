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
topArray=("Pepperoni" "Ham" "Pineapples" "Red Peppers" "Green Peppers" "Olives" "Sausage" "Meatballs")
pizzaArray=("Cheese" "Pepperoni" "Hawaiian" "Veggie" "Vegan" "MeatLovers")
sizeArray=("Extra Large" "Large" "Medium" "Small")

#---------Greeting
tput setaf 2
tput bold
printf "\n\nWelcome to PIZZA GENERATION!\n" | randtype -t 0,100000
tput sgr0
sleep 2s
#------------------------------=======----------PIZZA MENU
tput setaf 3
tput bold
printf "\nOur signature pizzas:\n" | randtype -t 0,10000
for p in ${!pizzaArray[*]}
do
printf "$(($p +1)). ${pizzaArray[$p]}\n" | randtype -l
done


printf '\nChoose your own toppings! $1 each!\n' | randtype -t 0,10000
for s in ${!topArray[*]}
do
printf "$(($s +1)). ${topArray[$s]}\n" | randtype -l
done
#=================================================Starting off
tput setaf 3
printf "\n\n===============================\n\n" | randtype -l

read -p "Would you like to place an order? " n2

if [ $n2 = "yes" ] || [ $n2 = "Yes" ] || [ $n2 = "Y" ] || [ $n2 = "y" ]
then
tput bold
tput setaf 3 
printf "\n\nLet's start!\n" | randtype -l
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
echo "Our size pizzas:"
PS3="Please select your size:  "
select size in "${sizeArray[@]}" 
do
	case $size in
	"Extra Large")
		printf '\nExtra Large is $15.99\n'
		break;;
	"Large")
		printf '\nLarge is $13.99\n'
		break;;
	"Medium")
		printf '\nMedium is $10.99\n'
		break;;
	"Small")
		printf '\nSmall is $8.99\n'
		break;;
	*) printf "Sorry, what was that again?\n "
esac
done

