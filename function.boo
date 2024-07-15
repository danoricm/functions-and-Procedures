// function.boo
import System

def myFunction(param as int) as int:
    x as int = param
    x += 10
    if x > 15:
        x -= 5
    else:
        x += 5
    for i in range(3):
        x += i
    return x

print "Enter an integer: "
input = Console.ReadLine()
param = int.Parse(input)
result = myFunction(param)
print result
