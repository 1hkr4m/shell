#!/bin/bash

if [[ "${#}" -lt 1 ]]
then
    echo "Plese enter your user.email."
    exit 1
else
    mkdir /home/ihor/GitHub
    cd /home/ihor/GitHub
    git clone https://github.com/1hkr4m/shell.git
    git clone https://github.com/1hkr4m/ccna.git
    git clone https://github.com/1hkr4m/team-labs.git
    git clone https://github.com/1hkr4m/python-learn.git
    git clone https://github.com/1hkr4m/py-cisco.git
    git clone https://github.com/1hkr4m/leetcode.git
    git clone https://github.com/1hkr4m/linux-devops.git
    git config --global user.name "Ihor Kram"
    git config --global user.email "$1"
fi