# function.raku
sub my-function(Int $param) {
    my $x = $param;
    $x += 10;
    if $x > 15 {
        $x -= 5;
    } else {
        $x += 5;
    }
    for 0..2 -> $i {
        $x += $i;
    }
    return $x;
}

print "Enter an integer: ";
my $input = prompt '';
my $param = $input.Int;

if $param == 0 && $input != "0" {
    say "Invalid input";
} else {
    say my-function($param);
}
