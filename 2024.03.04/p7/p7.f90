PROGRAM p7
IMPLICIT NONE
CHARACTER (LEN=16) :: a,b,c,d

a="a kindly gigant"
b="a small man"
c=b(:8)//"step" !połącz pierwsze 8 znaków ze zmiennej b ze słowem "step" i wstaw do c
d="for a"//b(8:) !połącz "for a" ze znakami 8-16 zmiennej b i wstaw do d

PRINT *, c, d

b=" "//d(:4)//b(9:11)//a(3:6)
a=a(:2)//a(10:15)//"leap"

PRINT *,a,b

PRINT *, "your first name"
READ *,a
PRINT *, "your last name"
READ *,b
PRINT *,a,b,"student"
PRINT *, trim(a), " ", trim(b), " student"

END PROGRAM p7
