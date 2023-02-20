      ******************************************************************
      * Author: GILDO
      * Date: 20/02/2023
      * Purpose: MOSTRAR NOME E MATERIA
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PARTE-UM-RESULTADO.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       LINKAGE SECTION.
       01 PARAMETRES.
           02 WS-NOME-ALUNO               PIC A(30) VALUE SPACES.
           02 WS-NOME-MATERIA             PIC A(30) VALUE SPACES.
           02 WS-STATUS                   PIC A(09) VALUE SPACES.
       PROCEDURE DIVISION USING PARAMETRES.
       MAIN-PROCEDURE.
            DISPLAY ' '
            DISPLAY '******* RESULTADO DO PROCESSAMENTO *******'
            DISPLAY 'NOME......................: ' WS-NOME-ALUNO
            DISPLAY 'MATERIA...................: ' WS-NOME-MATERIA
            GOBACK.
       END PROGRAM PARTE-UM-RESULTADO.
