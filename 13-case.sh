#!/bin/bash

read -p "Answer yes or no: " ANS

# Note that we use shell pattern matching (not regex) to branch.

case "$ANS" in
    y*) echo "OK"
        ;;
    n*) echo "negative"
        ;;
    *) echo "make up your mind"
        exit 1
        ;;
esac
