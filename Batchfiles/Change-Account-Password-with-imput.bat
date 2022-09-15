@echo off
Set "password123="

echo "Please change Administrator password"
set /P password123=Enter your new password: 
If Not Defined password123 goto :exit
net user administrator %password123%
del "%~f0"

:exit
exit