#!/bin/bash


if [ new.txt -ot old.txt ]
then
	echo "new file"
else
	echo "old file not new"
fi



