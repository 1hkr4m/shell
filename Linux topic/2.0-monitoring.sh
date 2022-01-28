#!/bin/bash

#fuction for cpu monitoring
cpu_mon() {
    cpu_i="$(cat /proc/stat | grep -w "cpu" | awk '{print ($2+$4)*100/($2+$4+$5)}')"
    echo "$cpu_i"
    if [[ $cpu_i <  60 ]]; then
        tput setaf 3;date;echo "Warning! CPU usage is high - $cpu_i";tput sgr0
    elif [[ $cpu_i > 80 ]]; then
        tput setaf 1;echo "Warning! CPU usage is critical - $cpu_i";tput sgr0
    fi
}

mem_mon() {
    ram_all="$(free | grep Mem | awk '{print $2}')"
    ram_usg="$(free| grep Mem | awk '{print $3}')"
    va1=$(awk "BEGIN {print $ram_usg/$ram_all*100}")
    code_red $va1 "RAM" 
}

storage_mon() {
store_use="$(df -h | grep /dev/sd | awk '{print $5}')"
code_red "$store_use" "RAM"
}

code_red() {
    if [[ $1 >  60 ]] && [[ $1 < 80 ]]; then
        date >>~/log-mon.txt
        echo "Warning! $2 usage is high - $1 %"
    elif [[ $1 > 80 ]]; then
        tput setaf 1;echo "Warning! $2 usage is critical - $1 %";tput sgr0
    fi
}

#cpu_mon
mem_mon
#storage_mon
