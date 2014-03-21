@echo off
:welcome
echo                  Copyright (c) Ryan Eastland RyStuff 2014
echo ################################################################################
echo This is a installer for the RyStuff LockBackground randomizer 
echo Make sure this program is running as administrator or it won't install
echo If any questions are asked during the install answer yes
echo ################################################################################
set /p c=Are you sure you want to continue[Y/N]?
if /I "%c%"=="Y" goto install
if /I "%c%"=="N" goto exit
:install

customLogon.reg
mkdir "c:\Program Files\RyStuff\LockBackground"
mkdir "c:\Program Files\RyStuff\LockBackground\backgrounds"

IF EXIST "c:\windows\system32\oobe\info\backgrounds" (
mkdir "c:\Program Files\RyStuff\LockBackground\backups"
copy "c:\windows\system32\oobe\info\backgrounds" "c:\Program Files\RyStuff\LockBackground\backups"
echo existed>"c:\Program Files\RyStuff\LockBackground\existed.txt"
) ELSE (
mkdir "c:\windows\system32\oobe\info\backgrounds"
echo  >"c:\Program Files\RyStuff\LockBackground\existed.txt"
)
del "c:\windows\system32\oobe\info\backgrounds"
powershell.exe set-ExecutionPolicy bypass
schtasks /Create /xml random.xml /TN LockBackground
copy "random.ps1" "c:\Program Files\RyStuff\LockBackground\random.ps1"
copy "uninstall.exe" "c:\Program Files\RyStuff\LockBackground\uninstall.exe"
copy "uninstall.reg" "c:\Program Files\RyStuff\LockBackground\uninstall.reg"
powershell -ExecutionPolicy Bypass -File "c:\Program Files\RyStuff\LockBackground\random.ps1"

echo                  Copyright (c) Ryan Eastland RyStuff 2014
echo ################################################################################
echo Save custom backgrounds to c:\Program Files\RyStuff\LockBackground\backgrounds
echo and they will be ramdomized everytime you logon your computer
set /p o=Do you want to open the custom background folder now[Y/N]?
if /I "%o%"=="Y" goto open
if /I "%o%"=="N" goto exit
echo ################################################################################
pause
:open
explorer.exe c:\Program Files\RyStuff\LockBackground\backgrounds
pause
:exit


