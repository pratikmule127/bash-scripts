#!/bin/bash


limit=0

while [ "$limit" -le 10 ]
do
	
	((limit++))
	if [ "$limit" -eq 5 ]
	then
		break
	else
		echo $limit
	fi
done

