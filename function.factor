! function.factor
: my-function ( n -- n )
    10 + dup 15 > [ 5 - ] [ 5 + ] if 0 1 2 [ over + ] each drop ;

! Your code here
"Enter an integer: " print flush
readln string>number >integer
[ my-function . ] if
