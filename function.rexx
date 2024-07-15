/* function.rexx */
myFunction: procedure
  parse arg param
  x = param
  x = x + 10
  if x > 15 then
    x = x - 5
  else
    x = x + 5
  do i = 0 to 2
    x = x + i
  end
  return x

say 'Enter an integer:'
parse pull input
param = input
if param == 0 & input \== "0" then
  say 'Invalid input'
else
  say myFunction(param)
