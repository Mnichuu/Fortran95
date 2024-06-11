MODULE zawiera_procedure_Norm
	implicit none
	public :: Norm
	CONTAINS
	subroutine Norm(v, total, flag)
		real, dimension(:), intent(in) :: v
		real, intent(out) :: total
		logical, intent(out) :: flag
		
		total = sqrt(sum(v*v))
		flag = (total>=1.0E5)
		return
	end subroutine
END MODULE zawiera_procedure_Norm

PROGRAM p38
	use zawiera_procedure_Norm
	implicit none
	real, dimension(6), parameter :: &
	v = (/10.0, 200.0, 3000.0, 40000.0, 500000.0, 6000000.0/)
	real :: total; logical :: flag
	
	write(unit=*,fmt="('wartosci macierzy v ', 6(E10.3, 5X))" ) v
	write(unit=*,fmt="('wartosci macierzy v ', 6(E10.1, 5X))" ) v
	write(unit=*,fmt="('wartosci macierzy v ', 6(ES10.2, 5X))" ) v
	write(unit=*,fmt="('wartosci macierzy v ', 6(EN12.4, 5X))" ) v
	
	call Norm(v, total, flag)
	write(unit=*,fmt=77) total, flag
	77 format("total, flag =", EN10.3, 2X, L3)
	
	GOTO 99999
		print *, "tego wydruku nie zobaczysz"
	99999 CONTINUE
	
	if (flag.EQV..TRUE.) GOTO 99998
		print *, "tego wydruku tez nie zobaczysz"
	99998 CONTINUE
	
	stop
END PROGRAM p38
