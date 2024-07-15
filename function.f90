! function.f90
program function_example
    implicit none
    integer :: param, result
    character(len=10) :: input

    write(*, '(A)', advance='no') "Enter an integer: "
    read(*, '(A)') input
    read(input, *) param

    if (param == 0 .and. input /= "0") then
        write(*, '(A)') "Invalid input"
        stop
    end if

    result = my_function(param)
    write(*, '(I0)') result
end program function_example

function my_function(param) result(res)
    integer, intent(in) :: param
    integer :: res, x, i
    x = param
    x = x + 10
    if (x > 15) then
        x = x - 5
    else
        x = x + 5
    end if
    do i = 0, 2
        x = x + i
    end do
    res = x
end function my_function
