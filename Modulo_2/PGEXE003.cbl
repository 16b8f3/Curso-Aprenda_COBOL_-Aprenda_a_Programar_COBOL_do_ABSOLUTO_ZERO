      ******************************************************************
      * Author: GILDO ALVES
      * Date: 22/05/2022
      * Purpose: EXEMPLO DE USO DE UM CÓDIGO COBOL
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PGEXE003.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-DATA             PIC X(10) VALUE SPACES.
       01 WS-DATA-R    REDEFINES WS-DATA.
          03 WS-DATA-DD       PIC 9(02).
          03 FILLER           PIC X.
          03 WS-DATA-MM       PIC 9(02).
          03 FILLER           PIC X.
          03 WS-DATA-AA       PIC 9(04).
       77 WS-NOME-MES-AUX     PIC X(15) VALUES SPACES.
       77 WS-TECLA-AUX        PIC X.

       01 WS-MESES-ANO        PIC 99 VALUE ZEROS.
          88 WS-MES-ATUAL            VALUE 1 THRU 12.

       01 WS-DIAS-MES         PIC 99 VALUE ZEROS.
          88 WS-FEV-NB               VALUE 1 THRU 28.
          88 WS-FEV-B                VALUE 1 THRU 29.
          88 WS-MES-30               VALUE 1 THRU 30.
          88 WS-MES-31               VALUE 1 THRU 31.
       PROCEDURE DIVISION.
      *******************************************************************
      *     INICIALIZA AS VARIAVEIS E CHAMA OS DEMAIS PARAGRAFOS        *
      *******************************************************************
       P100-INICIAL.
            DISPLAY "INICIO DO PROCESSAMENTO".

            MOVE 3           TO WS-MESES-ANO.

            IF WS-MES-ATUAL THEN
               DISPLAY "MES VERDADEIRO: " WS-MESES-ANO
            ELSE
               DISPLAY "ESSE MES NAO EXISTE: " WS-MESES-ANO
            END-IF.

            MOVE 31           TO WS-DIAS-MES.

            EVALUATE WS-DIAS-MES
               WHEN 1 THRU 28
                   DISPLAY WS-DIAS-MES
               WHEN 1 THRU 29
                   DISPLAY WS-DIAS-MES
               WHEN 1 THRU 30
                   DISPLAY WS-DIAS-MES
               WHEN 1 THRU 31
                   DISPLAY WS-DIAS-MES
               WHEN OTHER
                   DISPLAY "O DIA DO MES NAO EXISTE " WS-DIAS-MES
            END-EVALUATE.

            STOP RUN.


            MOVE SPACES       TO WS-DATA
                                 WS-NOME-MES-AUX
                                 WS-TECLA-AUX.
            DISPLAY "INFORME UMA DATA: ".
            ACCEPT  WS-DATA.

            PERFORM P200-VER-MES   THRU   P200-VER-MES-FIM.
            PERFORM P300-MOSTRA    THRU   P300-MOSTRA-FIM.
            PERFORM P900-TERMINAL  THRU   P900-TERMINAL-FIM.
       P100-INICIAL-FIM.
      *******************************************************************
      *     VERIFICA QUAL O MES DA DATA DIGITADA PELO USUARIO           *
      *******************************************************************
       P200-VER-MES.
            DISPLAY "VERIFICANDO O MES DA DATA INFORMADA..."

            EVALUATE WS-DATA-MM
                WHEN 01
                     MOVE "JANEIRO"         TO WS-NOME-MES-AUX
                WHEN 02
                     MOVE "FEVEREIRO"       TO WS-NOME-MES-AUX
                WHEN 03
                     MOVE "MARÇO"           TO WS-NOME-MES-AUX
                WHEN 04
                     MOVE "ABRIL"           TO WS-NOME-MES-AUX
                WHEN 05
                     MOVE "MAIO"            TO WS-NOME-MES-AUX
                WHEN 06
                     MOVE "JUNHO"           TO WS-NOME-MES-AUX
                WHEN 07
                     MOVE "JULHO"           TO WS-NOME-MES-AUX
                WHEN 08
                     MOVE "AGOSTO"          TO WS-NOME-MES-AUX
                WHEN 09
                     MOVE "SETEMBRO"        TO WS-NOME-MES-AUX
                WHEN 10
                     MOVE "OUTUBRO"         TO WS-NOME-MES-AUX
                WHEN 11
                     MOVE "NOVEMBRO"        TO WS-NOME-MES-AUX
                WHEN 12
                     MOVE "DEZEMBRO"        TO WS-NOME-MES-AUX
            END-EVALUATE.

       P200-VER-MES-FIM.
      *******************************************************************
      *     MOSTRAR O RESULTADO COM OPÇÃO DE REPROCESSAMENTO            *
      *******************************************************************
       P300-MOSTRA.

            DISPLAY "EXIBINDO O RESULTADO DO PROCESSAMENTO".

            DISPLAY "O MES DA DATA INFORMADA EH: " WS-NOME-MES-AUX.

            DISPLAY "TECLE <C> PARA CONTINUAR OU <T> PARA TERMINAR".
            ACCEPT WS-TECLA-AUX.

            IF WS-TECLA-AUX = "C" THEN
               PERFORM P100-INICIAL         THRU P100-INICIAL-FIM
            END-IF.

       P300-MOSTRA-FIM.
      *******************************************************************
      *     FINALIZAR O PROGRAMA                                        *
      *******************************************************************
       P900-TERMINAL.
            STOP RUN.
       P900-TERMINAL-FIM.
       END PROGRAM PGEXE003.
