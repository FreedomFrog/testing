iwr https://chocolatey.org/install.ps1 -UseBasicParsing | iex
CINST Boxstarter -y
Set-WindowsExplorerOptions -EnableShowFileExtensions
Update-ExecutionPolicy Unrestricted


Set-TaskbarOptions -Size Large -Lock -Dock Bottom


cinst adobereader
cinst GoogleChrome
cinst 7zip.install
cinst Firefox

Install-WindowsUpdate -AcceptEula

#pin chrome to taskbar
Install-ChocolateyPinnedTaskBarItem "$($Boxstarter.programFilesx86)\Google\Chrome\Application\chrome.exe"

#pin outlook 2010 to taskbar


#remove unwanted apps from win10

