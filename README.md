# monitoring_script

## Description

This Bash script monitors critical data center parameters, including system performance, disk usage, memory utilization, and network connectivity. It logs the results to a file for easy tracking and troubleshooting.

## Features

- CPU usage monitoring

- Disk space usage tracking

- Memory utilization monitoring

- Network connectivity check

- Log file management

## Usage

1. Clone the repository:

````
git clone https://github.com/yourusername/datacenter-monitor.git
````

2. Make the script executable:
````
chmod +x datacenter_monitor.sh
````

3. Run the script with sudo (for log file permissions):
````
sudo ./datacenter_monitor.sh
````
## Log File Location

The script logs output to:
````
/var/log/datacenter_monitor.log
````

## Requirements

Bash (version 4.0 or higher)

Permissions to write to /var/log/