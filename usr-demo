#!/bin/bash

n=1
for name in $(awk -F: '{print $1}' < "/etc/passwd")
do
	echo $name
	let "n+1"
done
exit 0


