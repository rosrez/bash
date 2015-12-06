#!/bin/bash

# This accepts output from the 'ls -l' command and parses it.
# This is a helper on what ls -l outputs.

#  PERM      LN USR   GRP    SIZ MON DAY YRTM FILNM
# -rw-rw-r--. 1 admin admin  708 Dec  1 22:06 01-redirection.txt

declare -i COUNT=0

while read PERM LN USR GRP SIZ MON DAY YRTM FILENM
do
    echo "File: '$FILENM' is $SIZ bytes long."
    COUNT+=1            # declare makes bash notice that this is a an integer operation
    let TOTAL+=SIZ      # let signals integer expression
    (( SUM+=SIZ ))      # (( )) is for arithmetics, too
    ALL=$((ALL+SIZ))    # $(()) is for math as well 
done
echo $COUNT files processed.
echo "total size (TOTAL) $TOTAL (SUM) $SUM (ALL) $ALL"
