
// function.cpp
#include <iostream>
#include <string>
#include <sstream>

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
    std::string input;
    int param;

    std::cout << "Enter an integer: ";
    std::getline(std::cin, input);
    std::stringstream(input) >> param;

    if (param == 0 && input != "0") {
        std::cout << "Invalid input" << std::endl;
        return 1;
    }

    std::cout << myFunction(param) << std::endl;
    return 0;
}
