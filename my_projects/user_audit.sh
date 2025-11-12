#!/bin/bash
clear

read -p "Enter User Name: " name


if [ -z $name ]; then

	echo "error:User Not Found!"
	exit 1
fi

dir="/home/$name"

clear

echo "============================================"
echo "User Name : $name"
echo "============================================"

sleep 1

if [ -d "$dir" ]; then
	echo "==========================================="
	echo "--------------user Directory---------------"
	echo "Home directory found: $dir"
else
	echo "Home directory not found:$dir"
fi


	pass=$(grep -w "$name" /etc/passwd)
	grp=$(grep -w "$name" /etc/group)
	sha=$(grep -w "$name" /etc/shadow)

echo "==========================================="
echo "------------system file enter--------------"


if [ -n "$pass" ]; then 

	echo "/etc/passwd:"
	echo "$pass"
else
	echo "=============================="
	echo "/etc/paaswd: not found"
	echo "=============================="
fi

if [ -n "$grp" ]; then
	echo "=============================="
	echo "/etc/group:"
	echo "$grp"
	echo "=============================="
else
	echo "/etc/group: not found"
fi

if [ -n "$sha" ]; then
	echo "=============================="
	echo "/etc/shadow:"
	echo "$sha"
	echo "=============================="
else
	echo "/etc/shadow:not found"
fi

