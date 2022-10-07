      ******************************************************************
      * Author:
      * Date: 07/10/2022
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGMOVE.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-DATAX            PIC X(10) VALUE SPACES.
       01 WS-DATA-AA          PIC 9(4).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

            DISPLAY "INICIO DO PROCESSAMENTO".

            MOVE "07"             TO WS-DATAX(01:02).
            MOVE "/"              TO WS-DATAX(03:01).
            MOVE "10"             TO WS-DATAX(04:02).
            MOVE "/"              TO WS-DATAX(06:01).
            MOVE "2022"           TO WS-DATAX(07:04).

            DISPLAY WS-DATAX.

            MOVE WS-DATAX(07:04)  TO WS-DATA-AA(01:04).

            DISPLAY WS-DATA-AA.

            STOP RUN.
       END PROGRAM PROGMOVE.
