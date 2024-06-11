PROGRAM p5
	implicit none
	real(8) :: kwota, oprocentowanie
	integer :: lata, i

	kwota = 1000.0_8
	oprocentowanie = 0.02_8
	lata = 30

	DO i = 1, lata
		kwota = kwota * (1.0_8 + oprocentowanie)
	END DO

	print *, 'Kwota końcowa lokaty po ', lata, ' latach wynosi ', kwota, ' PLN'

END PROGRAM p5

