@echo off
title MegaTools v1.1
color 1F
mode con: cols=75 lines=35
 :Start2 
    cls
    goto Start
    :Start
	@echo off
	setlocal
	for /f "tokens=4-5 delims=. " %%i in ('ver') do set VERSION=%%i.%%j
	if "%version%" == "10.0" echo WINDOWS 10
	if "%version%" == "6.3" echo WINDOWS 8.1
	if "%version%" == "6.2" echo WINDOWS 8.
	if "%version%" == "6.1" echo WINDOWS 7.
	if "%version%" == "6.0" echo WINDOWS Vista.
	rem etc etc
	endlocal
    echo ----------------------------------------------------------
    echo	Bem-Vindo ao MyBackup - By: Philip Mello - Roma Mobili    
    echo -------------------------v1.1-----------------------------           
    echo Escolha uma opcao abaixo:
	echo -------------------------------------------------------
    echo	[1] Realizar Backup Basico do usuario:   %username%
	echo	[2] Realizar Backup Completo do usuario: %username%     
    echo -------------------------------------------------------  
	echo [3] Programar Desligando do PC   
  
    set /a one=1
    set /a two=2
    set /a three=3
	set input=
	
	set "_shutdownschedule=shutdown -s -t (%timeschedule% * 60) * 60"
	set "_downloadsfolder=%HOMEPATH%\Downloads"
	
	set /p input= Digite uma opcao:
    if %input% equ %one% goto backupuserbasic if NOT goto Start2
	if %input% equ %two% goto backupuserfull if NOT goto Start2
	if %input% equ %three% goto shutdownschedule if NOT goto Start2
	
	:backupuserbasic
	echo Backup Basico do Usuario
	set /p drive=Digite a letra do Pen Drive ou HD Externo:
	set backupcmd=xcopy /s /c /d /e /h /i /r /y
	setlocal enableextensions
	set datebackup=%DATE:/=_%
	echo Realizando backup do usuario...
	for %%D in (
  	"Desktop"
  	"Pictures"
  	"Downloads"
  	"Videos"
	) do %backupcmd% "%USERPROFILE%"\"%%D" "%drive%:\Backup-"%datebackup%""
	color 17
	pause
	exit
	
	:backupuserfull
	echo Backup Completo do Usuario
	set /p drive=Digite a letra do Pen Drive ou HD Externo:
	set backupcmd=xcopy /s /c /d /e /h /i /r /y
	setlocal enableextensions
	set datebackup=%DATE:/=_%
	echo Realizando backup do usuario...
	%backupcmd% "%USERPROFILE%" "%drive%:\Backup-"%datebackup%""
	color 17
	pause
	exit
	
	:shutdownschedule
	set /p times=Digite em quantas horas o PC deve ser desligado:
	set /a hour=(%times% * 60) * 60
	shutdown -s -t %hour%
	color 47
	echo Programando desligando do PC
	pause
	exit

	
	