      ! compile with: gfortran chingoon.f -o chingoon

      PROGRAM CHINGOON
        ! setup face component constants
        CHARACTER(len=11), PARAMETER :: TOP   = ' __________'
        CHARACTER(len=12), PARAMETER :: EYES  = '(--[ .]-[ .]'
        CHARACTER(len=12), PARAMETER :: FATTY = '(       O  )'
        CHARACTER(len=12), PARAMETER :: SLIM  = '(_______O__)'
        CHARACTER(len=12), PARAMETER :: FAT   = '(          )'
        CHARACTER(len=12), PARAMETER :: CHIN  = '(__________)'

        INTEGER :: chins = 0
        CHARACTER(len=32) :: arg

        ! read chin count arg if there is one
        IF (iargc() > 0) THEN
          CALL GETARG(1, arg)
          READ (arg,*) chins
        END IF

        ! disallow negacins
        IF (chins < 0) THEN
          WRITE(0,*) "Can't have a negachin"
          RETURN
        END IF

        ! begin common face printing
        WRITE (*,*) TOP
        WRITE (*,*) EYES

        ! slim goon
        IF (chins == 0) THEN
          WRITE(*,*) SLIM
          RETURN
        END IF

        ! fat goon
        WRITE(*,*) FATTY
        DO WHILE (chins > 1)
          WRITE(*,*) FAT
          chins = chins - 1
        END DO
        WRITE(*,*) CHIN

      END PROGRAM CHINGOON
