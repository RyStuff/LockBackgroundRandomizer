RyStuff Lock Background Randomizer
==================================
RyStuff Lock Background Randomizer is a basic windows powershell, registry, Scheduled task and batch files that randomize lock screen backgrounds everytime you logon the computer.

Install
-------
To install this program download the latest release from the release section on github.  
After you download it run it as administrator otherwise it won't totally work.  
If any questions popup during the installation just answer yes.  
As installer says place your backgrounds in c:\Program Files\RyStuff\LockBackground\backgrounds.  

Development
-----------
To use the source to install it download the latest clone of the master repo and extract it anywhere.  
Run the install.bat file.  

Files
-----
customLogon.reg - This file enables the OEMBackground feature in the registry  
install.bat - As it name implies it install the program and places everything in the right places  
random.ps1 - Random.ps1 is the main script in this program this is the one which is run everytime you logon and randomizes the background  
random.xml - The random.xml file is a exported Scheduled task which is import to Task Scheduler  
uninstall.bat - As the name implies again is the uninstaller for this program  
uninstall.reg - This file disables the OEMBackground feature if it was disabled before it was installed  
