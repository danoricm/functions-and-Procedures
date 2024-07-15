// function.chpl
proc myFunction(param: int): int {
    var x = param;
    x += 10;
    if x > 15 {
        x -= 5;
    } else {
        x += 5;
    }
    for i in 0..2 {
        x += i;
    }
    return x;
}

writeln("Enter an integer: ");
var input: string;
readln(input);
var param = input:int;
writeln(myFunction(param));
