@echo off
set /p password=Digite sua nova senha:
If NOT Defined password goto start
net user "%USERNAME%" %password%
echo Senha alterada com sucesso!
:exit
pause