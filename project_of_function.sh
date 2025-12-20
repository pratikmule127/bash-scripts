#!/bin/bash


function usage(){

		echo "usage: $0 [-h --help][-p path][--path path]"
		exit 1

}


while [ $# -gt 0 ]
do
	case "$1" in
		"-h"|"--help")
			usage
		;;
		"-p"|"--path")
			cd $2 ; ls -l |
			while read line
			do
				time=$(echo "$line" | awk '{print $8}')
				file=$(echo "$line" | awk '{print $9}')
				
				echo "file: $file was created on: $time"
			done
			exit 1
		;;
		* )
			usage
		;;
	esac
done
