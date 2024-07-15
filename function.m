% function.m
function result = myFunction(param)
    x = param;
    x = x + 10;
    if x > 15
        x = x - 5;
    else
        x = x + 5;
    end
    for i = 0:2
        x = x + i;
    end
    result = x;
end

input = input('Enter an integer: ', 's');
param = str2num(input);
if isempty(param)
    disp('Invalid input')
else
    disp(myFunction(param))
end
