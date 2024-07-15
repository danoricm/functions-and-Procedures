// function.swift
func myFunction(param: Int) -> Int {
    var x = param
    x += 10
    if x > 15 {
        x -= 5
    } else {
        x += 5
    }
    for i in 0..<3 {
        x += i
    }
    return x
}

print("Enter an integer: ", terminator: "")
if let input = readLine(), let param = Int(input) {
    if param == 0 && input != "0" {
        print("Invalid input")
    } else {
        print(myFunction(param))
    }
} else {
    print("Invalid input")
}
