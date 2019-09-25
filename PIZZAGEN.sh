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
psizeArray=('$15' '$13' '$10' '$8')
pPizzaArray=('$1' '$2' '$3' '$5' '$5' '$3')
tPizzaArray=()
total=0
price=()
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
printf "$(($p +1)). ${sizeArray[$p]}-${psizeArray[$p]}\n" | randtype -t 0,1000
done
printf "\nOur signature pizzas:\n" | randtype -t 0,1000
for p in ${!pizzaArray[*]}
do
printf "$(($p +1)). ${pizzaArray[$p]} - ${pPizzaArray[$p]}\n" | randtype -t 0,1000
done

#=================================================Starting off
tput setaf 3
printf "\n\n===============================\n\n" | randtype -l

function yesno
{
 read -p "Would you like to place an order? " ntwo
    case $ntwo in
        [nN]*)
       echo "See you again!"
       exit;;
      [abcdefghijklmopqrstuvwxzABCDEFGHIJKLMOPQRSTUVWXZ1234567890]*)
      echo "Please enter y or n!"
yesno;;
[Yy]*)
esac
}

yesno

tput bold
tput setaf 2


printf "\n===============================\n\n"

#=====================================Case Start
   
while [[ $ntwo = "y" ]] || [[ $ntwo = "Y" ]] 
do
 printf "\nChoose your size:\n"
PS3="What size Pizza do you want? "
  select size in "${sizeArray[@]}" #select is a loop for options
   do					#case is used to run a command based on pattern matching
       case $size in
        "Extra Large")
		price+="15 "
		tPizzaArray+=('Extra Large')
		break;;
	   "Large")
		price+="13 "
		tPizzaArray+=('Large')
		break;;
	   "Medium")
		price+="10 "
		tPizzaArray+=('Medium')
		break;;
	    "Small")
		price+="9 "
		tPizzaArray+=('Small')
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
		price+="1 "
		tSizeArray+=('Cheese')
                break;;
        "Pepperoni")
		price+="2 "
		tSizeArray+=('Pepperoni')
                break;;
        "Hawaiian")
		price="3 "
		tSizeArray+=('Hawaiian')
                break;;
        "Veggie")
		price+="5 "
		tSizeArray+=('Veggie')
                break;;
        "Vegan")
		price+="5 "
		tSizeArray+=('Vegan')
                break;;
	"MeatLovers")
		price+="3 "
 		tSizeArray+=('MeatLovers')
		break;;

        	*) 
		printf "Sorry, what was that again?\n"

	esac
done
printf "\n "
#=================================Another pizza

function anotherp
{
read -p "Do you want another pizza? (y/n) " nthree
case $nthree in 
   [nN]*)
   echo "Lets continue to your order summary!"
ntwo="n";;

[abcdefghijklmopqrstuvwxzABCDEFGHIJKLMOPQRSTUVWXZ1234567890]*)
      echo "Please enter y or n!"
anotherp;;
[yY]*)
esac
}


anotherp
#tput bold
#tput setaf 2
done
#==================SUMMARY
tput setaf 7
tput bold
printf "=======================\nOrder Summary\n=======================\n"
for s in ${!tPizzaArray[*]}
do
printf "$(($s+1)). ${tPizzaArray[$s]} - ${tSizeArray[$s]}\n"
done
printf "=======================\nTOTAL\n=======================\n"
for n in ${price[@]}
do
 (( total += n ))
done
function tax
{
T=.07
TAX=$( echo "$total*$T"|bc)
COMPLETE=$(echo "$total+$TAX"|bc)
   echo "---------Total: $"$COMPLETE""
}


echo "Your subtotal is" '$'"$total"
echo "-------------Tax: %7"
tax 
