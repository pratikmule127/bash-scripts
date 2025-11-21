#!/bin/bash



echo -n "Enter the website name:"
read name
ping -c 1 $name &>/dev/null
if [ $? -eq 0 ]
then
	echo "the $name is up"
else
	echo "the $name is down"
fi

