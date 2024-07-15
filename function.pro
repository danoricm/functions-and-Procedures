% function.pro
my_function(Param, Result) :-
    X1 is Param + 10,
    (X1 > 15 -> X2 is X1 - 5; X2 is X1 + 5),
    loop(X2, 0, Result).

loop(X, 3, X).
loop(X, I, Result) :-
    I < 3,
    X1 is X + I,
    I1 is I + 1,
    loop(X1, I1, Result).

main :-
    write('Enter an integer: '),
    read(Input),
    (integer(Input) ->
        my_function(Input, Result),
        write(Result), nl;
        write('Invalid input'), nl).
