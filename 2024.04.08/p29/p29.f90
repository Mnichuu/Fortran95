PROGRAM p29
	implicit none
	type:: point; real:: x,y; end type point
	type:: line; real:: a,b,c; end type line
	type(point):: p1,p2; type(line):: p1_to_p2
	
	write(*,*) "please enter x1 and y1"; read (*,*)p1
	write(*,*) "please enter x2 and y2"; read (*,*)p2
	
	p1_to_p2%a=p2%y-p1%y
	p1_to_p2%b=p1%x-p2%x
	p1_to_p2%c=p1%y*p2%x - p2%y*p1%x
	
	write(*,*) "ax + by + c = 0"; write(*,*) "a=", p1_to_p2%a
	write(*,*) "b=", p1_to_p2%b; write(*,*) "c=", p1_to_p2%c;
	
	STOP
END PROGRAM p29
