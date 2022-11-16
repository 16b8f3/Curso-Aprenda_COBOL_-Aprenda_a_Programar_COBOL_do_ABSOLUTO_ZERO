      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CHAMADOR.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-AREA.
           03 WS-RS                  PIC 9(02).
           03 WS-N1                 PIC 9(02).
           03 WS-N2                 PIC 9(02).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

            DISPLAY "PROGRAMA CHAMADOR"

            INITIALIZE WS-AREA

            SET WS-N1         TO 5
            SET WS-N2         TO 3

            DISPLAY 'CHAMANDO PROGRAMA...'
      * EH UMA BOA PRATICA USAR O CAMINHO PARA O PROGRAMA, EU NAO ESTOU USANDO POIS O NOME DO CAMINHO EH MUITO GRANDE
      * C:\Users\noteb\Desktop\Curso-Aprenda_COBOL_ Aprenda_a_Programar_COBOL_do_ABSOLUTO_ZERO\Modulo_2\CHAMADO
            CALL 'CHAMADO'
                        USING WS-AREA

            DISPLAY 'PROGRAMA CHAMADO EXECUTADO COM SUCESSO: '
                                                         WS-RS
            STOP RUN.
       END PROGRAM CHAMADOR.
