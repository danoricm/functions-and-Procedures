// function.kt
fun myFunction(param: Int): Int {
    var x = param
    x += 10
    if (x > 15) {
        x -= 5
    } else {
        x += 5
    }
    for (i in 0..2) {
        x += i
    }
    return x
}

fun main() {
    print("Enter an integer: ")
    val input = readLine()
    val param = input?.toIntOrNull()
    if (param == null) {
        println("Invalid input")
    } else {
        println(myFunction(param))
    }
}
