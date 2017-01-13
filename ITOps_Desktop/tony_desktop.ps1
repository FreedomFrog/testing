iwr https://chocolatey.org/install.ps1 -UseBasicParsing | iex
CINST Boxstarter -y
Set-WindowsExplorerOptions -EnableShowHiddenFilesFoldersDrives -EnableShowProtectedOSFiles -EnableShowFileExtensions
Update-ExecutionPolicy Unrestricted


Set-TaskbarOptions -Size Large -Lock -Dock Bottom


cinst sublimetext3
cinst notepadplusplus.install
cinst git
cinst adobereader
cinst GoogleChrome
cinst 7zip.install
cinst windirstat
cinst visualstudiocode
cinst Firefox
cinst putty
cinst virtualbox
cinst teamviewer
cinst python
cinst winscp
cinst vagrant
cinst rdcman


Install-WindowsUpdate -AcceptEula

#remove edge from taskbar
#pin chrome to taskbar
Install-ChocolateyPinnedTaskBarItem "$($Boxstarter.programFilesx86)\Google\Chrome\Application\chrome.exe"
#pin powershell to taskbar
Install-ChocolateyPinnedTaskBarItem "$env:windir\system32\WindowsPowerShell\v1.0\powershell.exe"
#pin outlook 2010 to taskbar
Install-ChocolateyPinnedTaskBarItem "${env:ProgramFiles(x86)}\Microsoft Office\Office14\OUTLOOK.EXE"
#remove unwanted apps from win10

#pin remote desktop manager to taskbar
Install-ChocolateyPinnedTaskBarItem "$($Boxstarter.programFilesx86)\Microsoft\Remote Desktop Connection Manager\RDCMan.exe"
#windows feature Remote Server Administration
Install-WindowsFeature -name "Remote Server Administration Tools"
