#!/bin/bash

echo -n "enter the character: "
read char

case "$char" in
    [[:lower:]] )
        echo "lower case character"
    ;;
    [[:upper:]] )
        echo "upper case character"
    ;;
    [[:digit:]] )
        echo "it's a digit"
    ;;
    * )
        echo "it's something else (special char or multiple chars)"
    ;;
esac
