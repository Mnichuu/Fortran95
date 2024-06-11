PROGRAM p4
IMPLICIT NONE
REAL :: a,b !liczby rzeczywiste
INTEGER :: c !liczba całkowita
OPEN(UNIT=66, FILE="data_in.txt", STATUS="OLD", ACTION="READ", POSITION="REWIND")
READ(UNIT=66, FMT=*) a,b,c
WRITE(UNIT=*, FMT="(A8, F6.3, T40, A5, ES12.4, A6, I8)") &
"a rowne", a, "b rowne", b, "c=", c
STOP
END PROGRAM p4
