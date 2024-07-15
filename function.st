" function.st "
| x param input |
Transcript show: 'Enter an integer: '.
input := FileStream stdin nextLine.
param := input asInteger.

(param = 0 and: [input ~= '0'])
    ifTrue: [Transcript show: 'Invalid input'; cr]
    ifFalse: [
        x := param + 10.
        x > 15
            ifTrue: [x := x - 5]
            ifFalse: [x := x + 5].
        0 to: 2 do: [:i | x := x + i].
        Transcript show: x; cr.
    ].
