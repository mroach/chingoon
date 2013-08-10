10 REM i feel like i'm 10 years old again
20 REM I don't have a clue how to handle command line parameters in BASIC,
30 REM so this is interactive.
40 INPUT "Number of Chins?";chins
50 REM I should be checking for an exception but for some reason I don't think
60 REM exception handling exists
70 PRINT " __________"
80 PRINT "(--[ .]-[ .]"
90 IF chins=0 THEN PRINT "(_______O__)" END ELSE PRINT "(       O  )"
150 FOR I=1 TO chins
170 PRINT "(          )"
180 NEXT I
190 PRINT "(__________)"
200 END
