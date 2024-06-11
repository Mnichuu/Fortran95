PROGRAM p49
	implicit none
	integer, allocatable, dimension(:) :: matrix
	integer :: rozmiar,ptr,j
	
	print *, "Podaj gorna granice przeszukiwanego zakresu"
	read *, rozmiar
	print *, "Poszukiwanie liczb pierwszych w zakresie 0: ", rozmiar
	allocate(matrix(rozmiar))
	matrix = 1
	
	ptr = 2
	
	DO
		IF(ptr>rozmiar) exit
		IF(matrix(ptr)==1) then
			j = ptr
			DO
				j = j + ptr
				IF(j>rozmiar) exit
				matrix(j) = 0
			END DO
		END IF
		ptr = ptr + 1
	END DO
	
	print *, "Liczby pierwsze:"
	DO j=2, rozmiar
		IF(matrix(j)==1) print *, j
	END DO
END PROGRAM p49
