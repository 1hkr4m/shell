#!/bin/bash
cores_count=$(cat /proc/stat | grep cpu | tail -n +2 | wc -l)
cpuuse=$(cat /proc/loadavg | awk '{print $3}')
#echo "$cpuuse and $cores_count"

if [[ $cpuuse > $cores_count ]]; then
        echo "+----------------------------------------+" >> ~/log-mon.txt
        date >> ~/log-mon.txt
        echo "ATTENTION: CPU load is high on $(hostname)" >> ~/log-mon.txt
fi
