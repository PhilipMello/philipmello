@echo off
for %%a in (H HE HEL HELL HELLO) do (
cls
echo %%a
ping -n 2 "">nul
)
pause