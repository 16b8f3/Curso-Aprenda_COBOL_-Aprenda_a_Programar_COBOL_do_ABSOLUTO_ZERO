      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGDISPLAY.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 WS-MOSTRA               PIC X(10)  VALUE ' MENSAGEM'.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

            DISPLAY "Ola, fulano! " 45 WS-MOSTRA

            STOP RUN.
       END PROGRAM PROGDISPLAY.
