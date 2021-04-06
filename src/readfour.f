	PROGRAM readfour
	PRINT *,"please, input four real numbers"
	READ *,a,b,c,d
	PRINT *,a,b,c,d
	END
! ./readfour <<< "1.2, 3.456, 7.89, 42.0"
! ./readfour <<< "1.2, 3.456, 7.89 42.0"
! ./readfour <<< "1.2, 3.456 7.89 42.0"
! ./readfour <<< "1.2 3.456 7.89 42.0"
! ./readfour < readfour.dat
