#!/bin/bash

# This script demonstrates I/O redirection

# Redirect STDOUT to a file
FILE="/tmp/data-test"
head -n1 /etc/passwd > ${FILE}
cat /tmp/data-test

# Redirect STDIN to a program
read LINE < ${FILE}
echo $LINE

