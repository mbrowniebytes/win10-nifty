

$helpers.Echo("scoop installing apps`n")

# needed for global installs
# scoop install sudo

#
# system
#

$helpers.Echo("scoop installing system apps..`n")

# https://www.visualstudio.com/downloads/
$helpers.ScoopInstall("vcredist2005")
$helpers.ScoopInstall("vcredist2008")
$helpers.ScoopInstall("vcredist2010")
$helpers.ScoopInstall("vcredist2012")
$helpers.ScoopInstall("vcredist2013")
$helpers.ScoopInstall("vcredist2019")
$helpers.ScoopInstall("vcredist")

$helpers.ScoopInstall("DirectX")

if ( !$helpers.IsDirectory($SCOOP_DIR + '/apps/concfg'))
{
    # configure windows terminal and powershell
    # https://github.com/lukesampson/concfg
    $helpers.ScoopInstall("concfg")

    $helpers.Echo("concfg configuring..")

    # concfg import solarized-dark basic
    concfg import vs-code-dark-plus basic -y

    # reset
    # concfg import cmd-default
    # concfg import powershell-default
    # concfg import basic-reset

    # Making your own settings to save or share
    # concfg export <path>
}

# https://www.7-zip.org/
$helpers.ScoopInstall("7zip")

# https://docs.microsoft.com/en-us/sysinternals/downloads/process-explorer
$helpers.ScoopInstall("ProcessExplorer")

# https://www.nirsoft.net/utils/cports.html
$helpers.ScoopInstall("CurrPorts")

# https://www.nirsoft.net/utils/registry_changes_view.html
$helpers.ScoopInstall("RegistryChangesView")


$helpers.Echo("scoop system apps installed`n")

exit 4

#
# dev
#

$helpers.Echo("scoop installing dev apps..`n")

# fonts
# https://github.com/matthewjberger/scoop-nerd-fonts/tree/master/bucket
$helpers.Echo("scoop installing fonts..")
scoop install FiraCode
scoop install JetBrains-Mono

# https://gitforwindows.org
$helpers.Echo("scoop installing git..")
scoop install git

# https://www.jetbrains.com/idea/
$helpers.Echo("scoop installing IntelliJ..")
scoop install IntelliJ-IDEA-Ultimate-portable

$helpers.Echo("scoop dev apps installed`n")

#
# general apps
#

$helpers.Echo("scoop installing general apps..`n")

# https://www.google.com/chrome/
$helpers.Echo("scoop installing googlechrome..")
scoop install googlechrome

# https://www.videolan.org/
$helpers.Echo("scoop installing vlc..")
scoop install vlc

# Locate files and folders by name instantly
# https://www.voidtools.com
$helpers.Echo("scoop installing everything..")
scoop install everything

# switching between sound devices trivial
# https://audioswit.ch/er
$helpers.Echo("scoop installing audioswitcher..")
scoop install audioswitcher

$helpers.Echo("scoop general apps installed`n")



#
# games
#

$helpers.Echo("scoop installing game apps..`n")

# https://discordapp.com/
$helpers.Echo("scoop installing discord..")
scoop install discord

# https://store.steampowered.com/
$helpers.Echo("scoop installing steam..")
scoop install steam

# https://www.epicgames.com/store
$helpers.Echo("scoop installing EpicGamesLauncher..")
scoop install EpicGamesLauncher

$helpers.Echo("scoop game apps installed`n")

# Windows 10 Debloater
#Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString
#        ('https://raw.githubusercontent.com/Sycnex/Windows10Debloater/master/Windows10SysPrepDebloater.ps1'));
#        iex 'Start-Debloat Remove-Keys Protect-Privacy'

# Disable Desktop Icons
#Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "HideIcons"
# -Value 0



$helpers.Echo("scoop apps installed`n")
