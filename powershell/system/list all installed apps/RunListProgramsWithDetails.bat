@echo off
REM Batch file to run PowerShell script to list installed programs with more details

REM Define the path to your PowerShell script
set "PsScriptPath=D:\scripts workspace\powershell\system\list all installed apps\ListProgramsWithDetails.ps1"

REM Define the output CSV file path
set "OutputFilePath=C:\Temp\InstalledProgramsWithDetails.csv"

REM Define a log file for PowerShell's output/errors
set "PsLogPath=%Temp%\ListProgramsWithDetails_powershell.log"

echo Running PowerShell script: "%PsScriptPath%"
echo Output will be saved to: "%OutputFilePath%"
echo Detailed log in: "%PsLogPath%"
echo.
echo Please be patient, calculating folder sizes can take a while...

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