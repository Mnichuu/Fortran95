PROGRAM p50
	implicit none
	integer, dimension(1:10) :: inputdata
	integer :: i,j,k
	
	open(11, file="wejsciowe.txt", status="old", action="read", position="rewind")
	DO j=1, 10, 1
		read(11, *) k
		inputdata(j) = k
	END DO
	
	call sort(inputdata, 10)
	
	open(12, file="wyjsciowe.txt", status="new", action="write", position="append")
	DO j=1, 10, 1
		write(12, *) inputdata(j)
	END DO
	
	contains
	
	integer function minfind(x, start, end)
		implicit none
		integer, dimension(1:), intent(in) :: x
		integer, intent(in) :: start, end
		integer :: minimum
		integer :: location
		integer :: i
		
		minimum = x(start)
		location = start
		DO i = start + 1, end
			IF (x(i)<minimum) then
				minimum = x(i)
				location = i
			END IF
		END DO
		minfind = location
	end function minfind
	
	subroutine swap(a, b)
		implicit none
		integer, intent(inout) :: a, b
		integer :: temp
		
		temp = a
		a = b
		b = temp
	end subroutine swap
	
	subroutine sort (x, size)
		implicit none
		integer, dimension(1:), intent(inout) :: x
		integer, intent(in) :: size
		integer :: i
		integer :: location
		
		DO i =1, size-1
			location = minfind(x, i, size)
			call swap(x(i), x(location))
		END DO
	end subroutine sort
END PROGRAM p50	
	
