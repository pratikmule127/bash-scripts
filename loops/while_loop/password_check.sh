#!/bin/bash


echo -n "enter password: "
read pass

if [ "$pass" = "123" ]
then
	echo "welcome $(whoami)"
else
	while [ "$pass" != "123" ]
	do
		echo -n "enter password: "
		read pass2
			if [ "$pass2" = "123" ]
			then
				echo "welcome $(whoami)"
				break
			fi
	done
fi
