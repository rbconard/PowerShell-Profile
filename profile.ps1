Clear-Host
Write-Host "All Users All Hosts - Initializing the Environment" -ForegroundColor Yellow -BackgroundColor DarkBlue
Write-Host "to Modify Initilization run this command to edit the file (with runas as Administrator):"
Write-Host ""
Write-Host 'ISE $profile.AllUsersAllHosts' -ForegroundColor White -BackgroundColor Red
Write-Host ""
Write-Host "Loading Modules"
Write-Host ""
Write-Host "Loading --> Microsoft.PowerShell.Diagnostics --> Process Time: "`
(Measure-Command {Import-Module Microsoft.PowerShell.Diagnostics -ErrorAction SilentlyContinue -WarningAction SilentlyContinue}).ToString()
Write-Host "Loading --> Microsoft.PowerShell.Utility --> Process Time: "`
(Measure-Command {Import-Module Microsoft.PowerShell.Utility -ErrorAction SilentlyContinue -WarningAction SilentlyContinue}).ToString()
Write-Host "Loading --> Microsoft.PowerShell.Host --> Process Time: "`
(Measure-Command {Import-Module Microsoft.PowerShell.Host -ErrorAction SilentlyContinue -WarningAction SilentlyContinue}).ToString()
Write-Host "Loading --> Microsoft.PowerShell.Management --> Process Time: "`
(Measure-Command {Import-Module Microsoft.PowerShell.Management -ErrorAction SilentlyContinue -WarningAction SilentlyContinue}).ToString()
Write-Host "Loading --> Microsoft.PowerShell.Security --> Process Time: "`
(Measure-Command {Import-Module Microsoft.PowerShell.Security -ErrorAction SilentlyContinue -WarningAction SilentlyContinue}).ToString()
Write-Host "Loading --> Microsoft.WSMan.Management --> Process Time: "`
(Measure-Command {Import-Module Microsoft.WSMan.Management -ErrorAction SilentlyContinue -WarningAction SilentlyContinue}).ToString()
Write-Host "Loading --> KcsModule --> Process Time: "`
(Measure-Command {Import-Module KcsModule -ErrorAction SilentlyContinue -WarningAction SilentlyContinue}).ToString()

$ScriptDrive = '\\cpkcscriptp1.kcscp.corp\d$'
$HomeDrive = '\\kcscp.corp\DFS\HomeDrives\KCHomeDir\krxc13'

$DDrive = Get-PSDrive D -ErrorAction SilentlyContinue -ErrorVariable DEV
$HDrive = Get-PSDrive H -ErrorAction SilentlyContinue -ErrorVariable HEV

If ($DEV) { New-PSDrive -Name D -PSProvider FileSystem -Root $ScriptDrive -Persist }
If ($HEV) { New-PSDrive -Name H -PSProvider FileSystem -Root $HomeDrive -Persist }

Write-Host ""
Write-Host "Initialzation complete" -ForegroundColor Yellow -BackgroundColor DarkBlue
Write-Host ""