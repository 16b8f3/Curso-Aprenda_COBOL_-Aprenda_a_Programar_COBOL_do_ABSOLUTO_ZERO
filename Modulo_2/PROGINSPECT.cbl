      ******************************************************************
      * Author:
      * Date:
      * Purpose: 13/10/2022
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGINSPECT.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 WS-DATA             PIC X(10) VALUE SPACES.
       77 WS-TOTAL            PIC 9(02) VALUE ZEROS.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

            MOVE "13"             TO WS-DATA(01:02).
            MOVE "/"              TO WS-DATA(03:01).
            MOVE "10"             TO WS-DATA(04:02).
            MOVE "/"              TO WS-DATA(06:01).
            MOVE "2022"           TO WS-DATA(07:04).

            DISPLAY WS-DATA.

            INSPECT WS-DATA TALLYING WS-TOTAL FOR ALL "/"
            BEFORE INITIAL "2022".

            DISPLAY "CONTAGEM TOTAL DO CARACTER: " WS-TOTAL.

            COMPUTE WS-TOTAL = 0

            INSPECT WS-DATA TALLYING WS-TOTAL FOR ALL "/"
            BEFORE INITIAL "22".

            DISPLAY "CONTAGEM TOTAL DO CARACTER: " WS-TOTAL.

            INSPECT WS-DATA REPLACING ALL "/" BY "-" AFTER "13".

            DISPLAY WS-DATA.

            STOP RUN.
       END PROGRAM PROGINSPECT.
