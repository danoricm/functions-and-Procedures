% function.hrl
-module(function).
-export([my_function/1, main/0]).

my_function(Param) ->
    X = Param + 10,
    X1 = if X > 15 -> X - 5; true -> X + 5 end,
    lists:foldl(fun(I, Acc) -> Acc + I end, X1, lists:seq(0, 2)).

main() ->
    io:format("Enter an integer: "),
    {ok, [Input]} = io:fread("", "~d"),
    Result = my_function(Input),
    io:format("~p~n", [Result]).
