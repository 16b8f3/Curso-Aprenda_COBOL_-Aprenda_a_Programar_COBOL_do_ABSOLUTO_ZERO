      ******************************************************************
      * Author:
      * Date: 14-10-2022
      * Purpose: Mostrar comando COBOL
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGINITIALIZE.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-NOME.
           03 WS-PRIMEIRO-NOME          PIC X(10) VALUE 'ZIMA'.
           03 FILLER                    PIC X(10) VALUE 'BLUE'.
           03 FILLER                    PIC 9(03) VALUE 1.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

            DISPLAY 'SAIDA 1: '
            DISPLAY WS-NOME

            DISPLAY 'SAIDA 2: '
            INITIALIZE WS-NOME REPLACING ALPHANUMERIC BY 'SPACES'
                                         NUMERIC      BY 3.
            DISPLAY WS-NOME

            DISPLAY 'SAIDA 3: '
            INITIALIZE WS-NOME
            DISPLAY WS-NOME

            DISPLAY 'SAIDA 4: '
            INITIALIZE WS-NOME REPLACING ALPHANUMERIC BY SPACES
                                         NUMERIC      BY ZEROS.
            DISPLAY WS-NOME


      * O PONTO FINAL ENTRE O STOP E DISPLAY É PARA FINALIZAR SESSAO NAO DA ERROR
      * AO COMPILAR MAS É UMA BOA PRATICA DE PROGRAMAÇÃO
            STOP RUN.

       END PROGRAM PROGINITIALIZE.
