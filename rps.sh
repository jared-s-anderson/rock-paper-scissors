#!bin/bash

REPLY=$1


while true; do
	echo "
1. Rock
2. Paper
3. Scissors
4. Done"

computer=$(( ( RANDOM % 3 ) + 1 ))

read -p "Your choice [1-4]? "
echo " "
	if [[ "$REPLY" =~ ^[1-4]$ ]]; then
		if [[ "$REPLY" == 1 ]]; then
		        echo "You chose 1. Rock"
	        elif [[ "$REPLY" == 2 ]]; then
	 		echo "You chose 2. Paper"
		elif [[ "$REPLY" == 3 ]]; then
			echo "You chose 3. Scissors"
		elif [[ "$REPLY" == 4 ]]; then    
			echo "Bye"
			break
		fi		

		if [[ "$computer" == 1 ]]; then
			echo "Computer chose 1. Rock"
		elif [[ "$computer" == 2 ]]; then
			echo "Computer chose 2. Paper"
		elif [[ "$computer" == 3 ]]; then
		        echo "Computer chose 3. Scissors" 	
		fi

		if [[ "$REPLY" == "$computer" ]]; then
		       echo "You tied.  Try Again."
		elif [[ "$REPLY" == 1 && "$computer" == 2 ]]; then
			echo "You lost."
		elif [[ "$REPLY" == 1 && "$computer" == 3 ]]; then
			echo "You win."
		elif [[ "$REPLY" == 2 && "$computer" == 1 ]]; then
			echo "You win."
		elif [[ "$REPLY" == 2 && "$computer" == 3 ]]; then
		      	echo "You lost."
		elif [[ "$REPLY" == 3 && "$computer" == 1 ]]; then
			echo "You lost."
		elif [[ "$REPLY" == 3 && "$computer" == 2 ]]; then
			echo "You win."	
		fi	       

	 fi
 done	 

