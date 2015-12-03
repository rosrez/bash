#!/bin/bash

# works similar to dirname

# Remove the trailing portion that matches /*, i.e. the filename

dn="${1%/*}"
echo "$dn"

