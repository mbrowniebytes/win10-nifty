

$helpers.Echo("scoop installing apps..`n")

# needed for global installs
# scoop install sudo

# prerequisites
. ./scripts/scoop.install.ms.ps1


. ./scripts/scoop.install.audio.ps1

. ./scripts/scoop.install.dev.ps1

. ./scripts/scoop.install.files.ps1

. ./scripts/scoop.install.games.ps1

. ./scripts/scoop.install.hardware.ps1

. ./scripts/scoop.install.network.ps1

. ./scripts/scoop.install.system.ps1

. ./scripts/scoop.install.tweaks.ps1

. ./scripts/scoop.install.utiltiies.ps1

. ./scripts/scoop.install.video.ps1


# placeholder for post install tweaks; will prob be another file

# Windows 10 Debloater
#Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString
#        ('https://raw.githubusercontent.com/Sycnex/Windows10Debloater/master/Windows10SysPrepDebloater.ps1'));
#        iex 'Start-Debloat Remove-Keys Protect-Privacy'

# Disable Desktop Icons
#Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "HideIcons"
# -Value 0



$helpers.Echo("scoop apps installed`n")
