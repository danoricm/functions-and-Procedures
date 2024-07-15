% function.t
function myFunction(param : int) : int
    var x : int := param
    x := x + 10
    if x > 15 then
        x := x - 5
    else
        x := x + 5
    end if
    for i : int := 0 to 2
        x := x + i
    end for
    result x
end myFunction

var input : string
var param : int

put "Enter an integer: " ..
get input
param := strintok (input)

if param = 0 and input not= "0" then
    put "Invalid input"
else
    put myFunction(param)
end if
