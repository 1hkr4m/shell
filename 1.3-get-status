#!/bin/bash

sudostatus() {
    sudo -lU $1 | grep "may run the following" | cut -d: -f1
}

main() {
FILE=/etc/passwd
    printf "N : user : groups : status : home dir weight : last login\n"
    printf " \n"

    for name in $(awk -F: '{print $1}' < "$FILE")
    do
        if [[ -n $(sudostatus "${name}") ]]; then
            sudost="sudo ok" 
        else
            sudost="sudo disabled"
        fi
        groupvar=$(groups ${name}) 
        #sudost=$(sudostatus $name)
        echo "USER: ${groupvar} | SUDO STATUS: ${sudost}"
    done
}

main
