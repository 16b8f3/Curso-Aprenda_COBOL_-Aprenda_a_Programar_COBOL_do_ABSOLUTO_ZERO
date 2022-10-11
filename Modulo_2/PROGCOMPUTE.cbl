      ******************************************************************
      * Author:
      * Date: 11/10/2022
      * Purpose: Mostrar comandos COBOL
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOMPUTE.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 WS-RESULT                 PIC 9(05) VALUE ZEROS.
       77 WS-NUM-1                  PIC 9(02) VALUE ZEROS.
       77 WS-NUM-2                  PIC 9(02) VALUE ZEROS.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

            COMPUTE WS-RESULT = 5 + 5
            COMPUTE WS-RESULT = WS-RESULT * 3
            COMPUTE WS-RESULT = WS-RESULT - 15
            COMPUTE WS-RESULT = WS-RESULT / 3
            COMPUTE WS-RESULT = WS-RESULT ** 3

            DISPLAY 'RESULTADO.................: ' WS-RESULT

            COMPUTE WS-RESULT = (5 * 5) + (((5 - 1) * 2) + 9)

            DISPLAY 'RESULTADO.................: ' WS-RESULT

            DISPLAY 'INFORME O PRIMEIRO NUMERO.: '
            ACCEPT WS-NUM-1.

            DISPLAY 'INFORME O SEGUNDO NUMERO..: '
            ACCEPT WS-NUM-2.

            COMPUTE WS-RESULT = WS-NUM-1 + WS-NUM-2

            DISPLAY 'RESULTADO DA SOMA.........: ' WS-RESULT

            COMPUTE WS-RESULT = WS-NUM-1 - WS-NUM-2

            DISPLAY 'RESULTADO DA SUBTRACAO....: ' WS-RESULT

            COMPUTE WS-RESULT = WS-NUM-1 * WS-NUM-2

            DISPLAY 'RESULTADO DA MULTIPLICACAO: ' WS-RESULT

            COMPUTE WS-RESULT = WS-NUM-1 / WS-NUM-2

            DISPLAY 'RESULTADO DA DIVISAO.......: ' WS-RESULT

            STOP RUN.

       END PROGRAM PROGCOMPUTE.
