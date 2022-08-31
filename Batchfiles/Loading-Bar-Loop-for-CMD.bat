@echo off 

>nul chcp 65001 
setlocal enabledelayedexpansion

set "_spc=          "
set "_bar=■■■■■■■■■■" 
set "_msg= Loading bar loop."
<con: color 0A & mode 70,4 & echo\ 

for /f %%a in ('copy/Z "%~dpf0" nul')do for /f skip^=4 %%b in ('echo;prompt;$H^|cmd')do set "BS=%%b" & set "CR=%%a"
for /l %%L in (1 1 10)do <con: set/p "'=!CR!!BS!!CR![!_bar:~0,%%~L!!BS!!_spc:~%%L!]!_msg!"<nul & >nul timeout.exe 1

endlocal & color & goto :eof