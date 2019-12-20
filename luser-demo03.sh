#!/bin/bash

echo "Your id is ${UID}"

UID_TO_TEST_FOR='1000'
if [[ "${UID}" -ne "${UID_TO_TEST_FOR}" ]]
then
	echo "Your UID is not ${UID_TO_TEST_FOR}."
	exit 1
fi

USER_NAME=$(id -un)

# Test the last command
if [[ "${?}" -ne 0 ]]
then
	echo 'The id command did not execute successfully.'
	exit 1
fi
echo "Your username is ${USER_NAME}"

USER_NAME_TO_TEST_FOR='muzi'

if [[ "${USER_NAME}" = "${USER_NAME_TO_TEST_FOR}" ]]
then 
	echo "Your username matches ${USER_NAME_TO_TEST_FOR}."
fi

if [[ "${USER_NAME}" != "${USER_NAME_TO_TEST_FOR}" ]]
then
	echo "Your username does not match ${USER_NAME_TO_TEST_FOR}"
	exit 1
fi

exit 0
