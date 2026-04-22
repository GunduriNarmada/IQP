IDENTIFICATION DIVISION.
       PROGRAM-ID. LOGIN01.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01  WS-USERNAME        PIC X(10).
       01  WS-PASSWORD        PIC X(10).

       01  WS-VALID-USER      PIC X(10) VALUE 'ADMIN'.
       01  WS-VALID-PASS      PIC X(10) VALUE 'PASS123'.

       01  WS-MESSAGE         PIC X(50).

       PROCEDURE DIVISION.
       MAIN-PARA.

           DISPLAY "ENTER USERNAME : "
           ACCEPT WS-USERNAME

           DISPLAY "ENTER PASSWORD : "
           ACCEPT WS-PASSWORD

           IF WS-USERNAME = WS-VALID-USER
              AND WS-PASSWORD = WS-VALID-PASS
              MOVE "LOGIN SUCCESSFUL" TO WS-MESSAGE
           ELSE
              MOVE "INVALID USERNAME OR PASSWORD"
                   TO WS-MESSAGE
           END-IF

           DISPLAY WS-MESSAGE

           STOP RUN.