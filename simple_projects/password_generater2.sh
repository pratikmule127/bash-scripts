#!/bin/bash

RED="\033[1;31m"
BLUE="\033[1;34m"
RESET="\033[0m"

CHARS="1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ!@#$%^&*"

case "$1" in
    -h| --help)
        echo "Use: $0 [-h|--help] help [-c|--char] character number"
        echo "Example: $0 -c 8"
        ;;
    -c)
        len=$2
        pass=""

        for ((i=1; i<=len; i++)); do
            pass="$pass${CHARS:RANDOM%${#CHARS}:1}"
        done

        echo -e "${RED}Password:${RESET} ${BLUE}$pass${RESET}"
        ;;
    *)
        echo "Use: $0 [-h|--help] help [-c|--char] character number"
        echo "Example: $0 -c 8"
        ;;
esac
