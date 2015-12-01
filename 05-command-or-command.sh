#!/bin/bin
# if the 'cd' fails, only then will we display the error message.
cd $1 || echo "could not cd to $1"
