#!/bin/bash


echo "1) check root user"
echo "2) check internet"
echo "3) install packages"


if [ $UID -ne 0 ]
then
	echo "please run as root"
	exit 1
fi

ping -c 1 google.com &>/dev/null

if [ $? -ne 0 ]
then
	echo "you dont have any active internet connection"
	exit 1
fi

for i in php jq
do
	$i --version &>/dev/null
	if [ $? -ne 0 ]
	then
	echo "[-] install $i"
	apt-get install php -y &>/dev/null
	
		if [ $? -ne 0 ]
		then
			echo "install $i manually "
	
		else
			echo  "$i already install"
		fi
	else
		echo "$i is already installed"
	fi
done

