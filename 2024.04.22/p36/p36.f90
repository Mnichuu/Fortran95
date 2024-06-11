MODULE nasze_zmienne
	implicit none
	real :: rank, x, y
END MODULE nasze_zmienne

PROGRAM p36
	use nasze_zmienne
	
	interface
		subroutine root()
			use nasze_zmienne
		end subroutine root
	end interface
	
	x= 1048576; rank=20
	call root()
	write(*,*) "20-th root of ", x, " equal ", y
	stop
END PROGRAM p36

subroutine root()
	use nasze_zmienne
	y=exp(log(x)/rank)
	return
END SUBROUTINE root
