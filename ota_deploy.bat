@echo off
setlocal enabledelayedexpansion

set arg1=Not Provided

:parse
if "%~1"=="" goto finish
set name=%~1
set value=%~2

set name=%name:~2%

echo %name%
echo %value%

if "%name%"=="arg1" (
    set arg1=%value%
    shift
    shift
    goto parse
)

shift
goto parse

:finish
if "%arg1%"=="Not Provided" echo Warning: arg1 is missing.

echo %arg1% > %userprofile%\desktop\allxonOTA.txt

echo Data has been saved to User Desktop