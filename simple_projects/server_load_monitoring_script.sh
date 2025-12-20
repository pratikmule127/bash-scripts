#!/bin/bash

TRIGGER=1.00
EMAIL="youremailID@gmail.com"
HOST=$(hostname)

LOAD=$(awk '{print $1}' /proc/loadavg)

STATUS=$(awk -v T="$TRIGGER" -v L="$LOAD" 'BEGIN { if (L>T) print "HIGH" }')

if [[ "$STATUS" == "HIGH" ]]
then
    sar -q | mail -s "High Server Load on $HOST [$LOAD]" "$EMAIL"
fi

#crontab -e
#set cronjob for every 5 min
#*/5 * * * * /bin/bash /path/load_alert.sh

