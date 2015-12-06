#!/bin/bash

# RPN (Reverse Polish Notation) calculator.
# usage: rpn number number operator

# check for valid arg counts
if (( $# != 3 ))
then
    echo "usage: $0 num num op"
    exit 1
fi

ANS=$(( $1 $3 $2))

# OR (( ANS = $1 $2 $2 ))

# OR let "ANS=$1 $3 $2"

echo $ANS
