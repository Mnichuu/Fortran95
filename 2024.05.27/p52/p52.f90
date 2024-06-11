Module Universal_Constants
	implicit none
	real, parameter :: pi=3.1415926536
end module Universal_Constants

real function trig_fun_degrees(trig_fun, degrees, minutes, seconds)
	use Universal_Constants
	implicit none

	real, external :: trig_fun
	integer, intent(in) :: degrees, minutes, seconds
	real :: angle

	angle = (degrees + minutes/60.0 + seconds/3600.0)*pi/180.0

end function trig_fun_degrees

PROGRAM test_for_trig_fun_degrees
	implicit none
	real, intrinsic :: sin, cos, tan
	real, external :: trig_fun_degrees
	integer :: degs, mins, secs
	character :: answer
	
	DO
		print *, "Please give an angle in degrees, minutes and seconds"
		print *, "without any fractional parts"
		print *, "Degrees"
		read *, degs
		print *, "Minutes (0-59)"
		read *, mins
		print *, "Seconds (0-59)"
		read *, secs
		
		print *, "Its sine is ", trig_fun_degrees(SIN, degs, mins, secs)
		print *, "Its cosine is ", trig_fun_degrees(COS, degs, mins, secs)
		print *, "Its tangent is ", trig_fun_degrees(TAN, degs, mins, secs)
		
		print *, "Another one? (Y/N)"
		read *, answer
		
		IF (answer/="Y" .OR. answer/="y") EXIT
	END DO
END PROGRAM test_for_trig_fun_degrees
