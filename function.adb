-- function.adb
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO;

function MyFunction(Param : Integer) return Integer is
    X : Integer := Param;
begin
    X := X + 10;
    if X > 15 then
        X := X - 5;
    else
        X := X + 5;
    end if;

    for I in 0 .. 2 loop
        X := X + I;
    end loop;

    return X;
end MyFunction;

procedure Main is
    Param : Integer;
begin
    Ada.Text_IO.Put("Enter an integer: ");
    Ada.Integer_Text_IO.Get(Item => Param);
    Ada.Text_IO.New_Line;

    Ada.Text_IO.Put_Line(Integer'Image(MyFunction(Param)));
end Main;
