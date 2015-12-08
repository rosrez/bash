#!/bin/bash

function abs()
{
    if (( $1 >= 0 ))
    then
        let ABS=$1
    else
        let ABS=-$1
    fi
}

for VAL
do
    abs $VAL
    echo ${VAL}: absolute value is ${ABS}
done
