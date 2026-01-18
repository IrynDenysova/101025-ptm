#!/bin/bash
#


read -p "Enter adress: " address
failed_count=0

echo "Monitoring $address has started. Press [CTRL+C] to stop."
while true;
	do
		output=$(ping -c 1 "$address" 2>/dev/null)
		exit_code=$?

		if [ $exit_code -ne 0 ];
		then ((failed_count++))
			if [ $failed_count -ge 3 ];
			then 
				echo "ERROR: Ping failed 3 times in a row!"
			fi
		else 
			failed_count=0
			ping_time=$(echo "$output"| grep time= | awk -F"time=" ' { print $2 }' | awk '{ print $1  }')
			int_time=${ping_time%.*}


			if [ -n "$int_time" ] && [ "$int_time" -gt 100 ];
			then 
				echo "Warning: High ping -> ${ping_time} ms"
			fi
		fi

		sleep 1
	done
