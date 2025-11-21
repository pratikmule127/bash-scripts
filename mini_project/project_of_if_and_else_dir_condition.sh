#!/bin/bash


echo -n "enter the dir name: "
read dir

if [ -d "$dir" ]
then
	echo "It's a Directory"
else 
	echo "It's not  Directoy"
fi
