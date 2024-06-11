module J11M
	implicit none
	public :: Calc
	CONTAINS
		SUBROUTINE Calc(Z, Answer)
			real, intent(in), dimension(:) :: Z
			real, intent(out) :: Answer
			Answer = sum(Z**2)
			return
		end subroutine Calc
end module J11M

PROGRAM p47
	use J11M
	implicit none
	character (len = 79) :: Buffer
	real, dimension(13) :: Z
	real :: Answer
	integer :: N, Eof
	open (unit = 1, file = "p47.txt", status = "old", action = "read", position = "rewind")
	N = 0
	DO
		N = N + 1
		read (unit = 1, fmt = "(a79)", iostat = Eof) Buffer
		IF (EoF /= 0) then
			exit
		else if (Buffer(1:1) == "C") then
			write(unit = *, fmt = *) Buffer(2:)
		else if (Buffer(1:1) == "") then
			read(unit = Buffer, fmt = "(tr1, 13 f6.3)") Z
			write (unit = *, fmt = *) Answer
		else
			write (unit = *, fmt = *) "Column 1 is not blank or C at record number ", N
		END IF
	END DO
	stop
END PROGRAM p47
