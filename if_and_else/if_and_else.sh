#!/bin/bash


read -p "enter a password: " pass

if [ $pass = "pratik" ]
then
	echo "password is right"
else
	echo "password is wrong"
fi
