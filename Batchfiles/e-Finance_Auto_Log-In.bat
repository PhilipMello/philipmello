@if (@CodeSection == @Batch) @then
@echo off
SET SendKeys=CScript //nologo //E:JScript "%~F0"
START chrome -new-window --incognito "https://ef.efinance.com.br/"
TIMEOUT /t 10
%SendKeys% "{DELETE}"
%SendKeys% "578"
%SendKeys% "{TAB}"
%SendKeys% "{DELETE}"
%SendKeys% "11"
%SendKeys% "{TAB}"
%SendKeys% "{DELETE}"
%SendKeys% "%USERNAME%"
%SendKeys% "{TAB}"
%SendKeys% "{DELETE}"
%SendKeys% ""
%SendKeys% "~"
GOTO :EOF

@end
var WshShell = WScript.CreateObject("WScript.Shell");
WshShell.SendKeys(WScript.Arguments(0));0