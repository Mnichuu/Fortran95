PROGRAM p1
	implicit none
	integer :: i, liczba, suma_parzyste, suma_nieparzyste
	integer, dimension(15) :: liczby
	character(len=20) :: liczby_plik

	suma_parzyste = 0
	suma_nieparzyste = 0
	liczby_plik = 'liczby.txt'

	open(unit=10, file=liczby_plik, status='old', action='read')

	DO i = 1, 15
		read(10, *) liczby(i)
	END DO

	close(10)

	DO i = 1, 15
		liczba = liczby(i)
		IF (mod(liczba, 2) == 0) then
			suma_parzyste = suma_parzyste + liczba
		ELSE
			suma_nieparzyste = suma_nieparzyste + liczba
		END IF
	END DO

	print *, 'Suma liczb parzystych:', suma_parzyste
	print *, 'Suma liczb nieparzystych:', suma_nieparzyste
END PROGRAM p1
