#!/bin/bash

# This script demonstrates I/O redirection

# Redirect STDOUT to a file
FILE="/tmp/data-test"
head -n1 /etc/passwd > ${FILE}
cat /tmp/data-test

# Redirect STDIN to a program
read LINE < ${FILE}
echo $LINE

# Redirect stdin to a program using FD 0

read LINE 0< ${FILE}
echo
echo "${LINE}"

# Redirect stdout to a file using FD 1, overwriting the file
head -n3 /etc/passwd 1> ${FILE}
echo
echo "${FILE}"

cat $FILE

# Redirect stderr to a file using FD 2
ERR_FILE="/tmp/data.err"
head -n3 /etc/passwd/ /fakefile 2> ${ERR_FILE}

# Redirect stdout and stderr ot a file
head -n3 /etc/passwd /fakefike &> ${FILE}
echo
echo "${FILE}"

# Redirect stdout and stderr through a pipe
echo 
head -n3 /etc/passwd 
