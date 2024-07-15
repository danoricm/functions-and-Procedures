// function.dart
import 'dart:io';

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
    stdout.write("Enter an integer: ");
    String? input = stdin.readLineSync();
    int? param = int.tryParse(input!);
    if (param == null) {
        print("Invalid input");
    } else {
        print(myFunction(param));
    }
}
