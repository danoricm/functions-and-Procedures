# function.jq
def myFunction(param):
    def x: param + 10;
    def x: if x > 15 then x - 5 else x + 5 end;
    def x: x + (0, 1, 2 | add);
    x;

def main:
    input as $param
    | ($param | tonumber) as $num
    | if $num == 0 and $param != "0" then "Invalid input" else myFunction($num) end;

main
