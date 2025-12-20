#!/bin/bash

RED="\033[1;31m"
BLUE="\033[1;34m"
RESET="\033[0m"

case "$1" in
    -h| --help)
        echo "Use: $0 [-h|--help] help [-c|--char] character number"
        echo "Example: $0 -c 8"
        ;;
    -c | --char)
        PASS=$(date | sha256sum | cut -c 1-"$2")
        echo -e "${RED}Password:${RESET} ${BLUE}$PASS${RESET}"
        ;;
    *)
        echo "Use: $0 [-h|--help] help [-c|--char] character number"
        echo "Example: $0 -c 8"
        ;;
esac

