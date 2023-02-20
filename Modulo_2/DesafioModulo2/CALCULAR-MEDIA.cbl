      ******************************************************************
      * Author: GILDO
      * Date: 20/02/2023
      * Purpose: CALCULAR A MEDIA
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CALCULAR-MEDIA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       LINKAGE SECTION.
       01 PARAMETRES.
           02 WS-NOTA-UM                PIC 9(03)V9(01) VALUE 0.
           02 WS-NOTA-DOIS              PIC 9(03)V9(01) VALUE 0.
           02 WS-NOTA-TRES              PIC 9(03)V9(01) VALUE 0.
           02 WS-NOTA-QUATRO            PIC 9(03)V9(01) VALUE 0.
           02 WS-RESULTADO              PIC 9(03)V9(01) VALUE 0.
       PROCEDURE DIVISION USING PARAMETRES.
       MAIN-PROCEDURE.
            COMPUTE WS-RESULTADO = (
                                    WS-NOTA-UM +
                                    WS-NOTA-DOIS +
                                    WS-NOTA-TRES +
                                    WS-NOTA-QUATRO
                                   ) / 4
                                   ON SIZE ERROR
                                      PERFORM P999-MENSAGEM-DE-ERRO
            END-COMPUTE.
            GOBACK.
      *-----------------------------------------------------------------
       P999-MENSAGEM-DE-ERRO.
            DISPLAY '***********************************************'
            DISPLAY '*      NOTAS INVALIDAS - TENTE NOVAMENTE      *'
            DISPLAY '***********************************************'
            .
       P999-FIM.
      *-----------------------------------------------------------------
       END PROGRAM CALCULAR-MEDIA.
