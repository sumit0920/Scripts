#!/bin/bash

#Get CPU Usage
cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print $2}')

#Get Memory Usage
memory_Usage=$(free -m | awk 'NR==2{printf "%.2f%%", $3*100/$2}')

#Get Disk Usage
disk_usage=$(df -h / |awk 'NR==2{print $5}')

#Get Network Statistis
network_stats=$(ifconfig | grep "RX packets\|TX packets")

echo "CPU Usage: $cpu_usage"
echo "Memory Usage: $memory_Usage"
echo "Disk Usage: $disk_usage"
echo "Network Stats: $network_stats"
