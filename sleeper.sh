#!/bin/bash

location="/opt/101025-ptm/IDenysova/Sleep"

mkdir -p $location

for i in {1..10}
    do
	    echo "$(date +%H:%M:%S) $(ps -e --no-headers | wc -l)" >> $location/homework
#	    sleep 5
    done

cat /proc/cpuinfo >> $location/homework
cat /etc/os-release | grep NAME | head -n 1 | awk -F\" '{print$2}' >> $location/homework

for file in {50..100}
    do
	    touch $location/$file.txt
    done
