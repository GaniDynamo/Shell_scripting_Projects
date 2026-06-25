#!bin/bash

Free_space=$(free -mt | grep "Total" | awk '{print $4}')
Threeshold=500

if [[ $Free_space -lt $TH ]]
then
    echo "Warning, RAM is running low"
else
    echo " RAM space is sufficient - $Free_space M"
fi
