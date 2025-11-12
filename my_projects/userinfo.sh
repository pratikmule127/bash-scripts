#!/bin/bash

# ==========================================
# Script Name : user_info_lookup.sh
# Author      : Pratik Mule
# Description : Displays system information for a specified user
# ==========================================


clear
echo -e "\e[35m============================================================\e[0m"
read -p $'\e[35m Enter The Name Of The User You Want Info For: \e[0m' Name
Info=$(id "$Name" 2>/dev/null)
echo -e "\n\e[35m============================================================\e[0m"

echo -e "\e[35m========================================================================================\e[0m"
echo -e "\e[1;32mUser: $Name\e[0m"
if [ -z "$Info" ]; then
	echo -e "\e[31mInfo: User Not Found \e[0m"
else
	echo -e "\e[32mInfo: $Info \e[0m"
fi
echo -e "\e[35m========================================================================================\e[0m"
