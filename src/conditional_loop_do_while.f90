program conditional_loop_do_while
    implicit none

    integer :: i

    i = 1
    do while (i < 11)
        print *, i
        i = i + 1
    end do
    ! Here i = 11
end program