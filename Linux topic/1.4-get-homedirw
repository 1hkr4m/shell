#!/bin/bash

FILE=/etc/passwd

homedirweigth()
{
homedir=$( getent passwd $1 | cut -d: -f6 )
#homedir=$($(echo ~$1))
if [ $homedir != "/nonexistent" ]
then
	jar="$(du -sh $homedir | awk -F' ' '{ print $1}')"
	echo $jar
else
	echo "no dir"
fi
}

main()
{
printf "N : user : groups : status : home dir weight : last login\n"
printf " \n"

for name in $(awk -F: '{print $1}' < "$FILE")
do
printf "$n "; groups "$name"; homedirweigth $name
done
}

main
