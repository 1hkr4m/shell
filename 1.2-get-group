#!/bin/bash

FILE="/etc/passwd"

main()
{
n=0
printf "N : user : groups : status : home dir weight : last login\n"
printf " \n"

for name in $(awk -F: '{print $1}' < "$FILE")
do
n=$(($n+1))
printf "$n "
groups "$name"
done
}

main

