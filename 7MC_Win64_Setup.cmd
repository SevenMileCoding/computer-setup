@echo off
cd %~dp0

::ECHO Connecting to internet
::NETSH WLAN SET HOSTEDNETWORK MODE=ALLOW SSID=”YOUR WIFI CONNECTION NAME” KEY=”YOUR WIFI CONNECTION PASSWORD”

ECHO Installing Python...
python-3.6.2-amd64.exe /quiet InstallAllUsers=1 PrependPath=1 Include_test=0
ECHO Done!

ECHO Installing Python Packages...
pip install -r pypacks.txt
ECHO Done!


ECHO Installing VSCode...
VSCodeSetup-x64.exe /SILENT
ECHO Done!

ECHO Installing Chrome...
ChromeStandaloneSetup64.exe
setChrome.vbs
ECHO Done!

ECHO Installing Git...
Git64-bit.exe /SILENT
ECHO Done!

ECHO Gathering resources...
SET resDir=%userprofile%\Documents\resources
mkdir resDir
cd resDir
git init
git remote add origin https://github.com/SevenMileCoding/student-resources.git
::git pull origin master
mkdir %userprofile%\Documents\code

::TODO: remove old pins and add new apps to taskbar
::TODO: create shortcuts on desktop as well
::TODO: reboot

ECHO All done!
PAUSE
