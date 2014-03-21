@echo off
:welcome
echo                  Copyright (c) Ryan Eastland RyStuff 2014
echo ################################################################################
echo This is a uninstaller for the RyStuff LockBackground randomizer 
echo Make sure this program is running as administrator or it won't install
echo If any questions are asked during the install answer yes
echo ################################################################################
set /p c=Are you sure you want to continue[Y/N]?
if /I "%c%"=="Y" goto one
if /I "%c%"=="N" goto exit
:one
findstr /m "existed" "c:\Program Files\RyStuff\LockBackground\existed.txt"
if %errorlevel%==0 (
goto two
) else (
echo three
)
:two
copy "c:\Program Files\RyStuff\LockBackground\backups" "c:\windows\system32\oobe\info\backgrounds"
goto four
:three
rmdir /s /q "c:\windows\system32\oobe\info\backgrounds"
goto four
:four
schtasks /Delete /TN LockBackground
cd "c:\Program Files\RyStuff\LockBackground\"
uninstall.reg
cd ..
rmdir /s /q LockBackground
cls
echo                  Copyright (c) Ryan Eastland RyStuff 2014
echo ################################################################################
echo              RyStuff LockBackground randomizer has been removed
echo ################################################################################