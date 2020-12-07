! Advent of Code 2020
! Day 1. Report Repair
! Lekro, 2020-12-07.

program report
    ! this is a comment
    implicit none

    integer :: iostatus
    integer :: numbers(1000)
    integer :: i, j, k, nelem

    i = 1

    do
        read(*, *, iostat=iostatus) numbers(i)
        if (iostatus < 0) then ! eof
            exit
        end if
        i = i + 1
    end do

    nelem = i - 1

    do i = 1, nelem
        do j = i+1, nelem
            if (numbers(i) + numbers(j) == 2020) then ! yay
                print *, "part 1:", numbers(i) * numbers(j)
            end if
        end do
    end do

    do i = 1, nelem
        do j = i+1, nelem
            do k = j+1, nelem
                if (numbers(i) + numbers(j) + numbers(k) == 2020) then ! yay
                    print *, "part 2:", numbers(i) * numbers(j) * numbers(k)
                end if
            end do
        end do
    end do

end program
