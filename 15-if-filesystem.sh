#!/bin/bash

for FN in "$@"
do
    if [ ! -e "$FN" ]   # if file doesn't exist
    then
        continue        # semantics identical to C
    fi

    printf "%-15.15s\t" "$FN"

    if [ -d "$FN" ]
    then
        printf "%s\n" directory
        continue
    fi

    if [ -r "$FN" ]         # read permission
    then
        printf "%s " read
    fi

    if [ -w "$FN" ]         # write permission
    then
        printf "%s " write
    fi

    if [ -x "$FN" ]         # executable permission
    then
        printf "%s" execute
    fi
    printf "\n"
done
