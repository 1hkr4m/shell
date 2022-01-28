#!/bin/bash

mem_mon() {
    #all RAM in system 
    ram_all="$(free | grep Mem | awk '{print $2}')"
    #Only using RAM by system in that moment
    ram_usg="$(free| grep Mem | awk '{print $3}')"
    va1=$(awk "BEGIN {print $ram_usg/$ram_all*100}")
    code_red $va1 "RAM"
}

code_red() {
    if [[ $1 >  60 ]] && [[ $1 < 80 ]]; then
        echo "+----------------------------------------+" >> ~/log-mon.txt
        date >> ~/log-mon.txt
        echo "Warning! $2 usage is high - $1 %">>  ~/log-mon.txt
    elif [[ $1 > 80 ]]; then
        echo "+----------------------------------------+" >> ~/log-mon.txt
        date >> ~/log-mon.txt
        echo "CRITICAL! $2 usage is - $1 %" >> ~/log-mon.txt
    fi
}

mem_mon
