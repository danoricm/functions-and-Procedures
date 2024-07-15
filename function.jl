# function.jl
function my_function(param::Int)
    x = param
    x += 10
    if x > 15
        x -= 5
    else
        x += 5
    end
    for i in 0:2
        x += i
    end
    return x
end

println("Enter an integer: ")
input = readline()
param = parse(Int, input)
if param == 0 && input != "0"
    println("Invalid input")
else
    println(my_function(param))
end