package main

import (
    "fmt"
    "strconv"
)

func myFunction(param int) int {
    x := param
    x = x + 10
    if x > 15 {
        x = x - 5
    } else {
        x = x + 5
    }
    for i := 0; i < 3; i++ {
        x = x + i
    }
    return x
}

func main() {
    var input string
    fmt.Print("Enter an integer: ")
    fmt.Scanln(&input)
    param, err := strconv.Atoi(input)
    if err != nil {
        fmt.Println("Invalid input")
        return
    }
    result := myFunction(param)
    fmt.Println(result)
}
