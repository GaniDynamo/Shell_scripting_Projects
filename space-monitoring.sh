#!bin/bash

# Monitoring the free space in Disk
Space=$(df -H | egrep -v "Filesystem|tmpfs" | grep "sda2" | awk '{print $5}' | tr -d %)
TO="Your mailgmail.com"

#Send alert to mail if disk space is low!
# For sending mail, we need to setup postfix in our server or machine

if [[ $Space -ge 20 ]]
then
    echo "Warning, disk space is low - $Space %" | mail -s "Disk space alert in server" $TO
else
    echo "All Good"
fi
