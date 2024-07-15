// function.php
function myFunction($param) {
    $x = $param;
    $x += 10;
    if ($x > 15) {
        $x -= 5;
    } else {
        $x += 5;
    }
    for ($i = 0; $i < 3; $i++) {
        $x += $i;
    }
    return $x;
}

echo "Enter an integer: ";
$input = trim(fgets(STDIN));
$param = intval($input);

if ($param == 0 && $input !== "0") {
    echo "Invalid input\n";
} else {
    echo myFunction($param) . "\n";
}
