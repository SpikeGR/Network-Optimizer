@echo off
title Network Optimizer V0.1
set "params=%*"
cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )
echo.
echo.
timeout 3 > nul
echo Network Optimization is now Starting...
timeout 5 > nul
echo.
echo.
echo.
ipconfig /release
timeout 3 > nul
echo.
ipconfig /flushdns
timeout 3 > nul
echo.
ipconfig /renew
timeout 3 > nul
echo.
netsh winsock reset
echo.
echo.
echo.
echo Network Optimization finished!
echo Restart your PC for all the optimizations to take effect.
timeout 999 > nul
exit