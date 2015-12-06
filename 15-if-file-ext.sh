#!/bin/bash

if [[ $1 == *.txt ]]    # THIS IS NOT GLOBBING! JUST COMPARES AGAINST A SHELL PATTERN. i.e. END IN .txt
then
    echo text file
    exit 0
fi

if [[ $1 =~ 15.*if.*sh ]]  # =~ TELLS BASH TO TAKE IT AS A REGULAR EXPRESSION!
then
    echo found it \(begins with 15, contains 'if', ends in 'sh'\)
fi
