@if (@CodeSection == @Batch) @then
@echo off
SET SendKeys=CScript //nologo //E:JScript "%~F0"
START chrome -new-window --incognito "https://glpi.yoursite.com/"
TIMEOUT /t 10
%SendKeys% "glpi"
%SendKeys% "{TAB}"
%SendKeys% "glpi"
%SendKeys% "~"
GOTO :EOF

@end
var WshShell = WScript.CreateObject("WScript.Shell");
WshShell.SendKeys(WScript.Arguments(0));0