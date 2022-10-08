      ******************************************************************
      * Author:
      * Date:
      * Purpose: Mostrar comandos COBOL
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGSET.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
      * 77 WS-NUM-1                      PIC 99 VALUE 0.
      * 77 WS-NUM-2                      PIC 99 VALUE 0.
       01 WS-PAGTO                      PIC X  VALUE 'N'.
          88 WS-CONFIRM                 VALUE 'S' FALSE 'N'.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

      *      DISPLAY 'ANTES DE SETAR WS-NUM-1...: ' WS-NUM-1
      *      SET WS-NUM-1                TO 5
      *      DISPLAY 'DEPOIS DE SETAR WS-NUM-1..: ' WS-NUM-1
      *
      *      DISPLAY 'ANTES DE SETAR WS-NUM-2...: ' WS-NUM-2
      *      SET WS-NUM-2                TO WS-NUM-1.
      *      DISPLAY 'DEPOIS DE SETAR WS-NUM-2..: ' WS-NUM-2

      *      SET WS-NUM-1                TO 7
      *      DISPLAY 'VALOR FINAL WS-NUM-1......: ' WS-NUM-1
      *      DISPLAY 'VALOR FINAL WS-NUM-2......: ' WS-NUM-2

            DISPLAY 'SITUACAO DO PACTO ATUAL...: ' WS-PAGTO
            SET WS-CONFIRM                      TO TRUE
            DISPLAY 'NOVA SITUACAO DO PACTO....: ' WS-PAGTO
            SET WS-CONFIRM                      TO FALSE
            DISPLAY 'NOVA SITUACAO PACTO CORR..: ' WS-PAGTO

            STOP RUN.
       END PROGRAM PROGSET.
