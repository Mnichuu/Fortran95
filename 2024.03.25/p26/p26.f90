program p26
	implicit none
	real :: maximal, minimal, il_skal
	integer, dimension(2,3) :: matrix_A
	integer, dimension(3,2) :: matrix_B
	integer, dimension(2,2) :: matrix_AB
	
	integer, dimension(3) :: vector_C
	integer, dimension(3) :: vector_D
	integer, dimension(6) :: vector_E
	
	integer, dimension(1:2) :: indeksy
	
	matrix_A(1,1)=1; matrix_A(1,2)=2; matrix_A(1,3)=3
	matrix_A(2,1)=4
	matrix_A(2,2)=5
	matrix_A(2,3)=6
	
	maximal = MAXVAL(matrix_A)
	indeksy = MAXLOC(matrix_A)
	print *, "max matrix_A(", indeksy(1),",", indeksy(2),") ", maximal
	
	minimal = MINVAL(matrix_A)
	indeksy = MINLOC(matrix_A)
	print *, "min matrix_A(", indeksy(1),",", indeksy(2),") ", minimal
	
	vector_E=PACK(matrix_A, .TRUE.)
	print *
	print *, "vector_E= ",vector_E
	
	vector_C=PACK(matrix_A, matrix_A <= 3)
	vector_D=PACK(matrix_A, matrix_A > 3)
	il_skal = DOT_PRODUCT(vector_C, vector_D)
	print *
	print *, "vector_C= ", vector_C
	print *, "vector_D= ", vector_D
	print *, "iloczyn skalarny vector_C razy vector_D = ", il_skal
stop
end program p26
	
