@echo off
title Windows 11 Pro Activation Tool
color 1F
mode con: cols=75 lines=35

echo ----------------------------------------------------------
echo	Windows 11 Pro Activation Tool - By: Philip Mello  
echo -------------------------v1.0-----------------------------

echo Installing Windows 11 Pro Key
slmgr /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
slmgr /skms kms8.msguides.com
echo Activating Windows
slmgr /ato
echo Product activated successfully!!!
pause