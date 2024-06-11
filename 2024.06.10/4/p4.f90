program p4
	implicit none

	integer(kind=4) :: N1, N2
	integer(kind=8) :: suma

	print *, 'Podaj N1:'
	read(*,*) N1
	print *, 'Podaj N2:'
	read(*,*) N2

	suma = suma_rek(N1, N2)

	print *, 'Suma liczb naturalnych od ', N1, ' do ', N2, ' wynosi ', suma

	contains

	recursive function suma_rek(N1, N2) result(s)
		integer(kind=4), intent(in) :: N1, N2
		integer(kind=8) :: s

		IF (N1 > N2) THEN
			s = 0
		ELSE
			s = N1 + suma_rek(N1 + 1, N2)
		END IF
	end function suma_rek
end program p4

