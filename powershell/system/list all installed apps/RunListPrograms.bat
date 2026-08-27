@echo off
REM Batch file to run PowerShell script to list installed programs

REM Define the path to your PowerShell script
REM *** UPDATE THIS LINE TO THE NEW LOCATION ***
set "PsScriptPath=D:\scripts workspace\powershell\system\list all installed apps\ListPrograms.ps1"

REM Define the output CSV file path (you can keep this as C:\Temp or change it)
set "OutputFilePath=C:\Temp\InstalledPrograms.csv"

REM Define a log file for PowerShell's output/errors
set "PsLogPath=%Temp%\ListPrograms_powershell.log"

echo Running PowerShell script: "%PsScriptPath%"
echo Output will be saved to: "%OutputFilePath%"
echo Detailed log in: "%PsLogPath%"
echo.
echo This might take a moment.

REM Execute the PowerShell script
powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%PsScriptPath%" -OutputFilePath "%OutputFilePath%" > "%PsLogPath%" 2>&1

REM Check the error level returned by the PowerShell script
if %errorlevel% equ 0 (
    echo.
    echo PowerShell script finished successfully.
    echo Check "%OutputFilePath%" for the list of programs.
) else (
    echo.
    echo An error occurred during PowerShell script execution.
    echo Please check "%PsLogPath%" for details.
)

echo.
echo Press any key to exit...
pause > nul