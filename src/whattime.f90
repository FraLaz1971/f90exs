PROGRAM WHATTIME
    IMPLICIT NONE
    INTEGER :: h,m
    PRINT *,'What time is it?'
    PRINT *,'Please enter it in the form hh, mm '
    READ (*,100) h,m
    WRITE (*,*) 'Ok. Thank you. It''s '
    WRITE (*,110) h,m
    100 FORMAT (I2,1X,I2)
    110 FORMAT (I2,':',I2)
END PROGRAM
! Write a program that asks for the time in the form hh, mm and then prints that time
! as a message in the following form:
! The time is mm minutes after hh
