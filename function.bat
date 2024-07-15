@echo off
setlocal enabledelayedexpansion

:myFunction
set x=%1
set /a x+=10
if !x! gtr 15 (
    set /a x-=5
) else (
    set /a x+=5
)
for /l %%i in (0,1,2) do (
    set /a x+=%%i
)
exit /b !x!

set /p input="Enter an integer: "
set /a param=%input%

if "%param%" == "0" if not "%input%" == "0" (
    echo Invalid input
    exit /b
)

call :myFunction %param%
echo %errorlevel%
