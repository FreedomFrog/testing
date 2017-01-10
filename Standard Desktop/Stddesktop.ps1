iwr https://chocolatey.org/install.ps1 -UseBasicParsing | iex
CINST Boxstarter -y
Set-WindowsExplorerOptions -EnableShowHiddenFilesFoldersDrives -EnableShowProtectedOSFiles -EnableShowFileExtensions
Update-ExecutionPolicy Unrestricted


Set-TaskbarOptions -Size Large -Lock -Dock Bottom


choco install sublimetext3
choco install notepadplusplus.install
choco install git
choco install adobereader
choco install GoogleChrome
choco install 7zip.install
choco install windirstat
choco install visualstudiocode
choco install Firefox
choco install putty
choco install virtualbox
choco install teamviewer
choco install python
choco install winscp
choco install vagrant
choco install rdcman


Install-WindowsUpdate -AcceptEula

#remove edge from taskbar
#pin chrome to taskbar
#pin powershell to taskbar
#pin outlook 2010 to taskbar
Install-ChocolateyPinnedTaskBarItem "${env:ProgramFiles(x86)}\Microsoft Office\Office14\OUTLOOK.EXE"
#remove unwanted apps from win10
#remote desktop manager to taskbar
#windows feature Remote Server Administration
#Remote Server Admin Tools for Windows 10 install