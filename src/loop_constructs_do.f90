program loop_constructs_do
    implicit none

    integer :: i

    do i = 1, 10
        print *, i
    end do

    do i = 1, 10, 2
        print *, i ! Print odd numbers
    end do
end program