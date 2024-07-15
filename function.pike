// function.pike
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

int main() {
    write("Enter an integer: ");
    string input = Stdio.stdin.gets();
    int param = sscanf(input, "%d");
    if (param == 0 && input != "0") {
        write("Invalid input\n");
    } else {
        write(sprintf("%d\n", myFunction(param)));
    }
    return 0;
}
