PROGRAM finaltest
    ! This program contains several errors
    IMPLICIT NONE
    REAL:: var1,var2,var3,var4
    PRINT *,'Please type four numbers &
           separated by commas'
    READ *,var1,var2,var3,var4
    ! Now print the numbers to check that they were
    ! input correctly
    PRINT *,'The numbers you typed were:'
    PRINT *,var1,var2,var3,var4
    PRINT *,'That''s all for now. ' ,&
            'How many errors did you find?'
END PROGRAM finaltest
