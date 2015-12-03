#!/bin/bash

# while with integer counters
let i=0
while (( i < $1 ))  # (( )) for arithmetic expression
do
    echo $i
    let i++
done

# while "true", i.e. success
#while cmd --- repeat while the command succeeds
#do
#done
