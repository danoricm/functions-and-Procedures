# function.tcl
proc myFunction {param} {
    set x [expr {$param + 10}]
    if {$x > 15} {
        set x [expr {$x - 5}]
    } else {
        set x [expr {$x + 5}]
    }
    for {set i 0} {$i < 3} {incr i} {
        set x [expr {$x + $i}]
    }
    return $x
}

puts -nonewline "Enter an integer: "
flush stdout
set input [gets stdin]
set param [expr {$input + 0}]

if {$param == 0 && $input != "0"} {
    puts "Invalid input"
} else {
    puts [myFunction $param]
}
