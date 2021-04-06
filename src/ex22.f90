PROGRAM exercise22
    IMPLICIT NONE
    REAL :: number
    ! This program contained a number of errors &
    ! was not a good example of Fortran 90 at all ! (I fixed it !)
    PRINT *, 'This',&
             ' is a silly',& ! Trailing
             ' program'      ! comments !
    PRINT *, 'Type a number'
    READ *, number
    PRINT *, 'Thank you.' , 'Your number was', number
END PROGRAM
