#!/bin/bash

# Notice that we don't need to use the dollar sign $ in (( expressions ))
# We can also use i=i+2, i=i+n as increment statements, just like in C.

for ((i=1 ;i<9 ; i++ ))
do
    FN="0${i}.mp3"  # we need the ${i} notation because $i is immediately followed by non-space characters
    echo $FN
done
