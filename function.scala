// function.scala
object FunctionExample {
  def myFunction(param: Int): Int = {
    var x = param
    x += 10
    if (x > 15) {
      x -= 5
    } else {
      x += 5
    }
    for (i <- 0 until 3) {
      x += i
    }
    x
  }

  def main(args: Array[String]): Unit = {
    print("Enter an integer: ")
    val input = scala.io.StdIn.readLine()
    val param = input.toInt
    if (param == 0 && input != "0") {
      println("Invalid input")
    } else {
      println(myFunction(param))
    }
  }
}
