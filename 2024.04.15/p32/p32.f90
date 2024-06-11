PROGRAM p32
	real :: r(5,5)
	call init_random_seed()
	call random_number(r)
	print *, r
	CONTAINS
		SUBROUTINE init_random_seed()
			integer :: i, n, clock
			integer, dimension(:), allocatable :: seed
			
			call random_seed(size = n)
			print *, "SIZE = ", n
			allocate(seed(n))
			
			
			call system_clock(count = clock)
			print *, "CLOCK = ", clock
			
			seed = clock +37*(/(i-1, i=1, n)/)
			call random_seed(put=seed)
			print *, "SEED = ", seed
			deallocate(seed)
		END SUBROUTINE
END PROGRAM
