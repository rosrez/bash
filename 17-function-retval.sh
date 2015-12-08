#!/bin/bash

function max()
{
    if (( $1 > MAX ))   # MAX is empty on initial invocation, so this is only going to work for non-negative numbers
    then
        MAX=$1
    fi
}

# This is a helper on what ls -l outputs.

#  $1        $2 $3    $4     $5  $6  $7  $8   $9
#  PERM      LN USR   GRP    SIZ MON DAY YRTM FILNM
# -rw-rw-r--. 1 admin admin  708 Dec  1 22:06 01-redirection.txt

# the following function digests the output of ls -l and reads the size item into a variable
function lsparse()
{
    if (( $# < 9 )) # check if we have a full ls -l output
    then
        SIZ=-1
    else
        SIZ=$5
    fi
}

declare -i CNT MAX=-1
while read lsline
do
    let CNT++
    lsparse $lsline # the line (words delimited by spaces) is split into positional params during a function call
    max $SIZ
done

printf "largest file size of %d files is: %d\n" $CNT $MAX
