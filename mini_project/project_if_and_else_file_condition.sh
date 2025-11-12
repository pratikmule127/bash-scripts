#!/bin/bash

read -p "enter name of the file " name


if [ -e $name ]
then
	echo "file exists"
else
	echo "not exists"
fi
