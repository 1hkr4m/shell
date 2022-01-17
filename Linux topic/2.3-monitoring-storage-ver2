#!/bin/bash

#sed -i "s/row/newrow/g" path_to_file

storage_mon() {
    str_var="$(df -h / | awk '/dev/{print $5}' | cut -c-2)"
    code_red $str_var "Root storage"
}

code_red() {
    if [[ $1 >  40 ]] && [[ $1 < 80 ]]; then
        echo "+----------------------------------------+" >> ~/log-mon.txt
        date >> ~/log-mon.txt
        echo "Warning! $2 full for $1">>  ~/log-mon.txt
    elif [[ $1 > 80 ]]; then
        echo "+----------------------------------------+" >> ~/log-mon.txt
        date >> ~/log-mon.txt
        echo "CRITICAL! $2 full for $1%" >> ~/log-mon.txt
    fi
}

storage_mon
