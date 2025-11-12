#!/bin/bash
clear

echo -n "enter the first name: "
read first_num
echo -n "enter the second number: "
read second_num

echo "-----------------------------------"
echo -e "\t Choose operation:"
echo "-----------------------------------"
echo -e "\t+  for Addition"
echo -e "\t-  for Subtraction"
echo -e "\t*  for Multiplication"
echo -e "\t/  for Division"

echo -n "enter what do you want to perform: "
read cal

result=$(( first_num $cal second_num))
echo "-----------------------------------"
echo "total: $result"
echo "-----------------------------------"
