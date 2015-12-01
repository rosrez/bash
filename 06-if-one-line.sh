#!/bin/bash

if cd $1 2>/dev/null; then echo the cd to $1 worked; else echo cd to $1 failed; exit 1; fi

echo continuing on
