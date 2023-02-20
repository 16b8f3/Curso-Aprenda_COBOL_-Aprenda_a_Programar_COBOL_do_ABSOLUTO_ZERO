      ******************************************************************
      * Author: GILDO
      * Date: 20/02/2023
      * Purpose: MOSTRAR NOTAS, MEDIA E STATUS DO ALUNO
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PARTE-DOIS-RESULTADO.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       LINKAGE SECTION.
       01 PARAMETRES.
           02 WS-NOTA-UM                  PIC 9(03)V9(01) VALUE 0.
           02 WS-NOTA-DOIS                PIC 9(03)V9(01) VALUE 0.
           02 WS-NOTA-TRES                PIC 9(03)V9(01) VALUE 0.
           02 WS-NOTA-QUATRO              PIC 9(03)V9(01) VALUE 0.
           02 WS-RESULTADO                PIC 9(03)V9(01) VALUE 0.
           02 WS-STATUS                   PIC A(09)       VALUE SPACES.
       PROCEDURE DIVISION USING PARAMETRES.
       MAIN-PROCEDURE.
            IF WS-RESULTADO >= 70 THEN
               MOVE 'APROVADO'         TO WS-STATUS
            ELSE
               MOVE 'REPROVADO'        TO WS-STATUS
            END-IF.

            DISPLAY 'NOTA 1....................: ' WS-NOTA-UM
            DISPLAY 'NOTA 2....................: ' WS-NOTA-DOIS
            DISPLAY 'NOTA 3....................: ' WS-NOTA-TRES
            DISPLAY 'NOTA 4....................: ' WS-NOTA-QUATRO
            DISPLAY 'MEDIA.....................: ' WS-RESULTADO
            DISPLAY 'STATUS....................: ' WS-STATUS
            DISPLAY '*******************************************'
            DISPLAY ' '
           GOBACK.
       END PROGRAM PARTE-DOIS-RESULTADO.
