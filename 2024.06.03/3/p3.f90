module module_samogloski
implicit none
contains
	subroutine liczba_samoglosek(slowo, n_samoglosek)
		character(len=*), intent(in) :: slowo
		integer, intent(out) :: n_samoglosek
		integer :: i, dlugosc
		character :: znak

		n_samoglosek = 0
		dlugosc = len_trim(slowo)

		do i = 1, dlugosc
			znak = slowo(i:i)
			select case (znak)
			case ('a', 'e', 'i', 'o', 'u', 'y', 'A', 'E', 'I', 'O', 'U', 'Y')
				n_samoglosek = n_samoglosek + 1
			case default
				! Nic nie rob
			end select
		end do
	end subroutine liczba_samoglosek
end module module_samogloski

PROGRAM p3
	use module_samogloski
	implicit none
	character(len=100) :: slowo
	integer :: n_samoglosek, dlugosc_slowo
	character(len=20) :: slowo_plik

	slowo_plik = 'slowo.txt'

	open(unit=10, file=slowo_plik, status='old', action='read')

	read(10, '(A)') slowo

	close(10)

	dlugosc_slowo = len_trim(slowo)
	print *, 'Długość wczytanego słowa:', dlugosc_slowo

	call liczba_samoglosek(slowo, n_samoglosek)

	print *, 'Liczba samogłosek w słowie "', trim(slowo), '":', n_samoglosek
END PROGRAM p3
