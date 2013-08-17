       IDENTIFICATION DIVISION.
       PROGRAM-ID. chingoon.
       AUTHOR. mroach.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
      *****************************************************************
      *    Storage of goon face parts using 11 and 12-char strings
      *
       01  FACE-PARTS.
             05 TOP_HEAD pic x(11) VALUE ' __________'.
             05 EYES     pic x(12) VALUE '(--[ .]-[ .]'.
             05 FATTY    pic x(12) VALUE '(       O  )'.
             05 SLIM     pic x(12) VALUE '(_______O__)'.
             05 FAT      pic x(12) VALUE '(          )'.
             05 CHIN     pic x(12) VALUE '(__________)'.
      *****************************************************************
      *    Storage of the requested chin count as a two-byte integer
      *
       01  CHINS PIC S9(2).
       PROCEDURE DIVISION.
      *> Grab chin count from the first argument
           ACCEPT CHINS FROM ARGUMENT-VALUE END-ACCEPT.

      *> All goon types have a head
           PERFORM SHOW-TOP
      *> Show the fatty or slim body
           IF CHINS > 0
               PERFORM SHOW-FATTY
           ELSE
               PERFORM SHOW-SLIM
           END-IF
      *> Terminate
           STOP RUN.

       SHOW-TOP.
           DISPLAY TOP_HEAD
           DISPLAY EYES
           EXIT.
       SHOW-SLIM.
           DISPLAY SLIM
           EXIT.
       SHOW-FATTY.
           DISPLAY FATTY
           PERFORM CHINS TIMES
               DISPLAY FAT
           END-PERFORM
           DISPLAY CHIN
           EXIT.
