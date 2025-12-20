#!/bin/bash

PS3="[+] Enter your favorite programming language: "

select lang in "bash" "python" "go" "c"
do
    echo
    echo "Your favorite programming language is: $lang"
    break
done
