PROGRAM p31
	implicit none
	integer, parameter :: rdp=SELECTED_REAL_KIND(15)
	real(KIND=rdp) :: x, xx
	integer :: i
	
	DO i=1,5
		call RANDOM_NUMBER(x)
		call RANDOM_NUMBER(xx)
		print *, x, xx
	END DO
	
	call int_random_seed()
	print *
	
	DO i=1,5
		call RANDOM_NUMBER(x)
		call RANDOM_NUMBER(xx)
		print *, x, xx
	END DO
	stop
	contains
	subroutine int_random_seed()
		integer :: i,n,clock
		integer, dimension(:), allocatable :: seed
		
		call RANDOM_SEED(SIZE=n)
		print *, "SIZE = ",n
		ALLOCATE(seed(n))
		call RANDOM_SEED(GET=seed)
		print *, "SEED = ", seed
		call SYSTEM_CLOCK(COUNT=clock)
		print *, "CLOCK = ", clock
		seed = clock + 37 * (/(i-1,i=1,n)/)
		call RANDOM_SEED(PUT=seed)
		print *, "SEED = ", seed
		
		DEALLOCATE(seed)
	end subroutine
END PROGRAM p31

