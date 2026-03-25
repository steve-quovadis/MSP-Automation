cd C:\Program Files\NinjaRemote\git
import-module git-posh
Install-PackageProvider -Name NuGet -Force
Install-Module -Name Microsoft.WinGet.Client -Force -Repository PSGa
llery
Find-WinGetPackage -Query "Microsoft.dotnet.Runtime.10" | Install-WinGetPackage
Get-WinGetPackage | Where-Object { $_.IsUpdateAvailable } | Update-WinGetPackage
 
#Install-WinGetPackage -Id  microsoft.dotnet.runtime.10 -Source WinGet
