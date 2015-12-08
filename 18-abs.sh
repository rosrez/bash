#!/bin/bash

# this function accepts the NAME of the variable and 
# returns the absolute value of the value that the variable has
function abs()
{
    local ABS=$1                # in this script, this equals to 'num' upon invocation
    if (( ${!ABS} < 0 ))        # this will expand to $num < 0, just what we need
    then
        let ${ABS}=0-${!ABS}    # this expands to: let num=0-<value of num>, which inverts the sign of the number
    fi
}

# main
for num
do
    printf "ABS($num) = "
    # note that we are referring to the variable by name
    # and the function changes the underlying value 'pointed to' by the name 'num'
    abs num  
    echo $num
done
