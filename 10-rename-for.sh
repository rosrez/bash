#!/bin/bash

# VAR takes on successive command line parameters

for VAR
do
    echo Processing $VAR
    echo mv "$VAR" "${VAR%.*}.dat"
done
