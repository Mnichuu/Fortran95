PROGRAM p6
	implicit none
	real(4) :: x, dx, f1, f2
	integer :: i, n

	real(4), parameter :: x_start = -3.0_4, x_end = 4.0_4
	real(4), parameter :: krok = 0.001_4

	n = int((x_end - x_start) / krok)
	x = x_start

	DO i = 1, n
		f1 = f(x)
		f2 = f(x + krok)
		IF (f1 * f2 <= 0.0_8) THEN
			print *, 'Znaleziono miejsce zerowe w przybliżeniu: x = ', x
		END IF
		x = x + krok
	END DO

	contains

	real(4) function f(x)
		real(4), intent(in) :: x
		f = x**3 - 3.0_4*x**2 - 4.0_4*x + 12.0_4
	end function f

END PROGRAM p6

