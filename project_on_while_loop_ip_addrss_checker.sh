#!/bin/bash


file=$1

while read line
do
	ping -c 1 -w 1 $line &>/dev/null
	if [ $? -eq 0 ]
	then
		echo "$line is up"
	else
		echo "$line is down"
	fi
done < "$file"

