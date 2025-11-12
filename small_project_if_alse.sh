#!/bin/bash
str1="pratik"
str2="pratik"

if [ "$str1" = "$str2" ]
then
	echo -e "\e[1;32mboth are same\e[0m"
else 
	echo -e  "\e[1;31mits not same!\e[0m"
fi
