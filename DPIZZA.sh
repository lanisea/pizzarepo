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
<<<<<<< HEAD
    printf "\nChoose your size:\n"
    PS3="Please select your size:  "
     select size in "${sizeArray[@]}" 
        do
=======
 printf "\nChoose your size:\n"
PS3="Please select your size:  "
  select size in "${sizeArray[@]}" 
   do
>>>>>>> 76695d3fe2856ab497a2c352fbe8fda06ffc5335
	case $size in
	"Extra Large")
		break;;
	"Large")
		break;;
	"Medium")
		break;;
	"Small")
		break;;
<<<<<<< HEAD
	*)printf "Sorry, what was that again?\n\n "
         esac
          done

     printf "\nChoose your style:\n"
     PS3="Please select the type of pizza: "
       select style  in "${pizzaArray[@]}"
=======
		*)
		printf "Sorry, what was that again?\n\n "
       esac
done
printf "\nChoose your style:\n"
PS3="Please select the type of pizza:"
     select style in "${pizzaArray[@]}"
>>>>>>> 76695d3fe2856ab497a2c352fbe8fda06ffc5335
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
<<<<<<< HEAD
        *) printf "Sorry, what was that again?\n"
          esac
          done

    printf "\nChoose your toppings:\n"
       PS3="Please select your toppings: "
       select top  in "${topArray[@]}"
         do
        case $top in
        "Pepperoni")
                break;;
        "Ham")
                break;;
        "Pineapples")
                break;;
        "Red Peppers")
                break;;
        "Green Peppers")
                break;;
        "Olives")
                break;;
        "Sausage")
                break;;
        "Meatballs")
                break;;
         *) printf "Sorry, what was that again?\n"
          esac
          done

=======
        	'*') printf "Sorry, what was that again?\n"
esac

done
>>>>>>> 76695d3fe2856ab497a2c352fbe8fda06ffc5335
done


#==================SUMMARY
tput setaf 7
tput bold
printf "==================\nOrder\n==================\n"
for s in ${!tPizzaArray[*]}
do
<<<<<<< HEAD
printf "\nPizza #$s: "
printf "\nA ${sizeArray[$s]} ${pizzaArray[$s]} with ${topArray[$s]}\n"
#printf "$(($s+1)). ${style[$s]} - ${size[$s]}\n"
=======
printf "$(($s+1)). ${size[$s]} - ${style[$s]}\n"
>>>>>>> 76695d3fe2856ab497a2c352fbe8fda06ffc5335
done

printf "=================\nHave a good day!\n=================\n"

