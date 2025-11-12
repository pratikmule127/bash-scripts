#!/bin/bash


# ==========================================
# Script Name: system_info_report.sh
# Author: Pratik Mule
# Description: Displays detailed system and user information
# ==========================================

HOSTNAME=$(hostname)
UNAME=$(uname)
UNAME_A=$(uname -a)
WHO=$(who)
WHOAMI=$(whoami)
ID_INFO=$(id)
echo ===========================================================================================
echo "🖥️  Hostname:                $HOSTNAME"
echo "⚙️  System Info:             $UNAME"
echo "📄 Detailed Info:           $UNAME_A"
echo "👥 Logged In Users:         $WHO"
echo "🙋 Current User:            $WHOAMI"
echo "🧩 UID/GID/Groups:          $ID_INFO"
echo ===========================================================================================
