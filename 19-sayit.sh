#!/bin/bash

# take each argument
# take it apart one char at a time
# and 'say' all the digits

# initialization
declare -a DIGNAM
DIGNAM=(zero one two three four [5]=five six seven eight nine)
#                               ^^^^^^^^
# We can skip to any index we want |
# Here, we explicitly assign element #5 to five.
# This is redundant in this script, but illustrates the concept. Indexes don't have to be consecutive.

DIGNAM[2]=two       # just another way to assign a value to an individual element

for arg
do
    let i=0
    while (( i < ${#arg} ))         # ${#arg} denotes the number of elements in the array
    do
        C=${arg:i:1}                # extract i-th character
        case "$C" in
        [0-9]) SAY="${DIGNAM[$C]}"  # [0-9] shell pattern matching (not a regex!)
                ;;
            *) SAY="$C"             # literally quote characters we don't 'understand'
        esac
        printf "%s " "$SAY"
        let i++
    done
done
echo    # just a newline
