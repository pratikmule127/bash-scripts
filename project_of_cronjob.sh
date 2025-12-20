#!/bin/bash

THRESHOLD=100   # MB
LOGFILE="/tmp/memory_low.txt"

free_mem=$(free -mt | awk '/Mem:/ {print $7}')

if [ "$free_mem" -le "$THRESHOLD" ]; then
    ps aux --sort=-%mem | head > "$LOGFILE"

    echo "Server memory is low. Available memory: ${free_mem} MB" \
    | mail -s "ALERT: ${free_mem} MB memory left on server" -A "$LOGFILE" youremailid@gmail.com
fi


#you set the cronjob for auto run every 5 mint
#cronjob -e
#*/5 * * * * /path/to/script.sh
