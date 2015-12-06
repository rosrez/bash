#/bin/bash

# rpn calculator

# check for valid arg counts
if (( $# < 3 || $# % 2 == 0 ))
then
    echo "usage: $0 num num op [num op] ..."
    exit 1
fi

ANS=$(( $1 $3 $2 ))
shift 3     # toss the first 3 args and shift $4... into their position

while (( $# > 0 ))  # $# will be decremented by 3 after the shift 
do
    ANS=$(( ANS $2 $1 ))
    shift 2
done

echo $ANS
