# function.ironpython.py
def my_function(param):
    x = param
    x += 10
    if x > 15:
        x -= 5
    else:
        x += 5
    for i in range(3):
        x += i
    return x

input_value = input("Enter an integer: ")
try:
    param = int(input_value)
except ValueError:
    print("Invalid input")
else:
    print(my_function(param))
