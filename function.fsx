// function.fsx
open System

let myFunction param =
    let mutable x = param
    x <- x + 10
    if x > 15 then
        x <- x - 5
    else
        x <- x + 5
    for i in 0 .. 2 do
        x <- x + i
    x

Console.Write("Enter an integer: ")
let input = Console.ReadLine()
match Int32.TryParse(input) with
| true, param ->
    Console.WriteLine(myFunction(param))
| false, _ ->
    Console.WriteLine("Invalid input")
