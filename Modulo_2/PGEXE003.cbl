      ******************************************************************
      * Author: GILDO ALVES
      * Date: 22/05/2022
      * Purpose: EXEMPLO DE USO DE UM CÓDIGO COBOL
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PGEXE003.
       ENVIRONMENT DIVISION.
       CONFIGURATION DIVISION.
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
       77 ES-TECLA-AUX        PIC X.

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
            ENDE-IF.

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
                                 WS-TECLA-AUX
            DISPLAY "INFORME UMA DATA: ".
            ACCEPT WS-DATA.

            PERFORM P200-VER-MES   THRU P200-VER-MES-FIM.
            PERFORM P300-MOSTRA    THRU P300-MOSTRA-FIM.
            PERFORM P900-TERMINAL  THRU P900-TERMINAL-FIM.
       P100-INICIAL-FIM.
      *******************************************************************
      *     VERIFICA QUAL O MES DA DATA DIGITADA PELO USUARIO           *
      *******************************************************************
       P200-VER-MES.
            DISPLAY "VERIFICANDO O MES DA DATA INFORMADA..."

            EVALUATE WS-DATA-MM
                WHEN 01


       MAIN-PROCEDURE.
            DISPLAY "Hello world"
            STOP RUN.
       END PROGRAM PGEXE003.
