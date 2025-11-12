#!/bin/bash


echo -n "enter the dir name: "
read dir

if [ -d "$dir" ]
then
	echo "dir hai yaha pe"
else 
	echo "dir nahi hai"
fi
