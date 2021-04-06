PROGRAM test3_1_10
	IMPLICIT NONE
	REAL :: a,b,p,q,r
	INTEGER:: x,Y,z
	a = 2.5
	b = 4.0
	P = a+b
	x = a+b
	q = a*b
	y = a*b
	r = p/q
	z = x/y
	PRINT 100,p,q,r
	PRINT *,x,y,z
	100 FORMAT (F10.2,F10.2,F10.2)
	200 FORMAT (I4,I4,I4)
END PROGRAM test3_1_10
