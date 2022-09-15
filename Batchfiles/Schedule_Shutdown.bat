@echo off
title Schudule Shutdown Computer
set /p input= Type Hours to Shutdown:
set /a hour=(%input% * 60) * 60
shutdown -s -t %hour%
color 47
echo Shutdown in %input% Hours
pause
exit