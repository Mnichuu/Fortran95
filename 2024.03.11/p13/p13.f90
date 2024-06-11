program p13
	implicit none
	integer, parameter :: st=8
	integer :: r,s
	logical, dimension(10,10) :: k1,k2
	logical, dimension(11:20,11:20) :: m
	complex, dimension(1:10, 2+ST) :: z,c
	character(len=10), dimension(1:3) :: napisy
	
	DO r=1,10
		DO s=1,10
			IF (r==s) THEN
				K1(r,s)=.TRUE.
			ELSE
				K1(r,s)=.FALSE.
			END IF
		END DO
	END DO
	
	k2=k1
	m=k2
	
	print *, m
	print *
	DO s=11,20
		print *, (m(s,r),r=11,20,1)
	END DO
stop
end program p13
