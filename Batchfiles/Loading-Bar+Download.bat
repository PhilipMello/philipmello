@echo off
title Loading Bar...

>nul chcp 65001
setlocal enabledelayedexpansion

set "_spc=                    "
set "_bar=■■■■■■■■■■■■■■■■■■■■"
set "_msg= Downloading... : WinRar "
set "_down=curl -s https://www.rarlab.com/rar/winrar-x64-611br.exe --output winrar-x64-611br.exe"
<con: color 27 & mode 100,4 & echo\

START /B %_down%
for /f %%a in ('copy/Z "%~dpf0" nul')do for /f skip^=4 %%b in ('echo;prompt;$H^|cmd')do set "BS=%%b" & set "CR=%%a"
for /l %%L in (1 1 20)do <con: set/p "'=!CR!!BS!!CR![!_bar:~0,%%~L!!BS!!_spc:~%%L!]!_msg!"<nul & >nul timeout.exe 1

echo Downloaded in: %HOMEPATH%\Downloads
pause

endlocal & color & goto :eof