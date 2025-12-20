#!/bin/bash

SRC="/home/name/Desktop/bash"
DEST="/home/name/Desktop/backups"
REMOTE="hostname@ipaddress:/home/name/backups"

file="backup-$(date +%d-%m-%y-%H-%M-%S).tar"

tar -cvf "$DEST/$file" "$SRC"

scp "$DEST/$file" "$REMOTE"

#set in cronjob
#crontab -e
#0 1 * * * bash /home/nome/Desktop/backup.sh
