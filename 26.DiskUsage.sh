#!/bin/bash

DISK_USAGE=$(df -hT | grep -vE 'tmp|File')
DISK_THRESHOLD=1
message=""

while IFS= read line
do
  usage=$(echo $line | awk '{print $6F}' | cut -d % -f1)
  partition=$(echo $line | awk '{print $1F}')
  
  if [ $usage -ge $DISK_THRESHOLD ]
  then 
    message+="\n High Disk Usage on $partition: $usage <br>"
  fi
done <<< $DISK_USAGE

echo -e "Message: $message"
#echo "This is a test mail & Date $(date)" | mail -s "message" gokulkumar0307@gmail.com
sh 27.mail.sh "DevOps Team" "High Disk Usage" "$message" "gokulkumar0307@gmail.com" "Alert High Disk Usage"