      ******************************************************************
      * Author: GILDO ALVEZES
      * Date: 12/05/2022
      * Purpose: EXEMPLO DE UM PROGRAMA COBOL
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. DEMONSTRA.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 WS-N1                   PIC 9(02) VALUE ZEROS.
       77 WS-N2                   PIC 9(02) VALUE ZEROS.
       77 WS-RESULTADO            PIC 9(03) VALUE ZEROS.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

            MOVE 5   TO WS-N1.
            MOVE 3   TO WS-N2.

            COMPUTE WS-RESULTADO = WS-N1 + WS-N2.

            DISPLAY "A SOMA ENTRE " WS-N1 " + " WS-N2 " = " WS-RESULTADO

            STOP RUN.
       END PROGRAM DEMONSTRA.
