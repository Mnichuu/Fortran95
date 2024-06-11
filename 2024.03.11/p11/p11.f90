program p11
	implicit none
	real :: suma, a_j
	real, parameter :: epsilon= 1.0E-40
	
	print *, epsilon
	a_j=.99999
	suma=0.0
	
	DO
		a_j=a_j*a_j
		suma=suma+a_j
		print *,a_j
		IF(a_j < epsilon) exit
	END DO
	
	print *, "suma =",suma
stop
end program p11
