#!/bin/bash



read -p "Enter the FileName: " file
read=0
write=0
execute=0

if [ -r "$file" ]
then
	read=yes
else
	read=no
fi

if [ -w "$file" ]
then
	write=yes
else
	write=no
fi

if [ -x "$file" ]
then
	execute=yes
else
	execute=no
fi

clear
echo ==========================================================
echo "checking  for the file permmision"
echo ==========================================================
sleep 1
echo "file: $file"
echo "read:$read"
echo "write:$write"
echo "execute:$execute"
echo ==========================================================
