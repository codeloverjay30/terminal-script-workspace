@echo off
REM 請將下方路徑改成你的方案根目錄
cd /d "D:\workspace\developing projects\akm project2"

REM 刪除所有 bin、obj、runtimes 資料夾
for /d /r %%i in (bin,obj,runtimes) do if exist "%%i" rd /s /q "%%i"

REM 刪除所有 grpc_csharp_ext.x64.dll
del /s /q grpc_csharp_ext.x64.dll

pause