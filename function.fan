// function.fan
class FunctionExample {
    static Int myFunction(Int param) {
        Int x = param
        x += 10
        if (x > 15) {
            x -= 5
        } else {
            x += 5
        }
        (0..2).each |i| {
            x += i
        }
        return x
    }

    static Void main() {
        Env.cur.out.print("Enter an integer: ")
        Str input = Env.cur.in.readLine
        Int? param = input.toInt
        if (param == null) {
            echo("Invalid input")
        } else {
            echo(myFunction(param))
        }
    }
}
