#!/bin/bash
USER="IRYNA"
echo "Hello $USER"
 
pwd
echo $PWD

ps -ef
 
date

grep -ri "error" /var/log/ 2>/dev/null | grep -v "Binary"

cat /etc/os-release

cat /etc/os-release | wc -l 

cat /etc/os-release | wc -l | tail -5

cat /etc/passwd | awk -F ":" '{print $1 "  " $6}'

echo "Done"
