# function.ksh
my_function() {
    x=$1
    (( x += 10 ))
    if (( x > 15 )); then
        (( x -= 5 ))
    else
        (( x += 5 ))
    fi
    for (( i=0; i<3; i++ )); do
        (( x += i ))
    done
    echo $x
}

echo "Enter an integer: "
read input
param=$((input))

if [[ $param -eq 0 && $input != "0" ]]; then
    echo "Invalid input"
else
    my_function $param
fi
