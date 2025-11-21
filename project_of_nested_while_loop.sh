#!/bin/bash

table=1
echo -n "Enter the number the script will create a table: "
read num

if [[ $num =~ ^[0-9]+$ ]]
then
	clear
	echo "=================================="
	echo "Table For $num"
	echo "=================================="
	echo
	while [ $table -le 10 ]
	do
		echo "$num * $table" |bc
		((table++))
	done
else
	echo "=================================="
	echo "You have to enter a digit: $num"
        echo "=================================="
fi
