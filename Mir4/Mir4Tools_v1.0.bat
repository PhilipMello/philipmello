@echo off
title Mir4Tools v1.0
color 1F
mode con: cols=75 lines=35
 :Start2 
    cls
    goto Start
    :Start
	@echo off
	setlocal
	for /f "tokens=4-5 delims=. " %%i in ('ver') do set VERSION=%%i.%%j
    if "%version%" == "11.0" echo WINDOWS 11
	if "%version%" == "10.0" echo WINDOWS 10
	if "%version%" == "6.3" echo WINDOWS 8.1
	if "%version%" == "6.2" echo WINDOWS 8.
	if "%version%" == "6.1" echo WINDOWS 7.
	if "%version%" == "6.0" echo WINDOWS Vista.
	rem etc etc
	endlocal
    echo ----------------------------------------------------------
    echo	            Welcome to Mir4Tools - By: PHPMASTER    
    echo -------------------------v1.0-----------------------------
    echo                    Welcome %username%
    echo ----------------------------------------------------------
    echo Visit GitHub: https://github.com/PHPMASTERDEV
    echo ----------------------------------------------------------         
    echo Choose Option:
	echo [1] Backup Mir4 Accounts
    echo [2] Schedule Shutdown Computer
	
    set /a one=1
    set /a two=2
	set input=
	
	set _msg=Mir Backup in progress:
    set "_mir4backupfolder=C:%HOMEPATH%\Desktop"
	set "_downloadsfolder=C:%HOMEPATH%\Downloads"
	set "_mir4launcher=bitsadmin.exe /transfer "Downloading Mir4 Launcher" https://live-dl.mir4global.com/global-launcher/Mir4Launcher_Install.exe %_downloadsfolder%\Mir4Launcher_Install.exe"
	set "_mir4account1=copy C:\Wemade\Mir4Global\Mir4Client\MirMobile\SaveData\Saved\SaveGames\AccountLocalSave1.sav C:%HOMEPATH%\Desktop\Mir4_Backup"
	set "_mir4account2=copy C:\Wemade\Mir4Global\Mir4Client\MirMobile\SaveData\Saved\SaveGames\AccountLocalSave2.sav C:%HOMEPATH%\Desktop\Mir4_Backup"

    
	set /p input= Type Option:
    if %input% equ %one% goto mir4backup if NOT goto Start2
    if %input% equ %two% goto shutdownschedule if NOT goto Start2
	
	:mir4backup
    echo Creating Backup to: %_mir4backupfolder%
	mkdir C:%HOMEPATH%\Desktop\Mir4_Backup 
	%_mir4account1% && %_mir4account2%
	TIMEOUT /t 10
    echo Unistalling Mir4 Launcher Old...
    START C:\Wemade\Mir4Global\Uninstall.exe /S /Q
	TIMEOUT /t 10
    rmdir C:\Wemade
    echo Downloading Mir4 Launcher...
    %_mir4launcher%
    TIMEOUT /t 10
    echo Installing Mir4 Launcher...
    START %_downloadsfolder%\Mir4Launcher_Install.exe /S /Q
	TIMEOUT /t 10
	echo Starting Mir4 Launcher...
	START C:\Wemade\Mir4Global\Mir4Launcher\Mir4Launcher.exe
	TIMEOUT /t 10
    echo Restoring Mir4 Accounts backup...
	mkdir C:\Wemade\Mir4Global\Mir4Client\MirMobile\SaveData\Saved\SaveGames\
	copy C:%HOMEPATH%\Desktop\Mir4_Backup\AccountLocalSave1.sav C:\Wemade\Mir4Global\Mir4Client\MirMobile\SaveData\Saved\SaveGames\
    copy C:%HOMEPATH%\Desktop\Mir4_Backup\AccountLocalSave2.sav C:\Wemade\Mir4Global\Mir4Client\MirMobile\SaveData\Saved\SaveGames\
    color 27
	pause
	exit

	:shutdownschedule
	set /p times=Type Hours to Shutdown:
	set /a hour=(%times% * 60) * 60
	shutdown -s -t %hour%
	color 47
	echo Shutting Down in: %hour% hours
	pause
	exit
