@echo off
title Multitool - Choose an option

:: Default color is white text on black background
color 07

:: Display the main menu
:MENU
cls
echo *** MULTITOOL MENU ***
echo.
echo 1. Display System Information
echo 2. Open Calculator
echo 3. Open Notepad
echo 4. Check IP Address
echo 5. Ping a Website or IP
echo 6. Remote Desktop (RDP)
echo 7. Send Message to Another Computer
echo 8. Shut Down Computer
echo 9. Restart Computer
echo 10. Exit
echo.

set /p choice=Choose an option (1-10): 

if "%choice%"=="1" goto SYSTEMINFO
if "%choice%"=="2" goto CALCULATOR
if "%choice%"=="3" goto NOTEPAD
if "%choice%"=="4" goto IPINFO
if "%choice%"=="5" goto PING
if "%choice%"=="6" goto REMOTEDESKTOP
if "%choice%"=="7" goto SENDMESSAGE
if "%choice%"=="8" goto SHUTDOWN
if "%choice%"=="9" goto RESTART
if "%choice%"=="10" exit

goto MENU

:: Show system information
:SYSTEMINFO
cls
echo *** SYSTEM INFORMATION ***
echo.
systeminfo
pause
goto MENU

:: Open Calculator
:CALCULATOR
cls
echo Opening Calculator...
start calc
goto MENU

:: Open Notepad
:NOTEPAD
cls
echo Opening Notepad...
start notepad
goto MENU

:: Show IP configuration
:IPINFO
cls
echo Checking your IP Address...
ipconfig
pause
goto MENU

:: Ping a target
:PING
cls
set /p target=Enter the IP address or website to ping: 
echo Pinging %target%...
ping %target%
pause
goto MENU

:: Remote Desktop (RDP)
:REMOTEDESKTOP
cls
echo *** REMOTE DESKTOP CONNECTION ***
echo.
set /p remoteIP=Enter the IP address of the remote machine: 
echo Connecting to %remoteIP%...
start mstsc /v:%remoteIP%
goto MENU

:: Send message to another computer on the same network
:SENDMESSAGE
cls
echo *** SEND MESSAGE TO ANOTHER COMPUTER ***
echo.
set /p target=Enter the username or computer name of the remote machine: 
set /p message=Enter the message you want to send: 
echo Sending message to %target%...
msg %target% %message%
pause
goto MENU

:: Shut down the computer
:SHUTDOWN
cls
echo Shutting down the computer in 30 seconds...
shutdown /s /t 30
goto MENU

:: Restart the computer
:RESTART
cls
echo Restarting the computer in 30 seconds...
shutdown /r /t 30
goto MENU
