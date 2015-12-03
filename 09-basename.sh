#!/bin/bash

# works similar to basename

fn=${1##*/}	# note that we need the longest match to remove all / characters
echo "$fn"
