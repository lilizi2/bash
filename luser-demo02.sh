#!/bin/bash

# Display the UID 
echo "Your UID is ${UID}"

# Display username of the user executing this scrpit.
#USER_NAME=`id -un`

USER_NAME=$(id -un)
echo "YOUR username is $USER_NAME"


# Display if the user is the root user or not.
if [[ "${UID}"  -eq 0 ]]
then
	echo 'You are root.'
else
	echo 'You are not root.'
fi
