// function.bsl
Function MyFunction(Parameter)
    Var x = Parameter;
    x = x + 10;
    If x > 15 Then
        x = x - 5;
    Else
        x = x + 5;
    EndIf;
    For i = 0 To 2 Do
        x = x + i;
    EndFor;
    Return x;
EndFunction

Var input;
Var param;
Var Result;

input = Input("Enter an integer: ");
param = Val(input);

If param = 0 And input <> "0" Then
    Message("Invalid input");
Else
    Result = MyFunction(param);
    Message(Result);
EndIf;
