
// function.d
import std.stdio;
import std.conv;

int myFunction(int param) {
    int x = param;
    x += 10;
    if (x > 15) {
        x -= 5;
    } else {
        x += 5;
    }
    for (int i = 0; i < 3; i++) {
        x += i;
    }
    return x;
}

void main() {
    writeln("Enter an integer: ");
    string input = readln().strip();
    int param;
    try {
        param = to!int(input);
    } catch (Exception e) {
        writeln("Invalid input");
        return;
    }
    writeln(myFunction(param));
}
