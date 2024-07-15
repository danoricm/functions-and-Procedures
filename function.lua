-- function.lua
function myFunction(param)
    local x = param
    x = x + 10
    if x > 15 then
        x = x - 5
    else
        x = x + 5
    end
    for i = 0, 2 do
        x = x + i
    end
    return x
end

io.write("Enter an integer: ")
input = io.read("*n")
if input == nil then
    print("Invalid input")
else
    print(myFunction(input))
end
