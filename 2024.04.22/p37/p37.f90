MODULE zawiera_funkcje_large
	implicit none
	public :: large
	
	contains
		function large(list, k) result(large_R)
			integer,intent(in),dimension(:) :: list
			integer,intent(in) :: k
			integer :: large_R
			
			if (any(list<=k)) then
				large_R = maxval(list, mask=(list<=k))
			else
				large_R=k
			end if
			return
		end function large
END MODULE zawiera_funkcje_large

PROGRAM p37
	use zawiera_funkcje_large
	implicit none
	integer :: n,k
	integer, allocatable, dimension(:) :: list
	
	DO
		print *, 'podaj rozmiar macierzy "list" '
		read(unit=*,fmt=*) n
		
		if (n<=0) then
			exit
		end if
		allocate(list(n))
		
		print *, "podaj wartosci n-elementowej macierzy oddzielając spacjami lub nowej lini"
		read(unit=*,fmt=*) list
		
		print *, "podaj liczbe 'k'"
		read(unit=*,fmt=*) k
		
		print *, "najwiekszy element macierzy ""list"" sposrod mniejszych od liczby ""k"" "
		write(unit=*,fmt=*) large (list,k)
		deallocate(list)
	END DO
	stop
END PROGRAM p37
