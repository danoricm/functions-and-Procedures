// function.v
fn my_function(param int) int {
    mut x := param
    x += 10
    if x > 15 {
        x -= 5
    } else {
        x += 5
    }
    for i := 0; i < 3; i++ {
        x += i
    }
    return x
}

fn main() {
    print('Enter an integer: ')
    input := os.input('').trim_space()
    param := input.int()
    if param == 0 && input != '0' {
        println('Invalid input')
    } else {
        println(my_function(param))
    }
}
