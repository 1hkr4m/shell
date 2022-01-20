#!/bin/bash

#!/bin/bash

# This script creates a new user on the local system.
# You must supply a username as an argument to the script.
# Optionally, you can also provide a comment for the account as an argument.
# A password will be automatically generated for the account.
# The username, password, and host for the account will be displayed.

# Make sure the script is being executed with sudo
if [[ "${UID}" -ne 0 ]]
then
    echo 'Please run with sudo' >&2
    exit 1
fi

#if they dont supply at least one augumetn, then give them help
if [[ "${#}" -lt 1 ]]
then 
    echo "Usage: ${0} USER_NAME [COOMENT]..."
    echo  'Create an account on the local system with the name of USER_NAME nad a commnts field of COMMENT'
    exit 1
fi

# The first parameter is the user name
USER_NAME="${1}"

# The rest of the parameters are for the account comments
shift
COMMENT="${@}"

# Generate the password
PASSWORD=$(date +%s%N | sha256sum | head -c16)

# Create the user
useradd -c "${COMMENT}" -m ${USER_NAME}

# Check to see if the aseradd command secceeded
if [[ "${?}" -ne 0 ]]
then
    echo 'The account could not be created' >&2
    exit 1
fi

# Set the password
echo ${PASSWORD} | passwd --stdin ${USER_NAME} &> /dev/null

if [[ "${?}" -ne 0 ]]
then
    echo 'The password could not be created' >&2
    exit 1
fi

# Force password change on first login
passwd -e ${USER_NAME} &> /dev/null

# Display the username
echo
echo "${USER_NAME}"
echo
echo 'password: '
echo  "${PASSWORD}"
echo
echo 'host: '
echo "${HOSTNAME}"
echo
exit 0



