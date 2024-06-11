PROGRAM p30
	implicit none
	real :: a
	double precision :: b; integer :: c; logical :: d; character :: e
	real(kind=SELECTED_REAL_KIND(P=6, R=30)) :: f
	real(kind=SELECTED_REAL_KIND(P=15, R=30)) :: g
	real(kind=SELECTED_REAL_KIND(P=15, R=1000)) :: h
	real(kind=SELECTED_REAL_KIND(P=18, R=1000)) :: i
	real(kind=SELECTED_REAL_KIND(P=18, R=2000)) :: j
	real(kind=SELECTED_REAL_KIND(P=18, R=4000)) :: k
	
	print *, 'TYPE REAL	KIND=', KIND(a)
	print *, 'TYPE DOUBLE PRECISION	KIND=', KIND(b)
	print *, 'TYPE INTEGER	KIND=', KIND(c)
	print *, 'TYPE LOGICAL	KIND=', KIND(d)
	print *, 'TYPE CHARACTER	KIND=', KIND(e)
	print *, 'P=6, R=30	KIND=', KIND(f)
	print *, 'P=15, R=30	KIND=', KIND(g)
	print *, 'P=15, R=1000	KIND=', KIND(h)
	print *, 'P=18, R=1000	KIND=', KIND(i)
	print *, 'P=18, R=2000	KIND=', KIND(j)
	print *, 'P=18, R=4000	KIND=', KIND(k)
END PROGRAM p30
