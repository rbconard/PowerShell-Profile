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
Write-Host ""
Write-Host "Adding Snapin's"
Write-Host ""
Write-Host "Adding PS Snapin --> Quest.ActiveRoles.ADManagement --> Process Time: "`
(Measure-Command {Add-PSSnapin Quest.ActiveRoles.ADManagement -ErrorAction SilentlyContinue -WarningAction SilentlyContinue}).ToString()
Write-Host "Adding PS Snapin --> VMware.VimAutomation.Core --> Process Time: "`
(Measure-Command {Add-PSSnapin VMware.VimAutomation.Core -ErrorAction SilentlyContinue -WarningAction SilentlyContinue}).ToString()
Write-Host "Adding PS Snapin --> VMware.VimAutomation.License --> Process Time: "`
(Measure-Command {Add-PSSnapin VMware.VimAutomation.License -ErrorAction SilentlyContinue -WarningAction SilentlyContinue}).ToString()
Write-Host "Adding PS Snapin --> VMware.DeployAutomation --> Process Time: "`
(Measure-Command {Add-PSSnapin VMware.DeployAutomation -ErrorAction SilentlyContinue -WarningAction SilentlyContinue}).ToString()
Write-Host "Adding PS Snapin --> VMware.ImageBuilder --> Process Time: "`
(Measure-Command {Add-PSSnapin VMware.ImageBuilder -ErrorAction SilentlyContinue -WarningAction SilentlyContinue}).ToString()
Write-Host "Adding PS Snapin --> VMware.VimAutomation.Cloud --> Process Time: "`
(Measure-Command {Add-PSSnapin VMware.VimAutomation.Cloud -ErrorAction SilentlyContinue -WarningAction SilentlyContinue}).ToString()
Write-Host ""
Write-Host "Initialzation complete" -ForegroundColor Yellow -BackgroundColor DarkBlue
Write-Host ""