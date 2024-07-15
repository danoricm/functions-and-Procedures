# function.awk
function myFunction(param) {
    x = param
    x = x + 10
    if (x > 15) {
        x = x - 5
    } else {
        x = x + 5
    }
    for (i = 0; i < 3; i++) {
        x = x + i
    }
    return x
}

BEGIN {
    printf "Enter an integer: "
    getline input < "-"
    param = int(input)
    result = myFunction(param)
    print result
}
