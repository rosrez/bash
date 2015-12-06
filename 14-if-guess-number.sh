#!/bin/bash

# Illustration of the arithmetic if

VAR=$1
FACTOR=5

if (( VAR < 2 ))
then
    echo "too small"
    exit 1
fi

if (( VAR >= 900 ))
then
    echo "too large"
    exit 1
fi

echo "FACTOR $FACTOR"

if (( VAR == 25 * FACTOR || CHEAT != 0 ))
then
    echo "just right"
else
    echo "close enough"
fi
