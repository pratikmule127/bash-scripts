#!/bin/bash


while read planet
do 
	set -- $planet
	echo "$planet //$1 is $2"
done < file.txt
