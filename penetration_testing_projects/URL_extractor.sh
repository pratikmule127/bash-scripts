#!/bin/bash

# Ask for directory name
read -p "Enter directory name to create: " DIR

mkdir "$DIR"
cd "$DIR" || exit

# Check input file
if [ -z "$1" ]; then
    echo "Usage: $0 js_urls.txt"
    exit 1
fi

echo "[+] Filtering JavaScript files..."

# Keep only .js files (exclude .json and .jsp)
grep -E "\.js$" "$1" | grep -Ev "\.json|\.jsp" > js_files.txt

echo "[+] JavaScript file list created"

echo "[+] Fetching JavaScript files and extracting URLs..."

> extracted_urls.txt

while read -r JS; do
    echo "[→] Fetching: $JS"
    curl -s "$JS" | grep -Eo "(http|https)://[a-zA-Z0-9./?=_%-:]+" >> extracted_urls.txt
done < js_files.txt

echo "[✔] Done!"
echo "Results saved in: $DIR/extracted_urls.txt"
