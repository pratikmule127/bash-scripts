#!/bin/bash

array=(pratikmule jijirani)
count=1
for i in ${array[@]}
do
	echo $count $i
	((count++))
done

