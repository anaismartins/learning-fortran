program loop_control_statements_exit_and_cycle
    implicit none

    integer :: i

    do i = 1, 100
        if (i > 10) then
            exit ! Stop printing numbers
        end if
        print *, i
    end do
    ! Here i = 11

    do i = 1, 10
        if (mod(i, 2) == 0) then ! mod is the modulo operator
            cycle ! Skip even numbers
        end if
        print *, i
    end do
end program