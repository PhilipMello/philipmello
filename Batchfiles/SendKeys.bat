@if (@CodeSection == @Batch) @then
@echo off
SET SendKeys=CScript //nologo //E:JScript "%~F0"
TIMEOUT /t 2
%SendKeys% "{CAPSLOCK}"

GOTO :EOF

@end
var WshShell = WScript.CreateObject("WScript.Shell");
WshShell.SendKeys(WScript.Arguments(0));0