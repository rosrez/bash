#!/bin/bash

# This script accepts output from the 'ls -l' command and puts it into an array.
# It will print an array of day of month (DOM) values along with the number
# of occurrences of each DOM in the ls -l output.

# If a command line argument 'printzero' is provided, we use printf to
# force the script to print zeroes for unset counts (zero occurrences of a DOM).
# The default operation will just omit counts for non-occurring DOMs, 
# because those counts are unset.

# This is a helper on what ls -l outputs.

#  PERM      LN USR   GRP    SIZ MON DAY YRTM FILNM
# -rw-rw-r--. 1 admin admin  708 Dec  1 22:06 01-redirection.txt
# 0           1 2     3      4   5    6 7     8    --- ZERO-BASED INDEXES

# it's necessary to declare CNTM as an associative array for month names to work as indexes
declare -A CNTM     

while read -a LSOUT 
do
    if [[ $LSOUT == 'total' ]]; then continue; fi

    DOM=${LSOUT[6]}
    let CNT[DOM]++
    MON=${LSOUT[5]}
    let CNTM[$MON]++
done

for MON in ${!CNTM[@]}
do
    printf "%-04.4s: %d " $MON ${CNTM[$MON]} 
done

echo
echo -------

if [[ "$1" == "skipzero" ]]
then
    for i in "${!CNT[@]}"   # this syntax produces array indexes for elements that are set
    do
        echo $i ${CNT[i]}
    done
else
    let i=0
    while (( $i < 32 ))
    do
        # print out zero counts, on user
        if [[ "$1" == "printzero"  ]]
        then
            # note that because we use %d, ${CNT[i]} is interpreted as an integer
            # expression and thus unset elements are printed out as zeroes
            printf "%2d %3d\n" $i ${CNT[i]}          
        else
            # here, unset elements of count will expand to nothing
            echo $i ${CNT[i]}
        fi
        let i++
    done
fi
