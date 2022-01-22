#!/bin/bash

# This script shows the open network ports on a system
# Use -4 as an arument to limit to tcpv4 ports

netstat -nutl ${1} | grep ':' | awk '{print $4}' | awk -F ':' '{print $NF}' | sort -n 

sort /etc/passwd | less 

sort -r /etc/passwd | less

cut -d ':' -f 3 /etc/passwd



