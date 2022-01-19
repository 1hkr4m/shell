#!/bin/bahs

#this script creates an account on the local system
#You will be promted for the account name and password

#Ask for the name
read -p 'Enter username to create:  ' USER_NAME

#Ask for the real name
read -p 'Enter the real name for user: ' COMMENT

#ask for the password
read -p 'Enter the password to the user: ' PASSWORD

#create user
useradd -m -c "${COOMENT}" -m ${USER_NAME}

#Set the password for the user
echo ${USER_NAME} | passwd --stdin ${USER_NAME}

#force password change on first login
passwd -e ${USER_NAME}

