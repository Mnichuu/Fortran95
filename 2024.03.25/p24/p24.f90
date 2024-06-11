program p24
	implicit none
	integer :: i,j
	real :: mala, duza, cala, mnoze1, mnoze2
	integer, parameter :: miesiac=12, rok=5
	integer, dimension(miesiac,rok) :: forsa
	DO i=1, miesiac
		DO j=1, rok
			forsa(i,j)=INT(ABS(SIN(REAL(i)))*j) *(-1)**i
		END DO
	END DO
	
	PRINT *, forsa
	WHERE (forsa.LE.0) forsa= -forsa
	WHERE (forsa.EQ.0) forsa= 1
		mala=SUM(forsa, forsa<3)
		duza=SUM(forsa, forsa>=3)
		cala=SUM(forsa)
	PRINT *, 'mala=', mala, ' duza= ', duza, ' cala=', cala
	PRINT *, forsa
	mnoze1=PRODUCT(forsa)
	mnoze2=PRODUCT(forsa, mask=forsa>=3)
	PRINT *, 'mnoze1= ', mnoze1, ' mnoze2=', mnoze2
stop
end program p24
