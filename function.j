NB. function.j
myFunction =: 3 : 'param'
NB. Your code here
x =: param + 10
x =: x > 15 { (x - 5); (x + 5)
x + +/i. 3
)

NB. Your code here
input =: ".":<.":(input~": ".")
if. input -: 0 do.
  param =: ".": input
  myFunction param
else.
  'Invalid input'
end.
