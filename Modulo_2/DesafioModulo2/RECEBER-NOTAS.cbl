      ******************************************************************
      * Author: GILDO
      * Date: 20/02/2023
      * Purpose: RECEBER NOTAS E VALIDA-LAS
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. RECEBER-NOTAS.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       LINKAGE SECTION.
       01 PARAMETRES.
           02 WS-NOTA-UM                PIC 9(03)V9(01) VALUE 0.
           02 WS-NOTA-DOIS              PIC 9(03)V9(01) VALUE 0.
           02 WS-NOTA-TRES              PIC 9(03)V9(01) VALUE 0.
           02 WS-NOTA-QUATRO            PIC 9(03)V9(01) VALUE 0.
           02 WS-RESULTADO              PIC 9(03)V9(01) VALUE 0.
           02 WS-VALIDADOR              PIC 9(01)       VALUE 0.
       PROCEDURE DIVISION USING PARAMETRES.
       MAIN-PROCEDURE.
            INITIALIZE WS-VALIDADOR

            MOVE 0 TO WS-VALIDADOR
            PERFORM WITH TEST BEFORE UNTIL WS-VALIDADOR = 1
               DISPLAY 'DIGITE A PRIMEIRA NOTA....: '
               ACCEPT WS-NOTA-UM

               IF (WS-NOTA-UM IS NOT NUMERIC) OR
                  (WS-NOTA-UM < 1.0 OR WS-NOTA-UM > 100.0) THEN
                  PERFORM P999-MENSAGEM-DE-ERRO
               ELSE
                  MOVE 1 TO WS-VALIDADOR
               END-IF
            END-PERFORM

            MOVE 0 TO WS-VALIDADOR
            PERFORM WITH TEST BEFORE UNTIL WS-VALIDADOR = 1
               DISPLAY 'DIGITE A SEGUNDA NOTA.....: '
               ACCEPT WS-NOTA-DOIS

               IF (WS-NOTA-DOIS IS NOT NUMERIC) OR
                  (WS-NOTA-DOIS < 1.0 OR WS-NOTA-DOIS > 100.0) THEN
                  PERFORM P999-MENSAGEM-DE-ERRO
               ELSE
                  MOVE 1 TO WS-VALIDADOR
               END-IF
            END-PERFORM

            MOVE 0 TO WS-VALIDADOR
            PERFORM WITH TEST BEFORE UNTIL WS-VALIDADOR = 1
               DISPLAY 'DIGITE A TERCEIRA NOTA....: '
               ACCEPT WS-NOTA-TRES

               IF (WS-NOTA-TRES IS NOT NUMERIC) OR
                  (WS-NOTA-TRES < 1.0 OR WS-NOTA-TRES > 100.0) THEN
                  PERFORM P999-MENSAGEM-DE-ERRO
               ELSE
                  MOVE 1 TO WS-VALIDADOR
               END-IF
            END-PERFORM

            MOVE 0 TO WS-VALIDADOR
            PERFORM WITH TEST BEFORE UNTIL WS-VALIDADOR = 1
               DISPLAY 'DIGITE A QUARTA NOTA......: '
               ACCEPT WS-NOTA-QUATRO

               IF (WS-NOTA-QUATRO IS NOT NUMERIC) OR
                  (WS-NOTA-QUATRO < 1.0 OR WS-NOTA-QUATRO > 100.0) THEN
                  PERFORM P999-MENSAGEM-DE-ERRO
               ELSE
                  MOVE 1 TO WS-VALIDADOR
               END-IF
            END-PERFORM

           GOBACK.
      *-----------------------------------------------------------------
       P999-MENSAGEM-DE-ERRO.
            DISPLAY '***********************************************'
            DISPLAY '*      NOTAS INVALIDAS - TENTE NOVAMENTE      *'
            DISPLAY '***********************************************'
            .
       P999-FIM.
      *-----------------------------------------------------------------
       END PROGRAM RECEBER-NOTAS.
