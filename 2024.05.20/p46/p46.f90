MODULE zawiera_funkcje_rekursywna
	implicit none
	public :: Euclid
	CONTAINS 
		recursive function Euclid(i1,i2) result(gcd)
			integer, intent(in) :: i1, i2
			integer:: gcd
			integer:: remainder
			remainder = MOD(i1,i2)
			
			IF(remainder == 0) then
				gcd = i2
				return
			else
				gcd = Euclid(i2, remainder)
			END IF
			
			write(*, fmt=897) i1, i2, remainder, gcd
			897 FORMAT('reszta z dzielenia liczby =', I6, 2X, 'przez liczbe =', I4, 2X, 'daje reszte =', I4, 2X, 'RESULT =', I4)
			return
		end function Euclid
END MODULE zawiera_funkcje_rekursywna

PROGRAM p46
	use zawiera_funkcje_rekursywna
	implicit none
	integer :: p,q
	print *, 'wprowadz liczbe naturnalna do dzielenia "p"'
	read(unit=*,fmt=*)p
	print *, 'wprowadz dzielnik "q"'
	read(unit=*,fmt=*)q
	print *, Euclid(p,q), 'to najwiekszy wspolny podzielnik zwracany przez $Euclid(p,q)'
	stop
END PROGRAM p46
