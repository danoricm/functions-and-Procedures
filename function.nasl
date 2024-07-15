# function.nasl
function myFunction(param) {
    local_var x = param;
    x += 10;
    if (x > 15) {
        x -= 5;
    } else {
        x += 5;
    }
    for (i = 0; i < 3; i++) {
        x += i;
    }
    return x;
}

display("Enter an integer: ");
input = gets();
param = int(input);
if (param == 0 && input != "0") {
    display("Invalid input\n");
} else {
    result = myFunction(param);
    display(result, "\n");
}
