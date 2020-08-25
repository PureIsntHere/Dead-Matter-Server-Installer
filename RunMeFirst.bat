@echo off

ECHO By using this tool you Agree to Dead Matter and QI Softwares TOS. 

ECHO This tool will ONLY work if you own a legit copy of Dead Matter.

ECHO Downloading steamcmd

powershell -Command "(New-Object Net.WebClient).DownloadFile('https://steamcdn-a.akamaihd.net/client/installer/steamcmd.zip', 'steamcmd.zip')"

ECHO Unzipping steamcmd

powershell Expand-Archive steamcmd.zip -DestinationPath %CD%

ECHO Deleting Zip folder

del steamcmd.zip

ECHO Updating Steam

START /WAIT steamcmd.exe +quit

SET /p _username=Please enter username for Steam:

SET /p _password=Please enter password for Steam:

SET /p _installdir=Please enter desired Install Directory for Server:

ECHO Starting Server Install...

START UpdateServer.bat %_username% %_password% %_installdir%

ECHO Server Installation Finished. Remember to fill out Server_Install\deadmatter\Saved\Config\WindowsServer\Game.ini