# function.r
my_function <- function(param) {
    x <- param
    x <- x + 10
    if (x > 15) {
        x <- x - 5
    } else {
        x <- x + 5
    }
    for (i in 0:2) {
        x <- x + i
    }
    return(x)
}

cat("Enter an integer: ")
input <- readLines("stdin", n=1)
param <- as.integer(input)

if (is.na(param) && input != "0") {
    cat("Invalid input\n")
} else {
    cat(my_function(param), "\n")
}
