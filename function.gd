# function.gd
func my_function(param):
    var x = param
    x += 10
    if x > 15:
        x -= 5
    else:
        x += 5
    for i in range(3):
        x += i
    return x

func _ready():
    print("Enter an integer: ")
    var input = str(get_node("LineEdit").text)
    var param = int(input)
    if param == 0 and input != "0":
        print("Invalid input")
    else:
        print(my_function(param))
