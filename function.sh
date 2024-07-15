#!/bin/bash
# function.sh

myFunction() {
    local x=$1
    x=$((x + 10))
    if [ $x -gt 15 ]; then
        x=$((x - 5))
    else
        x=$((x + 5))
    fi
    for i in {0..2}; do
        x=$((x + i))
    done
    echo $x
}

read -p "Enter an integer: " input
param=$((input))

if [ $param -eq 0 ] && [ "$input" != "0" ]; then
    echo "Invalid input"
else
    myFunction $param
fi
