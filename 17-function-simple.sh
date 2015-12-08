#!/bin/bash

# 'regular' definition
function func()
{
    echo inside func
}

# no parentheses
function func1
{
    echo inside func1
}

# no 'function' keword
func2()
{
    echo inside func2
}

# A grouping of statements within a function could be made with {}, (), (()) or [[ ]], 
# but with different implications

# starts a subshell
function subshell()
(
    echo inside a subshell: nesting level equals ${SHLVL}
    echo -n var from the parent shell ${VAR}
    VAR=SUBSHELL_CHANGE
    echo " changed to ${VAR}."
)

# arithmetic function
function increment()
((
    do_math=A++
))

VAR=PRIVATEVAR
A=101

echo before
func
echo after
echo before
func1
echo after
echo before
func2
echo after
echo before: VAR=${VAR}
subshell
echo after: VAR=${VAR}
A=101
echo before: A=${A}
increment
echo after: now A=${A}
