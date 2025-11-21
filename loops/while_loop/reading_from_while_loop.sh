#!/bin/bash


num=1
while read line
do
	echo "$num. $line"
	let num++
done < names.txt
