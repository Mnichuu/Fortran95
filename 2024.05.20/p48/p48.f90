MODULE parametry_opcjonalne
	implicit none
	public :: Options
	CONTAINS
		SUBROUTINE Options(str1, str2)
			character (len = *), intent(in), optional :: str1, str2
			integer :: l1, l2
			write(unit = *, fmt = *) "================================================"
			IF (present(str1)) THEN
				l1 = len(str1)
				write (unit =*,fmt=*)" 1: ", str1
			else
				l1 = -1
			END IF
			IF(present(str2)) THEN
				l2 = len(str2)
				write (unit = *, fmt = *) " 2: ", str2
			else
				l2 = -1
			END IF
			write (unit = *, fmt = *) "Lengths: ", l1, l2
			return
		END SUBROUTINE
END MODULE parametry_opcjonalne

PROGRAM p48
	use parametry_opcjonalne
	implicit none
	CALL Options()
	CALL Options("pierwszy_parametr", "drugi_parametr")
	CALL Options("pierwszy_parametr")
	CALL Options(str1="333")
	CALL Options(str2="4444")
	CALL Options(str1="55555", str2="666666")
	CALL Options(str1="")
	CALL Options(str2="")
	CALL Options(str2="drugi", str1="pierwszy")
	stop
END PROGRAM p48
