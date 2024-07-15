{ function.pas }
program FunctionExample;

function MyFunction(Param: Integer): Integer;
var
    x, i: Integer;
begin
    x := Param + 10;
    if x > 15 then
        x := x - 5
    else
        x := x + 5;
    for i := 0 to 2 do
        x := x + i;
    MyFunction := x;
end;

var
    input: string;
    param: Integer;

begin
    Write('Enter an integer: ');
    Readln(input);
    Val(input, param);
    if (param = 0) and (input <> '0') then
        Writeln('Invalid input')
    else
        Writeln(MyFunction(param));
end.
