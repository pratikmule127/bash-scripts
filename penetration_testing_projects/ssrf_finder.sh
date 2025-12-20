#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: $0 ssrf_urls.txt"
    exit 1
fi

echo "[+] Testing URLs for SSRF (server-side requests)..."

while read -r url; do
    # skip comments & empty lines
    [[ -z "$url" || "$url" =~ ^# ]] && continue

    echo "[→] Requesting: $url"
    curl -s --max-time 10 "$url" > /dev/null

done < "$1"

echo
echo "[✔] Done!"
echo "👉 If any INTERNAL / YOUR SERVER gets hit → SSRF POSSIBLE"
