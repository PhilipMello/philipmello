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
    echo	Bem-Vindo ao MegaTools - By: Philip Mello - Roma Mobili    
    echo -------------------------v1.1-----------------------------           
    echo Escolha uma opcao abaixo:
	echo [0] Abrir Sites de Trabalho
    echo [001] Trocar senha do Windows
	echo [002] Mudar placa de Rede para DHCP
	echo [003] Reiniciando Servico de Impressao - Spooler
	echo [004] Programar desligando do PC
	echo [005] Mostrar Chave do Windows
	echo -------------------------------------------------------
    echo	[006] Realizar Backup Basico do usuario:   %username%
	echo	[007] Realizar Backup Completo do usuario: %username%     
    echo -------------------------------------------------------     
    echo [100] Baixar todos os programas
    echo [1] Google Chrome
    echo [2] Google Drive
    echo [3] 7zip
    echo [4] WinRar
    echo [5] PDF XChange Viwer
    echo [6] doPDF
    echo [7] Criar atalho da Planilha A na Area de Trabalho
    echo [8] Criar atalho da Planilha B na Area de Trabalho
    echo [9] Corrigir 2020 Design
    echo [10] Atalho da Pasta de Pedidos 2022
	echo [11] DWG TrueView
	echo [12] Brave
	
    set /a zero=0
	set /a oneoneone=001
	set /a zerozerotwo=002
	set /a zerozerothree=003
	set /a zerozerofour=004
	set /a zerozerofive=005
	set /a zerozerosix=006
	set /a zerozeroseven=007
    set /a apps=100
    set /a one=1
    set /a two=2
    set /a three=3
    set /a four=4
    set /a five=5
    set /a six=6
    set /a seven=7
    set /a eight=8
    set /a nine=9
    set /a ten=10
	set /a eleven=11
	set /a twelve=12
	set /a thirteen=13
	set /a fourteen=14
	set /a fiveteen=15
	set input=
	
	set _msg=Programa baixado em:
	set "_shutdownschedule=shutdown -s -t (%timeschedule% * 60) * 60"
	set "_downloadsfolder=%HOMEPATH%\Downloads"
	set "_brave=curl https://referrals.brave.com/latest/BraveBrowserSetup.exe --progress-bar --output BraveBrowserSetup.exe"
	set "_googlechrome=curl https://dl.google.com/tag/s/appguid%3D%7B8A69D345-D564-463C-AFF1-A69D9E530F96%7D%26iid%3D%7B67878684-E027-F920-8967-0661EB7CE8EF%7D%26lang%3Dpt-BR%26browser%3D4%26usagestats%3D0%26appname%3DGoogle%2520Chrome%26needsadmin%3Dprefers%26ap%3Dx64-stable-statsdef_1%26installdataindex%3Dempty/chrome/install/ChromeStandaloneSetup64.exe --progress-bar --output ChromeStandaloneSetup64.exe"
	set "_googledrive=curl https://dl.google.com/drive-file-stream/GoogleDriveSetup.exe --progress-bar --output GoogleDriveSetup.exe"
	set "_7zip=curl https://d3.7-zip.org/a/7z2201-x64.exe --progress-bar --output 7z2201-x64.exe"
	set "_winrar=curl https://www.rarlab.com/rar/winrar-x64-611br.exe --progress-bar --output winrar-x64-611br.exe"
	set "_pdfxviewer=curl https://downloads.pdf-xchange.com/EditorV9.x64.msi --progress-bar --output EditorV9.x64.msi"
	set "_dopdf=curl https://download.dopdf.com/download/setup/dopdf-full.exe --progress-bar --output dopdf-full.exe"
	set "_dwgtrueviewer=curl https://efulfillment.autodesk.com/NetSWDLD/2023/ACD/EC2FCD9E-AC4D-3E9D-8526-96832A231455/SFX/DWGTrueView_2023_English_64bit_dlm.sfx.exe --progress-bar --output DWGTrueView_2023_English_64bit_dlm.sfx.exe"

	set /p input= Digite uma opcao:
    if %input% equ %zerozeroone% goto changewindowspassword if NOT goto Start2
	if %input% equ %zerozerotwo% goto networkdriver if NOT goto Start2
	if %input% equ %zerozerothree% goto printerspooler if NOT goto Start2
	if %input% equ %zerozerofour% goto shutdownschedule if NOT goto Start2
	if %input% equ %zerozerofive% goto showwindowskey if NOT goto Start2
	if %input% equ %zerozerosix% goto backupuserbasic if NOT goto Start2
	if %input% equ %zerozeroseven% goto backupuserfull if NOT goto Start2
    if %input% equ %zero% goto work if NOT goto Start2
    if %input% equ %apps% goto apps if NOT goto Start2
    if %input% equ %one% goto GoogleChrome if NOT goto Start2
    if %input% equ %two% goto GoogleDrive if NOT goto Start2
    if %input% equ %three% goto zip if NOT goto Start2
    if %input% equ %four% goto WinRAR if NOT goto Start2
    if %input% equ %five% goto PDFX if NOT goto Start2
    if %input% equ %six% goto doPDF if NOT goto Start2
    if %input% equ %seven% goto planilhaA if NOT goto Start2
    if %input% equ %eight% goto planilhaB if NOT goto Start2
    if %input% equ %nine% goto D2020 if NOT goto Start2
    if %input% equ %ten% goto pedidos if NOT goto Start2
    if %input% equ %eleven% goto dwgtrueviewer if NOT goto Start2
	if %input% equ %twelve% goto bravebrowser if NOT goto Start2
	
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
	
	:showwindowskey
	echo Chave do Windows
	set "_windowskey=wmic path softwarelicensingservice get OA3xOriginalProductKey"
	set "_salvewindowskey=%_windowskey% > WindowsKey.txt"
	cd %_downloadsfolder%
	START /B %_salvewindowskey%
	color CF
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
	
	:networkdriver
	echo Atualizando placa de rede...
	netsh interface ip set address "ethernet" dhcp
	ipconfig /release
	TIMEOUT /t 3
	ipconfig /renew
	color 47
	echo Placa de Rede trocada para DHCP
	pause
	exit

	:printerspooler
	echo Reiniciando Spooler da Impressao...
	net stop spooler && net start spooler
	color 74
	echo Spooler reiniciado com sucesso!
	pause
	exit
	
	:changewindowspassword
	set /p password=Digite sua nova senha:
	If NOT Defined password goto Start2
	net user "%USERNAME%" %password%
	color 74
	echo Senha alterada com sucesso!
	pause
	exit
	
	
	:work
	START chrome -new-window --incognito "https://ef.efinance.com.br/(S(0hgw2yrc4nqkfyejkixjc2sl))/default.aspx" "https://google.com" "https://gmail.com/" "https://drive.google.com" "https://docs.google.com/spreadsheets/d/1t2fEfpi4m2Vky8BuSf7jGiAEX-Q6ewe0zHd9fJ42qrs/edit#gid=1265906603&fvid=363540711" "https://docs.google.com/spreadsheets/d/1gBtwcWxDqzeCBCWpMytYiE-j9S2jDaSgw5y1Hr9x-iM/edit?usp=sharing"
	pause
	exit

	:planilhaA
	cls
	set SCRIPT="%TEMP%\%RANDOM%-%RANDOM%-%RANDOM%-%RANDOM%.vbs"
	echo Set oWS = WScript.CreateObject("WScript.Shell") >> %SCRIPT%
	echo sLinkFile = "%USERPROFILE%\Desktop\Plan-A - Controle de Pedidos - Loja.lnk" >> %SCRIPT%
	echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %SCRIPT%
	echo oLink.TargetPath = "https://docs.google.com/spreadsheets/d/1UGtkuZZg8zt4K6fjcYcm0XqaGs81sMraMWCK39Ssu4U/" >> %SCRIPT%
	echo oLink.Save >> %SCRIPT%
	cscript /nologo %SCRIPT%
	del %SCRIPT%
	pause
	exit

	:planilhaB
	set SCRIPT="%TEMP%\%RANDOM%-%RANDOM%-%RANDOM%-%RANDOM%.vbs"
	echo Set oWS = WScript.CreateObject("WScript.Shell") >> %SCRIPT%
	echo sLinkFile = "%USERPROFILE%\Desktop\Plan-B - Controle de Pedidos - Fabrica.lnk" >> %SCRIPT%
	echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %SCRIPT%
	echo oLink.TargetPath = "https://docs.google.com/spreadsheets/d/1t2fEfpi4m2Vky8BuSf7jGiAEX-Q6ewe0zHd9fJ42qrs/" >> %SCRIPT%
	echo oLink.Save >> %SCRIPT%
	cscript /nologo %SCRIPT%
	del %SCRIPT%
	pause
	exit

	:pedidos
	set SCRIPT="%TEMP%\%RANDOM%-%RANDOM%-%RANDOM%-%RANDOM%.vbs"
	echo Set oWS = WScript.CreateObject("WScript.Shell") >> %SCRIPT%
	echo sLinkFile = "%USERPROFILE%\Desktop\Pedidos 2022.lnk" >> %SCRIPT%
	echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %SCRIPT%
	echo oLink.TargetPath = "https://drive.google.com/drive/folders/1TqPgDKCwhG5UyWIepAjDFI-GZUL6zJ0k/" >> %SCRIPT%
	echo oLink.Save >> %SCRIPT%
	cscript /nologo %SCRIPT%
	del %SCRIPT%
	pause
	exit

    :bravebrowser
	cls
	echo Baixando... : Brave
	cd %HOMEPATH%\Downloads && START /B %_brave%
	echo %_msg% %_downloadsfolder%
	color 74
	pause
	exit
	
	:GoogleChrome
    cls
	echo Baixando... : Google Chrome
	cd %HOMEPATH%\Downloads && START /B %_googlechrome%
    echo %_msg% %_downloadsfolder%
	color 74
	pause
	exit
    
    :GoogleDrive
	cls
	echo Baixando... : Google Drive
	cd %HOMEPATH%\Downloads && START /B %_googledrive%
	echo %_msg% %_downloadsfolder%
	pause
	exit

	:zip
	cls
	echo Baixando... : 7Zip x64
	cd %HOMEPATH%\Downloads && START /B %_7zip%
	echo %_msg% %_downloadsfolder%
	set input=
	set /p input= Escolha sua opcao: SIM/NAO:
	set "install=7z2201-x64.exe /S /Q"
	IF %input% equ %sim% install %install% IF NOT exit
	pause
	exit

	:zipinstall
	echo Instalando 7Zzip x64
	7z2201-x64.exe /S
	echo Programa instalado com sucesso!!!
	pause
	exit

	:WinRar
	cls
	echo Baixando... : WinRar
	cd %HOMEPATH%\Downloads && START /B %_winrar%
	echo %_msg% %_downloadsfolder%
	pause
   	exit
	
	:PDFX
	cls
	echo Baixando... : PDF XChange Viewer
	cd %HOMEPATH%\Downloads && START /B %_pdfxviewer%
	echo %_msg% %_downloadsfolder%9
	pause
   	exit

	:doPDF
	cls
	echo Baixando... : doPDF
	cd %HOMEPATH%\Downloads && %_dopdf%
	echo %_msg% %_downloadsfolder%
	pause
   	exit
	
	:dwgtrueviewer
	echo Baixando... :  DWG TrueView
	cd %HOMEPATH%\Downloads && START /B %_dwgtrueviewer%
	echo %_msg% %_downloadsfolder%
	pause
   	exit
	
	:apps
	echo Baixando... : Google Chrome
    cd %HOMEPATH%\Downloads && curl https://dl.google.com/tag/s/appguid%3D%7B8A69D345-D564-463C-AFF1-A69D9E530F96%7D%26iid%3D%7B67878684-E027-F920-8967-0661EB7CE8EF%7D%26lang%3Dpt-BR%26browser%3D4%26usagestats%3D0%26appname%3DGoogle%2520Chrome%26needsadmin%3Dprefers%26ap%3Dx64-stable-statsdef_1%26installdataindex%3Dempty/chrome/install/ChromeStandaloneSetup64.exe --output ChromeStandaloneSetup64.exe
    echo Programa baixado para pasta Downloads : Google Chrome
	echo Baixando... : Google Drive
	cd %HOMEPATH%\Downloads && curl https://dl.google.com/drive-file-stream/GoogleDriveSetup.exe --output GoogleDriveSetup.exe
	echo Programa baixado para pasta Downloads : Google Drive
	echo Baixando... : 7Zip x64
	cd %HOMEPATH%\Downloads && curl https://d3.7-zip.org/a/7z2201-x64.exe --output 7z2201-x64.exe
	echo Programa baixado para pasta Downloads : 7Zip x64
	echo Baixando... : WinRar
	cd %HOMEPATH%\Downloads && curl https://www.rarlab.com/rar/winrar-x64-611br.exe --output winrar-x64-611br.exe
	echo Programa baixado para pasta Downloads : WinRar x64
	echo Baixando... : PDF XChange Viewer
	cd %HOMEPATH%\Downloads && curl https://downloads.pdf-xchange.com/EditorV9.x64.msi --output EditorV9.x64.msi
	echo Programa baixado para pasta Downloads : EditorV9
	echo Baixando... : doPDF
	cd %HOMEPATH%\Downloads && curl https://download.dopdf.com/download/setup/dopdf-full.exe --output dopdf-full.exe 
	echo Programa baixado para pasta Downloads : doPDF
	pause
   	exit

	:D2020
	echo Configurando 2020 Design...
	cd %HOMEPATH%\Downloads
	copy CONFIG_2020_LOJA.reg CONFIG_2020_LOJA_copy.reg
	for /f "delims= " %%a in ('"wmic path win32_useraccount where name='%UserName%' get sid"') do (
   		if not "%%a"=="SID" (          
      		set sidid=%%a
      		goto :loop_end
   					)   
			)

	:loop_end

	set "search=%SIDIDREG"
	set "replace=%sidid%"
	set "textFile=CONFIG_2020_LOJA.reg"

    for /f "delims=" %%i in ('type "%textFile%" ^& break ^> "%textFile%" ') do (
        set "line=%%i"
        setlocal enabledelayedexpansion
        >>"%textFile%" echo(!line:%search%=%replace%!
        endlocal
    )

reg import CONFIG_2020_LOJA.reg
del CONFIG_2020_LOJA.reg
ren CONFIG_2020_LOJA_copy.reg CONFIG_2020_LOJA.reg

echo 2020 Design Reconfigurado com sucesso!
color 74
pause
exit