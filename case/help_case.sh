#!/bin/bash


while [ $# -gt 0 ]
do
	case "$1" in
		"-h"|"--help")
			echo "usage:[-h|--help] [-f|--file]"
			exit 0
		;;
		"-f"|"--file")
			file="$2"
			
			if [ ! -f "$file" ]
			then
				echo "file not found!"
				exit 1
			fi
			
			line=$(wc -l < $file)
			word=$(cat $file|wc -w)
			letter=$(cat $file|wc -m)
			clear
			echo "=========================="
			echo "file:$file"
			echo "number of lines: $line"
			echo "number of words: $word"
			echo "number of letters: $letter"	
			echo "=========================="
			exit 0
		;;
		*)
			echo "usage:[-h|--help] [-f|--file]"
                        exit 0
		;;
	esac
done

