#!/bin/bash

read -p 'Enter the username to create:' USER_NAME

read -p 'Enter the name of the person who this account is for:' COMMENT

read -p 'Enter the password to use for the account:' PASSWORD

# Create the User
useradd -c "${COMMENT}" -m "${USER_NAME}"

# Set the password for the user
echo ${PASSWORD} | passwd --stdin ${USER_NAME}

# Force password change on the first login
passwd -e ${USER_NAME}

