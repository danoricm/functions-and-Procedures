-- function.e
function my_function(param)
    integer x = param
    x += 10
    if x > 15 then
        x -= 5
    else
        x += 5
    end if
    for i = 0 to 2 do
        x += i
    end for
    return x
end function

integer param
puts(1, "Enter an integer: ")
param = gets(0)
if atom_to_int(param) = 0 and param != "0\n" then
    puts(1, "Invalid input\n")
else
    puts(1, my_function(atom_to_int(param)))
end if
