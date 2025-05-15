#!/bin/bash

log_file = "/var/log/monitor.log"
echo "$(date): Starting monitoring script..." >> $log_file

# System performance check
echo "$(date): Checking system performance..." >> $log_file
cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')
echo "CPU Usage: $cpu_usage%" >> $log_file

# Disk usage monitor
disk_usage=$(df -h / | grep / | awk '{print$5}')
echo "Disk Usage: $disk_usage" >> $log_file

# Memory usage monitor
mem_usage=$(free -m | awk 'NR==2{printf "%s/%sMB (%.2f%%)", $3,$2,$3*100/$2 }')
echo "Memory Usage: $mem_usage" >> $log_file

# Network Connectivity check
echo "$(date): Checking network connectivity..." >> $log_file
ping -c 4 google.com &> /dev/null
if [ $? -eq 0 ]; then
    echo "Network is connected." >> $log_file
else
    echo "Network is not connected." >> $log_file
fi

# End of script
echo "$(date): Monioring script completed." >> $log_file