      ******************************************************************
      * Author: GILDO
      * Date: 20/02/2023
      * Purpose: CALCULAR UM BOLETIM ESCOLAR
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PRINCIPAL.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 WS-REPETIDOR                PIC 9(01)       VALUE 0.
       77 WS-NOME-ALUNO               PIC A(30)       VALUE SPACES.
       77 WS-NOME-MATERIA             PIC A(30)       VALUE SPACES.
       01 WS-NOTAS.
           03 WS-NOTA-UM              PIC 9(03)V9(01) VALUE 0.
           03 WS-NOTA-DOIS            PIC 9(03)V9(01) VALUE 0.
           03 WS-NOTA-TRES            PIC 9(03)V9(01) VALUE 0.
           03 WS-NOTA-QUATRO          PIC 9(03)V9(01) VALUE 0.
           03 WS-RESULTADO            PIC 9(03)V9(01) VALUE 0.
       77 WS-VALIDADOR                PIC 9(01)       VALUE 0.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            PERFORM P000-INITIALIZE-VARIAVEIS

            DISPLAY 'DESAFIO: BOLETIM ESCOLAR'
            DISPLAY ' '

            PERFORM WITH TEST BEFORE UNTIL WS-REPETIDOR = 1
               DISPLAY 'DIGITE O NOME DO ALUNO....: '
               ACCEPT WS-NOME-ALUNO
               DISPLAY 'DIGITE A MATERIA..........: '
               ACCEPT WS-NOME-MATERIA

               CALL 'RECEBER-NOTAS'
                             USING WS-NOTAS

               CALL 'CALCULAR-MEDIA'
                             USING WS-NOTAS

               CALL 'PARTE-UM-RESULTADO'
                             USING WS-NOME-ALUNO, WS-NOME-MATERIA

               CALL 'PARTE-DOIS-RESULTADO'
                             USING WS-NOTAS

               PERFORM P100-TEXTO-MENU
               ACCEPT WS-REPETIDOR

               IF WS-REPETIDOR = 1 THEN
                  MOVE 1  TO WS-REPETIDOR
               END-IF

               DISPLAY ' '

            END-PERFORM.

            PERFORM P999-MENSAGEM-DE-ENCERAMENTO

            STOP RUN.
      *-----------------------------------------------------------------
       P000-INITIALIZE-VARIAVEIS.
            INITIALIZE WS-REPETIDOR
                       WS-NOME-ALUNO
                       WS-NOME-MATERIA
                       WS-NOTAS
                       WS-VALIDADOR
            .
       P000-FIM.
      *-----------------------------------------------------------------
       P100-TEXTO-MENU.
            DISPLAY 'MENU'
            DISPLAY '* 1 - NAO'
            DISPLAY '* PARA CONTINUAR ESCOLHA QUALQUER OUTRO CARACTER'
            DISPLAY 'DESEJA VERIFICAR A MEDIA DE OUTRO ALUNO? '
            .
       P100-FIM.
      *-----------------------------------------------------------------
       P999-MENSAGEM-DE-ENCERAMENTO.
            DISPLAY '***********************************************'
            DISPLAY '*       OBRIGADO POR USAR ESSE PROGRAMA       *'
            DISPLAY '***********************************************'
            .
       P999-FIM.
      *-----------------------------------------------------------------
       END PROGRAM PRINCIPAL.
