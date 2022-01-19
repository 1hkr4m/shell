#!/bin/bash

#This script generates a list of random passwords

#A random number as a password

PASSWORD="${RANDOM}"
echo "${RANDOM}"

#Three random numbers together
PASSWORD="${RANDOM}${RANDOM}${RANDOM}"
echo "${PASSWORD}"

# User the current date time as the basis for the password
PASSWORD=$(date +%s)
echo "${PASSWORD}"

# Use nanoseconds to act as randomization
PASSWORD=$(date +%s%N)
echo "${PASSWORD}"

# a better password
PASSWORD=$(date +%s%N | sha256 | head -c32)
echo "${PASSWORD}"

#An even better password
PASSWORD=$(date +%s%N${RANDOM}${RANDOM} | sha256 | head -c32)
echo "${PASSWORD}"

# Generate one random special symbol
VAR="!@#$%^&&*()_+"
echo "${VAR}" | fold -w1 | snuf | head -c1

# Append a special character to the password
SPECIAL_CHARACTER=$(echo '!@#$%^&*()_+' | fold -w1 | snuf | head -c1)
echo "${PASSWORD}${SPECIAL_CHARACTER}"

