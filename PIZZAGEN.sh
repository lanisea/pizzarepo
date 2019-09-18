#!/bin/bash

#=======================TITLE LOGO
clear
tput setaf 6 #<------Sets font color#
tput setab 1 #<------Sets text background color#
tput bold    #<-----------Sets the text to bold#
cat LOGO.txt | randtype -t 0,1000  #<--------randtype displays line as self typing#
sleep 1s   #<------------Delays next section by 1 second
tput sgr0 #<------------turns off all text formatting after this section#

#============================ARRAYS
pizzaArray=("Cheese" "Pepperoni" "Hawaiian" "Veggie" "Vegan" "MeatLovers")
sizeArray=("Extra Large" "Large" "Medium" "Small")
psizeArray=('$15' '$13' '$10' '$8')
pPizzaArray=('$1' '$2' '$3' '$5' '$5' '$3')
tPizzaArray=()
total=0
price=()
#========================================Greeting
tput setaf 2
tput bold
printf "\n\nWelcome to PIZZA GENERATION!\n" | randtype -t 0,10000
tput sgr0
sleep 1s
#======================================PIZZA MENU
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
printf "$(($p +1)). ${pizzaArray[$p]}-${pPizzaArray[$p]}\n" | randtype -t 0,1000
done

#=================================================Starting off
tput setaf 6

function yesno #------Function for placing order 
{
printf "\n===============================\n"
 read -p "Would you like to place an order? " ntwo
printf "===============================\n"

    case $ntwo in
	[yY]*)
       	;;
        [nN]*)
       echo "See you again!"
       exit;;
      *)
      echo "Please enter y or n!"
yesno;;
esac
}
yesno

tput bold
tput setaf 1



#======================================Select Case Loop for choosing options
   
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
		echo "------------"
		echo "Please choose an option from the list!"
		echo "------------"

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
		price+="3 "
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
		echo "------------"
		echo "Please choose an option from the list!"
		echo "------------"

	esac
done
printf "\n "
#==========================================Another pizza

function anotherp
{
read -p "Do you want another pizza? (y/n) " nthree
case $nthree in 
   [nN]*)
   echo "Lets continue to your order summary!"
ntwo="n";;
   [yY]*)
	;;
       *)
	echo "-----"
	echo "Press y or n!"
	echo "----"
anotherp;;

esac
}


anotherp
#tput bold
#tput setaf 2
done
#=============================================SUMMARY
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
   (echo "---------Total:" '$'"$COMPLETE")
}


echo "Your subtotal is:" '$'"$total"
echo "-------------Tax: %7"
tax
echo ""
read -p "<Press enter to exit> " 
reset 
