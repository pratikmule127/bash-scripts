#!/bin/bash



read -p "enter number: " num

if [ $num -lt 10 ]
then
	echo "$num is less then 10"
elif [ $num -gt 5 ]
then
	echo "$num is bigger then 5"
elif [ $num -le 10 } && [ $num -ge 5 ]
then
	echo "$num less then 10 and bigger then 5"
else 
	echo "plz enter the number"
fi

