#!/bin/bash

# expects two parameters
function func()
{
    echo "Function param 1: $1, param 2: $2"
    echo "\$0 remains the same, even inside a function: $0"
}

echo "Script param 1: $1, param 2: $2"
func funcparam1 funcparam2
echo "Script param 1: $1, param 2: $2"

