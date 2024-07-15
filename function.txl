% function.txl
import TXLTokens
function main [param]
    x [number] = param
    x = x + 10
    if x > 15 then
        x = x - 5
    else
        x = x + 5
    end if
    for i [number] from 0 to 2 do
        x = x + i
    end for
    return x
end function

begin
    write "Enter an integer: "
    input = read
    param = str2num input
    if param = 0 and input != "0" then
        write "Invalid input"
    else
        write myFunction param
    end if
end
