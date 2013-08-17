      ! compile with: gfortran chingoon.f -o chingoon
      PROGRAM CHINGOON
        INTEGER :: chins = 0
        CHARACTER(len=32) :: arg

        IF (iargc() > 0) THEN
          CALL GETARG(1, arg)
          READ (arg,*) chins
        END IF

        WRITE (*,*) " __________"
        WRITE (*,*) "(--[ .]-[ .]"

        IF (chins > 0) THEN
          WRITE(*,*) "(       O  )"
          DO i = 1, chins
            WRITE(*,*) "(          )"
          END DO
          WRITE(*,*) "(__________)"
        ELSE
          WRITE(*,*) "(_______O__)"
        END IF
      END PROGRAM CHINGOON
