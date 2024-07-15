// function.groovy
def myFunction(param) {
    int x = param
    x += 10
    if (x > 15) {
        x -= 5
    } else {
        x += 5
    }
    for (int i = 0; i < 3; i++) {
        x += i
    }
    return x
}

print "Enter an integer: "
def input = System.console().readLine()
def param = input.toInteger()
if (param == 0 && input != "0") {
    println "Invalid input"
} else {
    println myFunction(param)
}
