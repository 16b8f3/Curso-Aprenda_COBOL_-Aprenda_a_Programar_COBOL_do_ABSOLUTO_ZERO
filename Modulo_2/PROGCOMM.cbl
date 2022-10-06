      ******************************************************************
      * Author:
      * Date:
      * Purpose: Mostrar comandos COBOL
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOMM.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 WS-MOSTRA               PIC X(20) VALUES SPACES.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

      *       DISPLAY 'DIGITE ALGO: '
      *       ACCEPT WS-MOSTRA
      *       DISPLAY 'WS-MOSTRA: ' WS-MOSTRA ' ' 45 ' TEXTO...'

      *       ACCEPT WS-MOSTRA FROM DATE                                 YYMMDD
      *       DISPLAY WS-MOSTRA

      *       ACCEPT WS-MOSTRA FROM DATE YYYYMMDD
      *       DISPLAY WS-MOSTRA

      *       ACCEPT WS-MOSTRA FROM DAY                                  YYDIA-ATUAL-DO-ANO
      *       DISPLAY WS-MOSTRA

      *       ACCEPT WS-MOSTRA FROM DAY YYYYDDD                          YYYYDIA-ATUAL-DO-ANO
      *       DISPLAY WS-MOSTRA

             ACCEPT WS-MOSTRA FROM TIME                                 HHMMSSMS
             DISPLAY WS-MOSTRA



            STOP RUN.
       END PROGRAM PROGCOMM.
