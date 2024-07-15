\ function.fth
: my-function ( n -- n )
    10 + dup 15 > if 5 - else 5 + then
    0 1 2 do i + loop ;

\ Your code here
s" Enter an integer: " type
accept
>number
if
    drop drop
    s" Invalid input" type
else
    drop
    my-function .
then
