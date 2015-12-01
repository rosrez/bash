#!/bin/bash

# Curly braces will combine the commands to execute on the right side
#                     V                                V
cd $1 2> /dev/null || { echo cd to $1 failed ; exit 1; }
#                                                    ^^
#  Quirk of bash syntax: a semicolon and a space is needed

echo continuing on

# P.S Note that curly braces are not identical to invoking the subshell ( ... )
