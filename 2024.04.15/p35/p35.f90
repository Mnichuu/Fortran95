PROGRAM p35
	implicit none
	real :: a,b,c,d,e,f
	interface
		SUBROUTINE root(rank,x,y)
			implicit none
			real, intent(in) :: rank, x
			real, intent(out) :: y
		END SUBROUTINE
	end interface
	
	a=27; call root(3.,a,b); write(*,*) "cube root of ", a, " is equal ", b
	c=16; call root(4.,c,d); write(*,*) "4-th root of ", c, " is equal ", d
	e=1024; call root(10.,e,f); write(*,*) "10-th root of ", e, " is equal ", f
	stop
END PROGRAM p35

SUBROUTINE root(rank,x,y)
	implicit none
	real, intent(in) :: rank, x
	real, intent(out) :: y
	y=exp(log(x)/rank)
	return
END SUBROUTINE root
