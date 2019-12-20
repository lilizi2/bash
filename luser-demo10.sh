#!/bin/bash

function log1 {
	echo "You called the log function"
}


log(){
	local MESSAGE="${@}"
	if [[ "${VERBOSE}" = 'true' ]]
	then
	echo "${MESSAGE}"
	fi
}



readonly VERBOSE='true'
log 'Hello'
log 'This is fun '

