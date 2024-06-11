program p10
	implicit none
	integer :: i,j,p,q,r,x,n,m 
	
	print *, "start=1, stop=10, increment=1"
	DO i=1,10
		print *, i
	END DO
	print *
	
	print *, "start=20, stop=50, increment=5"
	DO j=20,50,5
		print *, j
	END DO
	print * 
	
	print *, "start=7, stop=19, increment=4"
	DO p=7,19,4
		print *, p
	END DO
	print *
	
	print *, "start=4, stop=5, increment=6"
	DO q=4,5,6
		print *, q
	END DO
	print *
	
	print *, "start=4, stop=5, increment=6"
	DO r=6,5,4
		print *, r
	END DO
	print *
	
	print *, "start=25, stop=0, increment=-5"
	DO x=25,0,-5
		print *, x
	END DO
	print *
	
	print *, "start=20, stop=-20, increment=-6"
	DO m=20,-20,-6
		print *, m
	END DO
	print *
stop
end program p10
