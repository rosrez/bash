#!/bin/bash

# explicitly named range of values

for FN in one pathname "other stuff" more
do
    echo $FN
done

echo -----------

# substitute the result of globbing as the range

for FN in *.sh
do
    echo "$FN"
done
