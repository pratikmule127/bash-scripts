#!/bin/bash

echo -n "Enter the text: "
read tt

echo "Choose an option to edit the text:"
echo "1. Only first character UPPERCASE"
echo "2. Only first character lowercase"
echo "3. All characters UPPERCASE"
echo "4. All characters lowercase"
read ans

case "$ans" in
    "1")
        echo "${tt^}"
        ;;
    "2")
        echo "${tt,}"
        ;;
    "3")
        echo "${tt^^}"
        ;;
    "4")
        echo "${tt,,}"
        ;;
    *)
        echo "Invalid option!"
        ;;
esac
