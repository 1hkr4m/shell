#!/bin/bash

usergroup() {
    groups $1 | cut -d ":" -f 2 | cut -d " " -f 2
}

sudostatus() {
    if [[ -n $(sudo -lU $1 | grep "may run the following" | cut -d: -f1) ]]
        then
            tput setaf 2; echo "${green}sudo ok"; tput sgr0
        else
            tput setaf 1; echo "sudo disabled"; tput sgr0
    fi
}

lastlogin() {
    last $1 | tail -n 1 | cut -d " " -f 3-
}

main() {

FILE=/etc/passwd

    for name in $(awk -F: '{print $1}' < "$FILE")
    do
        groupvar=$(usergroup ${name})
        sudost=$(sudostatus ${name})
        lastlg=$(lastlogin ${name})
        echo "USER: $(tput setaf 3)$name $(tput sgr0)| USER GROUPS: ${groupvar} | SUDO STATUS: ${sudost} | LAST: ${lastlg}"
    done
}

main
