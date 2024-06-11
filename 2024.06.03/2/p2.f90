PROGRAM p2
	implicit none
	real :: a, b, c
	real :: delta, x1, x2

	print *, 'Podaj współczynnik a:'
	read(*,*) a
	print *, 'Podaj współczynnik b:'
	read(*,*) b
	print *, 'Podaj współczynnik c:'
	read(*,*) c

	IF (a == 0.0) THEN
		print *, 'To nie jest równanie kwadratowe. Współczynnik a musi być różny od 0!'
		stop
	END IF

	delta = b**2 - 4.0 * a * c

	IF (delta > 0.0) THEN
		x1 = (-b + sqrt(delta)) / (2.0 * a)
		x2 = (-b - sqrt(delta)) / (2.0 * a)
		print *, 'Pierwiastki rzeczywiste:'
		print *, 'x1 = ', x1
		print *, 'x2 = ', x2
	ELSE IF (delta == 0.0) THEN
		x1 = -b / (2.0 * a)
		print *, 'Podwójny pierwiastek rzeczywisty:'
		print *, 'x = ', x1
	ELSE
		print *, 'Brak rzeczywistych pierwiastków.'
	END IF
END PROGRAM p2
