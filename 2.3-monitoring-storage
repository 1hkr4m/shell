#!/bin/bash

#sed -i "s/row/newrow/g" path_to_file

storage_mon() {
    df -h | grep -v "/dev/lo" | grep -v "File" >> ./tmp_1
cat ./tmp_1
    
    for storage_name in $(awk '{print $5}'  < "./tmp_1")
        do
#            code_red $storage_name "$awk '{print $1}'"
             echo "$storage_name"
       done
    rm ./tmp_1
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
