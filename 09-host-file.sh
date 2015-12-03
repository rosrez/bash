#!/bin/bash

# Argument should be formatted as host:path

FULL=${1}

FN=${FULL#*:}
HOST=${FULL%:*}

echo HOST is $HOST
echo FILE is $FN
