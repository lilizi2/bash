#!/bin/bash

# Thos script generates a list of random

# A random number as a password
PASSWORD="${RANDOM}"
echo "${PASSWORD}"


# 3 random to gather
PASSWORD="${RANDOM}${RANDOM}${RANDOM}"
echo "${PASSWORD}"

# Use the current date/time as the basis for the password
PASSWORD=$(date +%s)
echo "${PASSWORD}"

# Use nano second as password
PASSWORD=$(date +%s%N)
echo "${PASSWORD}"

# A better password
PASSWORD=$(date +%s%N | sha256sum | head -c32)
echo "${PASSWORD}"

# An even better password
PASSWORD=$(date +%s%N${RANDOM}${RANDOM} | sha256sum |head -c48)
echo "${PASSWORD}"
