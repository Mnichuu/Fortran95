PROGRAM p5
IMPLICIT NONE
INTEGER :: i,k
DO i = 1,10 !pętla od 1 do 10 z domyślnym krokiem co 1
    DO k=1,12,5 !pętla od 1 do 12 z krokiem co 5
        WRITE(UNIT=*,FMT=*) i,k
    	END DO
END DO
STOP
END PROGRAM p5
