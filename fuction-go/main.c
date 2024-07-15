// main.c
#include <stdio.h>
#include <stdlib.h>

int myFunction(int param) {
    int x = param;
    x = x + 10;
    if (x > 15) {
        x = x - 5;
    } else {
        x = x + 5;
    }
    for (int i = 0; i < 3; i++) {
        x = x + i;
    }
    return x;
}

int main() {
    char input[10];
    int param;

    printf("Enter an integer: ");
    fgets(input, 10, stdin);
    param = atoi(input);

    if (param == 0 && input[0] != '0') {
        printf("Invalid input\n");
        return 1;
    }

    int result = myFunction(param);
    printf("%d\n", result);
    return 0;
}
