#!/bin/bash

main()
{
n=0
FILE=/etc/passwd
printf "N : user : groups : status : home dir weight : last login\n"
printf " \n"

for name in $(awk -F: '{print $1}' < "$FILE")
do
n=$(($n+1))
printf "$n "; groups "$name" 
done
}

main







#home_dir_weight()
#{
#homedir=$( getent passwd "$name" | cut -d: -f6 )
#echo "it is work" 
#du -sh $( getent passwd "$name" | cut -d: -f6 ) | awk -F/ '{print $1}'
#}
