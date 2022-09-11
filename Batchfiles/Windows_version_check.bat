@echo off
setlocal
for /f "tokens=4-5 delims=. " %%i in ('ver') do set VERSION=%%i.%%j
if "%version%" == "10.0.2" echo WINDOWS 11
if "%version%" == "10.0" echo WINDOWS 10
if "%version%" == "6.3" echo WINDOWS 8.1
if "%version%" == "6.2" echo WINDOWS 8.
if "%version%" == "6.1" echo WINDOWS 7.
if "%version%" == "6.0" echo WINDOWS Vista.
rem etc etc
endlocal
pause