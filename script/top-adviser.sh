#!/bin/bash
#set -x 

############################# First Part #############################

echo "Date Message" > top.csv

for i in $(seq 1 60); do
if [ -f /tmp/maintenance.txt ]
then
    echo "$(date +%H:%M:%S) We are under maintenance mode!" >> top.csv
else
     if [[ -z $(pgrep top) ]]; then
        echo "$(date +%H:%M:%S) Top was started" >> top.csv
    else
        echo "$(date +%H:%M:%S) Top is running" >> top.csv
    fi
fi

   sleep 5
done

############################# Second Part #############################

echo $(cat top.csv | grep "We are under maintenance mode!" | wc -l)