PROGRAM P26
    IMPLICIT NONE
    REAL :: V1,V2,V3
    PRINT *,'Please enter 3 numbers'
    READ *,V1,V2,V3
    PRINT *,'you entered', V1, V2, V3
END PROGRAM
! Write a program that expects three numbers to be entered, but only uses one READ
!statement, and then prints them out so that you can check that they have been input
!correctly.
!When typing in the numbers at the keyboard try typing them all~9n one line
!(a) separated by spaces
!(b) separated by commas
!(c) separated by semicolons"
!(d) separated by / " --> this won't work for the numbers after the /
!Then run the program again, but type each of the three numbers on a separate line,
!followed by RETURN (or ENTER).
!This exercise should help you to appreciate how a Fortran program expects input
!to a list of variables.
