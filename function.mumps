; function.mumps
myFunction(param)
    new x,i
    set x=param
    set x=x+10
    if x>15 set x=x-5
    else  set x=x+5
    for i=0:1:2 set x=x+i
    quit x

main
    read "Enter an integer: ",param
    if param=0,param'="0" write "Invalid input",!
    else  write $$myFunction(param),!
    quit
