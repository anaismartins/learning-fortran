program conditional_construct_if
    implicit none

    real :: angle

    print *, "Please enter an angle: "
    read(*,*) angle

    if (angle < 90.0) then
        print *, 'Angle is acute'
    else if (angle < 180.0) then
        print *, 'Angle is obtuse'
    else
        print *, 'Angle is reflex'
    end if 
end program