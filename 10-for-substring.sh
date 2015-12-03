#!/bin/bash

# Writes a supplied argument one character at a time

VAR=$1

# ${#VAR} -- length of VAR
for ((i=0; i<${#VAR}; i++))
do
    echo ${VAR:$i:1}    # take one character at position i
done

echo ------
echo "Now reversing characters in $VAR"

for ((i=${#VAR}-1; i>=0; i--))
do
    REVERSE="${REVERSE}${VAR:$i:1}"
done
echo $VAR reversed is $REVERSE

echo ------
echo "Now reversing characters in $VAR (version 2)"

REVERSE=""
for ((i=0; i<${#VAR}; i++))
do
    REVERSE="${VAR:$i:1}${REVERSE}"    # take one character at position i
done
echo $VAR reversed is $REVERSE


