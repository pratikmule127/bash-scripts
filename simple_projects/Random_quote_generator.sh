#!/bin/bash

declare -a quotes
i=0

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
QUOTE_FILE="$SCRIPT_DIR/quote.txt"

while read -r line; do
    quotes[i]="$line"
    ((i++))
done < "$QUOTE_FILE"

if [ "$i" -gt 0 ]; then
    RAN=$((RANDOM % i))
    echo "${quotes[RAN]}"
else
    echo "quote.txt empty or missing!"
fi
