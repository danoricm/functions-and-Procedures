# function.pl
sub my_function {
    my ($param) = @_;
    my $x = $param;
    $x += 10;
    if ($x > 15) {
        $x -= 5;
    } else {
        $x += 5;
    }
    for my $i (0..2) {
        $x += $i;
    }
    return $x;
}

print "Enter an integer: ";
my $input = <STDIN>;
chomp($input);
my $param = int($input);

if ($param == 0 && $input ne "0") {
    print "Invalid input\n";
} else {
    print my_function($param) . "\n";
}
