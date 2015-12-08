#!/bin/bash

# This accepts output from the 'ls -l' command and parses it.

# This is a helper on what ls -l outputs.

#  PERM      LN USR   GRP    SIZ MON DAY YRTM FILNM
# -rw-rw-r--. 1 admin admin  708 Dec  1 22:06 01-redirection.txt

while read PERM LN USR GRP SIZ MON DAY YRTM FILENM
do
    echo "File: '$FILENM'" is $SIZ bytes long.
done
