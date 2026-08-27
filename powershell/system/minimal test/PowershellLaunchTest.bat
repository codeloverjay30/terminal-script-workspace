@echo off
REM Test for powershell.exe command parsing and logging

set "TestLogFile=%Temp%\powershell_launch_test.log"

echo Testing PowerShell launch and logging... > "%TestLogFile%"
echo. >> "%TestLogFile%"

REM Execute a very simple PowerShell command that just writes to the console
powershell.exe -NoProfile -Command "Write-Host 'PowerShell launched successfully and wrote this!'" >> "%TestLogFile%" 2>&1

echo. >> "%TestLogFile%"
echo Batch file completed. Check the log file. >> "%TestLogFile%"

echo.
echo Check the log file: %TestLogFile%
echo.
echo Press any key to exit...
pause > nul