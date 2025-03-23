#!/bin/bash

#Set the threshold Values
cpu_threshold=3
disk_threshold=3

#Check CPU Usage
cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print $2}'| cut -d'%' -f1)
if [ "%cpu_usage" -gt "cpu_threshold"]; then
	echo "Hogh CPU usage detected! Sending notification..."
	#Send email notification here

fi

# Check Disk Usage
disk_usage=$(df -h / | awk 'NR==2{print $5}' | cut -d'%' -f1)
if ["$disk_usage" -gt "$disk_threshold"]; then
	echo "High Disk Usage Detected! Sending Notification..."
fi
