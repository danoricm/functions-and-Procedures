       IDENTIFICATION DIVISION.
       PROGRAM-ID. FunctionExample.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 PARAM        PIC 9(4).
       01 RESULT       PIC 9(4).
       01 X            PIC 9(4).
       01 INPUT        PIC X(4).

       PROCEDURE DIVISION.
       MAIN-LOGIC.
           DISPLAY "Enter an integer: ".
           ACCEPT INPUT.
           MOVE FUNCTION NUMVAL(INPUT) TO PARAM.

           IF PARAM = 0 AND INPUT NOT EQUAL "0"
               DISPLAY "Invalid input"
               STOP RUN
           END-IF.

           CALL 'MYFUNCTION' USING PARAM GIVING RESULT.
           DISPLAY RESULT.
           STOP RUN.

       ENTRY 'MYFUNCTION' USING PARAM RETURNING RESULT.
           MOVE PARAM TO X.
           ADD 10 TO X.
           IF X > 15 THEN
               SUBTRACT 5 FROM X
           ELSE
               ADD 5 TO X
           END-IF.
           PERFORM VARYING I FROM 0 BY 1 UNTIL I > 2
               ADD I TO X
           END-PERFORM.
           MOVE X TO RESULT.
           EXIT PROGRAM.
