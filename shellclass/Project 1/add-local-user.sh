#!/bin/bash

#This scrpt creates a new user

#Make sure the scritp is beeing executed with superuser priviliges
if [[ "${UID}" -ne 0 ]]
then
    echo 'Please run with sudo'
    exit 1
fi

#Get the username
read -p 'Enter the username to create' USER_NAME

#Get the real name
read -p 'Enter real name' COMMENT

#Get password
read -p 'Enter password for new user' PASSWORD

#Create user
useradd -m -c "${COMMENT}" ${USER_NAME}

#Check to see if the useradd command succeeded
if [[ "${?}" -ne 0 ]]
then
    echo 'The account could not be created'
    exit 1
fi

#Set the password
echo ${PASSWORD} | passwd --stdin ${USER_NAME}
if [[ "${?}" -ne 0 ]]
then
    echo 'The password could not be set'
    exit 1
fi

#Display the username, password, and the host where user was created
echo 
echo 'username:'
echo "${USER_NAME}"
echo
echo 'password:'
echo "${PASSWORD}"
echo
echo 'host:'
echo "${HOSTNAME}"
