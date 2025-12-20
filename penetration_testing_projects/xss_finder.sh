#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: $0 xss_urls.txt"
    exit 1
fi

echo "[+] Testing URLs for reflected XSS..."

while read -r url; do
    # skip empty lines & comments
    [[ -z "$url" || "$url" =~ ^# ]] && continue

    # replace parameter value with payload
    test_url=$(echo "$url" | sed 's/=[^&]*/=hack"/')

    response=$(curl -s "$test_url")

    if echo "$response" | grep -q 'hack"'; then
        echo -e "[\e[1;31mXSS Possible\e[0m] $test_url"
    else
        echo "[OK] $test_url"
    fi
done < "$1"
