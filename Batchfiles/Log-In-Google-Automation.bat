@if (@CodeSection == @Batch) @then
@echo off
SET SendKeys=CScript //nologo //E:JScript "%~F0"
START chrome -new-window --incognito "https://accounts.google.com/"
TIMEOUT /t 4
%SendKeys% "YOUR-EMAIL"
%SendKeys% "~"
TIMEOUT /t 8
%SendKeys% "YOUR-PASSWORD"
%SendKeys% "~"
GOTO :EOF

@end
var WshShell = WScript.CreateObject("WScript.Shell");
WshShell.SendKeys(WScript.Arguments(0));0