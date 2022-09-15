@echo off
mode con: cols=55 lines=12
title Network Checker

REM Server to be pinged
SET server=google.com
REM Size of packet to be send to server (bytes)
SET packetSize=1
REM Network info
SET netSSID=[SSID]
SET netName=[Network Name]
SET netInterface=[Network Interface]
REM Pause time between each network check (seconds)
SET successfulTimeout=10
REM Pause time after reconnection before next check (seconds)
SET failedTimeout=5
REM Write failed network connections to log (Boolean)
SET writeToLog=1

REM Do not change
SET lastFail=never
SET successfulRepetitions=0

REM Check internet connection
:check
cls
ECHO Successful repetitions: %successfulRepetitions%
ECHO Last fail: %lastFail%
ECHO.
ECHO Pinging %server%...
PING -n 1 -l %packetSize% %server% >NUL
IF %errorlevel% EQU 0 GOTO successful
GOTO failed

REM Internet connection succeeded
:successful
color 0A
SET /a successfulRepetitions+=1
ECHO Ping successful!
TIMEOUT %successfulTimeout%
GOTO check

REM Internet connection failed
:failed
color 0C
SET lastFail=%time:~-11,2%:%time:~-8,2%:%time:~-5,2% - %date%
ECHO Ping failed!
ECHO Disconnecting network interface...
netsh wlan disconnect interface="%netInterface%"
TIMEOUT 4 >NUL
ECHO Reconnecting network interface...
netsh wlan connect ssid="%netSSID%" Name="%netName%" Interface="%netInterface%"
IF %writeToLog%==1 (
	ECHO Ping to %server% failed at %lastFail% >> NetworkLog.txt
	ECHO Previous successful repetitions: %successfulRepetitions% >> NetworkLog.txt
	ECHO ==================== >> NetworkLog.txt
)
SET successfulRepetitions=0
TIMEOUT %failedTimeout%
GOTO check