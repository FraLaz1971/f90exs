	PROGRAM main
	 IMPLICIT NONE

	 INTEGER :: A = 123456789
	 REAL    :: F = 123.456789
	 double precision :: D = 123.456789123456789D0

	 print *, "======== Using PRINT format string ========"

	 print '(I4, X, F7.2, X, E30.19)', A, F, D
	 print '(I10, X, F7.2, X, E30.19)', A, F, D

	 print *, "======== Using WRITE format string ========"
	 write (*,'(I10, X, F7.2, X, E30.19)')  A, F, D

	END
