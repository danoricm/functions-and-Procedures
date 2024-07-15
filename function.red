; function.red
my-function: func [param][
    x: param
    x: x + 10
    either x > 15 [x: x - 5] [x: x + 5]
    repeat i 3 [x: x + i]
    x
]

print "Enter an integer: "
input: ask ""
param: to-integer input
if all [param = 0 input <> "0"] [
    print "Invalid input"
] else [
    print my-function param
]
