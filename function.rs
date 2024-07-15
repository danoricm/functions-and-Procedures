// function.rs
use std::io;

fn my_function(param: i32) -> i32 {
    let mut x = param;
    x += 10;
    if x > 15 {
        x -= 5;
    } else {
        x += 5;
    }
    for i in 0..3 {
        x += i;
    }
    x
}

fn main() {
    let mut input = String::new();
    println!("Enter an integer: ");
    io::stdin().read_line(&mut input).expect("Failed to read line");
    let param: i32 = input.trim().parse().expect("Please type a number!");
    if param == 0 && input.trim() != "0" {
        println!("Invalid input");
    } else {
        println!("{}", my_function(param));
    }
}
