#!/bin/bash

# This script demonstrates I/O redireaction

# FD 0 - Standard Input
# FD 1 - Standard Output
# FD 2 - Standard Error

# Redirect STDOUT to a file
FILE="/tmp/data"
head -n1 /etc/passwd > ${FILE}

# Redirect STDIN to a program.
read LINE < ${FILE}
echo "LINE contains: ${LINE}"

# Redirect STDOUT to a file, overwriting the file
head -n3 /etc/passwd > ${FILE}
echo
echo "Contents of ${FILE}"
cat ${FILE}

# Redirect STDOUT to a file, appending to the file
echo "${RANDOM} ${RANDOM}" >> ${FILE}
echo "${RANDOM} ${RANDOM}" >> ${FILE}
echo
echo "Contents of ${FILE}:"
cat ${FILE}

# Redirect STDIN to a program, using FD 0
read LINE 0< ${FILE}
echo
echo "LINE contains: ${LINE}"

# Redirect STDOUT to a file using FD 1 , overwriting the file.
head -n3 /etc/passwd 1> ${FILE}
echo
echo "Contents of ${FILE}:"
cat ${FILE}

# Redirect STDERR to a file FD 2.
ERR_FILE="/tmp/data.err"
head -n3 /etc/passwd /fakefile 2> ${ERR_FILE}

# Redirect STDOUT and STERR to a file.
head -n3 /etc/passwd /fakefile &> ${FILE}
echo
echo "Contents of ${FILE}:"
cat ${FILE}

# Redirect STOUT and STDERR through a pipe
echo 
head -n3 /etc/passwd /fakefile |& cat -n
# cat -n  => cat with line number

# Send output to STDERR
echo "This is STDERR!" >&2

# Discard STOUT
echo
echo "Discarding STDOUT:"
head -n3 /etc/passwd /fakefile > /dev/null

# Discarding STDERR
echo 
echo "Discarding STDERR:"
head -n3 /etc/passwd /fakefile 2> /dev/null

#Discarding STOUT and STDERR
head -n3 /etc/passwd /fakefile &> /dev/null


# Clean up
rm ${FILE} ${ERR_FILE} &> /dev/null
