MODULE moje_procedury_i_funkcje
	implicit none
	public:: Input, Temp_C, Output
	contains
		subroutine Input(f_temp)
			real, intent(out):: f_temp
			write(unit=*,fmt=*)"Please enter the Fahrenheit temperature: "
			read(unit=*,fmt=*) f_temp
			return
		end subroutine Input
	
		function Temp_C(f_temp) result (temp_c_r)
			real, intent(in) :: f_temp; real :: temp_c_r
			real, parameter :: t_scale = 1.8, offset = 32.0
			temp_c_r = (f_temp - offset) / t_scale
			return
		end function Temp_C
		
		subroutine Output (f_temp,temp_c_r)
		real, intent(in):: f_temp, temp_c_r
		write(unit=*,fmt=*) f_temp, "degrees Fahrenheit", temp_c_r, "degrees Celsius"
		write(unit=*,fmt=*) int(f_temp), "degrees Fahrenheit", int(temp_c_r), "degrees Celsius"
		write(unit=*,fmt=*) nint(f_temp), "degrees Fahrenheit", nint(temp_c_r), "degrees Celsius"
		return
	end subroutine Output
END MODULE moje_procedury_i_funkcje

PROGRAM p40
	use moje_procedury_i_funkcje; implicit none
	real::fahr
	call Input(fahr)
	call Output(fahr, Temp_C(fahr))
	stop
END PROGRAM p40
