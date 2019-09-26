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
tPizzaArray=$($PS3)
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
printf "\n===============================\n\n"
if [[ $n2 = "y" ]]
then
echo "Let's get started!"
sleep 1s
elif [[ $n2 = "n" ]]
then
echo "So...why are you here?"
exit
elif [[ $n2 = "*" ]]
then
echo "Say that again? "
fi
tput bold
tput setaf 3
#===============================================Loop for amount of pizzas
while [[ $n2 = "y" ]] || [[ $answer = "y" ]] 
do
 printf "\nChoose your size:\n"
PS3="What size Pizza do you want? "
  select size in "${sizeArray[@]}" #select is a loop for options
   do					#case is used to run a command based on pattern matching

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
		printf "\nSorry, what was that again?\n"
	esac
done
printf "\nChoose your style:\n"
PS3="Please select the type of pizza: "
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
	"MeatLovers")
		break;;

        	*) 
		printf "Sorry, what was that again?\n"

	esac
done
printf "\n "
read -p "Do you want another pizza? (y/n) " answer

if [[ $answer = "n" ]] || [[ $n2 = "n" ]]  
then
break
fi
done

#==================SUMMARY
tput setaf 7
tput bold
printf "==================\nOrder\n==================\n"
for s in ${!tPizzaArray[*]}
do
printf "$(($s+1)). ${size[$s]} - ${style[$s]}\n"
done
