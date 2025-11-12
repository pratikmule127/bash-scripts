#!/bin/bash


if [ "$UID" != 0 ];
then
	echo "your must be root to run this script"
	exit 1
else
	echo "yes! you are a root user"
fi

