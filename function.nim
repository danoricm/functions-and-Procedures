# function.nim
proc myFunction(param: int): int =
    var x = param
    x += 10
    if x > 15:
        x -= 5
    else:
        x += 5
    for i in 0..2:
        x += i
    return x

echo "Enter an integer: "
let input = readLine(stdin)
let param = parseInt(input)
if param == 0 and input != "0":
    echo "Invalid input"
else:
    echo myFunction(param)
