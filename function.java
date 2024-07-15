// function.java
import java.util.Scanner;

public class Function {
    public static int myFunction(int param) {
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

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter an integer: ");
        String input = scanner.nextLine();
        try {
            int param = Integer.parseInt(input);
            System.out.println(myFunction(param));
        } catch (NumberFormatException e) {
            System.out.println("Invalid input");
        }
    }
}
