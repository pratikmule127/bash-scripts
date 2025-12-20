#!/bin/bash


while [ $# -gt 0 ]
do
	case "$1" in
		"-h"|"--help")
			echo "usage: $0 [options]"
			echo "options:"
			echo -e "\t" "-c,--cpuinfo"
			echo -e "\t""\t""\t""get cpu information"
			echo -e "\t" "-k,--kernal-info"
                        echo -e "\t""\t""\t""get kernal information"
			echo -e "\t" "-s,--sys-info"
                        echo -e "\t""\t""\t""get system information"
			echo -e "\t" "-fm,--free-mm"
                        echo -e "\t""\t""\t""get free space information"
			echo -e "\t" "-ip,--ip-addr"
                        echo -e "\t""\t""\t""get ip address information"
			exit 1
		;;
		"-c"|"-cpuinfo")
			cpu=$(cat /proc/cpuinfo|grep "model name"|head -1|cut -c 14-50)
			echo "cpuinfo:$cpu"
			echo
			shift
		;;
		"-k"|"--kernal-info")
			echo "kernal version: $(uname -r)"
			echo
			shift
		;;
		"-s"|"--sys-info")
                        sysinfo=$(cat /etc/os-release | grep "PRETTY" | cut -c 13-50)
	                echo "system information:$sysinfo"
                        echo
			shift
                ;;
		"-fm"|"--free-mm")
                        memoryd=$(free -m | grep "Mem"|awk '{print $4}')
                        echo "free desk:$memoryd mb"
			echo
                        shift
                ;;
		"-ip"|"--ip-addr")
                        echo "ip address:$(hostname -i)"
                        echo
                        shift
                ;;
	esac
done
