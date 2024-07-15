// function.io
myFunction := method(param,
    x := param
    x = x + 10
    if (x > 15, x = x - 5, x = x + 5)
    for (i, 0, i < 3, i = i + 1, x = x + i)
    return x
)

print("Enter an integer: ")
input := File standardInput readLine
param := input asNumber
if (param == 0 and input != "0", "Invalid input", myFunction(param) println)
