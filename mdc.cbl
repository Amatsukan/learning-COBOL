       IDENTIFICATION DIVISION.
       PROGRAM-ID.    main-mdc.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 rec. 
        02 n1 PIC 9(3).
        02 n2 PIC 9(3).
        02 result PIC 9(3) value 0.
        02  aux1   PIC 9(9).
        02  aux2   PIC 9(9).
       77 nex PIC X VALUE 'Y'.
       77 nex2 PIC X .

       PROCEDURE DIVISION.
       PERFORM UNTIL nex = 'N' OR 'n'
           MOVE 0 TO nex2
           DISPLAY "N1 ->" WITH NO ADVANCING
           ACCEPT n1
           DISPLAY "N2 ->" WITH NO ADVANCING
           ACCEPT n2 
            
           PERFORM UNTIL nex2 = 1
               IF n2 = 0 THEN
                    MOVE n1 TO result
                    MOVE 1 TO nex2
               ELSE
                    DIVIDE n1 BY n2 GIVING aux2 REMAINDER aux1
                    MOVE n2 TO n1
                    MOVE aux1 TO n2
               END-IF
           END-PERFORM
           DISPLAY "Your result is: " WITH NO ADVANCING
           DISPLAY result
           DISPLAY "Would you like to continue this shit???(Y/N):-> "
           ACCEPT nex
       END-PERFORM.
       END PROGRAM main-mdc.
