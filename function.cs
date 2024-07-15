// function.cs
using System;

class Program
{
    static int MyFunction(int param) {
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

    static void Main() {
        Console.Write("Enter an integer: ");
        string input = Console.ReadLine();
        int param;
        if (int.TryParse(input, out param)) {
            Console.WriteLine(MyFunction(param));
        } else {
            Console.WriteLine("Invalid input");
        }
    }
}
