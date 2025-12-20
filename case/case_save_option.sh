#!/bin/bash

echo -n "enter your full name: "
read name
read -p "enter name department: " dep
read -p "enter your age: " age
echo -n "do you want to save this data into file [y/n]?: "
read ans

case "$ans" in
    "y"|"Y")
        echo "===============" >> employees.txt
        echo "name,$name" >> employees.txt
        echo "department,$dep" >> employees.txt
        echo "age,$age" >> employees.txt
        echo "===============" >> employees.txt
        echo "all data is saved."
    ;;
    "n"|"N")
        echo "nothing is saved in file."
    ;;
    *)
        echo "something is wrong"
    ;;
esac
