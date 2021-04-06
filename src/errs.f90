! exercise 2.3 pag 52 Ellis,Philips,1995,Lahey Fortran 90
PROGRAM errors
    ! This program contains four major errors ,
    !, and three examples of bad programming style
    PRINT *,'Please type a(n integer) number'
    READ (*,*) number
    PRINT *,'The number you typed was ', number
END
! err1:line 3 --> no comment mark
! err2:line 4 --> dot instead than *
! err3:line 4 --> no quote around the string
! err4:line 6 --> bad input descriptor and format
! bad1: inplicit typing for int is used
