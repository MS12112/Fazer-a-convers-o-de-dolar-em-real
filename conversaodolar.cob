
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG4.
      *======================================
      *== AUTOR: MATHEUS          EMPRESA: X
      *== OBJETIVO: Conversão do Dolar para Real
      *== DATA = 07/02/2025
      *== OBSERVAÇOES:
      *======================================

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       77 WRK-DOLLAR          PIC 9(06)V99    VALUE 5,60.
       77 WRK-QNT-DLR         PIC 9(06)V99    VALUE ZEROS.
       77 WRK-RESULTADO       PIC S9(06)V99   VALUE ZEROS.
       77 WRK-RESULT-ED       PIC -ZZZZZ9,99  VALUE ZEROS.
       77 WRK-QNT-DLR-ED      PIC -ZZZZZ9,99  VALUE ZEROS.

       PROCEDURE DIVISION.

       0100-RECEBE                  SECTION.
           DISPLAY "Digite a quantidade:"   ACCEPT WRK-QNT-DLR
           COMPUTE WRK-RESULTADO = WRK-QNT-DLR * WRK-DOLLAR
           MOVE WRK-QNT-DLR TO WRK-QNT-DLR-ED
           MOVE WRK-RESULTADO TO WRK-RESULT-ED.

       0200-MOSTRA                  SECTION.

           DISPLAY "Conversao de: " WRK-QNT-DLR-ED " = " WRK-RESULT-ED.

       0300-FINALIZAR               SECTION.
           STOP RUN.



       END PROGRAM PROG4.
