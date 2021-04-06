PROGRAM cent2fahr
    IMPLICIT NONE
!     A program to convert a Centigrade temperature to Fahrenheit
!     Variable declarations
    REAL :: temp_c,temp_f
!     Ask for Centigrade temperature
    PRINT *, 'What is the Centigrade temperature?'
    READ *,temp_c
!     Convert it to Fahrenheit
    temp_f = 9.0*temp_c/5.0 + 32.0
!     Print both temperatures
    PRINT 202, temp_c, temp_f 
    202 FORMAT (F6.2,' C Deg. = ',F6.2,' F Deg.')
END PROGRAM
