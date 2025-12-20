#!/bin/bash

echo -n "enter number: "
read num

# Alphabet check must come BEFORE numeric comparisons
if [[ $num =~ ^[A-Za-z]+$ ]]; then
    echo "you have entered an alphabet"
elif [[ $num =~ ^[0-9]+$ ]]; then
    # Now number comparisons
    if (( num == 100 )); then
        echo "you have entered 100"
    elif (( num < 100 )); then
        echo "the number is less than 100"
    elif (( num > 100 )); then
        echo "the number is greater than 100"
    fi
else
    echo "you have entered a special symbol or mixed value"
fi
