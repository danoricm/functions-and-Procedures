' function.bas
FUNCTION MyFunction (Param AS INTEGER) AS INTEGER
    DIM X AS INTEGER
    X = Param
    X = X + 10
    IF X > 15 THEN
        X = X - 5
    ELSE
        X = X + 5
    END IF
    FOR I = 0 TO 2
        X = X + I
    NEXT I
    MyFunction = X
END FUNCTION

DIM input AS STRING
DIM param AS INTEGER

PRINT "Enter an integer: ";
INPUT "", input
param = VAL(input)

IF param = 0 AND input <> "0" THEN
    PRINT "Invalid input"
    END
END IF

PRINT MyFunction(param)
