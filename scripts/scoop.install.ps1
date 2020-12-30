

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
# latest, which may match above
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

# https://github.com/prezesp/scoop-viewer
$helpers.ScoopInstall("scoop-viewer")

# https://www.7-zip.org/
$helpers.ScoopInstall("7zip")

# https://docs.microsoft.com/en-us/sysinternals/downloads/process-explorer
$helpers.ScoopInstall("ProcessExplorer")

# https://www.nirsoft.net/utils/cports.html
$helpers.ScoopInstall("CurrPorts")

# https://www.nirsoft.net/utils/multiple_ping_tool.html
$helpers.ScoopInstall("PingInfoView")

# https://www.nirsoft.net/utils/registry_changes_view.html
$helpers.ScoopInstall("RegistryChangesView")


$helpers.Echo("scoop system apps installed`n")



#
# dev
#

$helpers.Echo("scoop installing dev apps..`n")

# fonts
# https://github.com/matthewjberger/scoop-nerd-fonts/tree/master/bucket
# 1st install fails; 2nd install no errors but status complains about
# $helpers.ScoopInstall("FiraCode")
$helpers.ScoopInstall("JetBrains-Mono")

# https://gitforwindows.org
$helpers.ScoopInstall("git")

# https://www.jetbrains.com/idea/
$helpers.ScoopInstall("IntelliJ-IDEA-Ultimate-portable")

# https://www.virtualbox.org/
$helpers.ScoopInstall("virtualbox-np")

# https://dbeaver.io/
$helpers.ScoopInstall("dbeaver")

# https://cmder.net/
$helpers.ScoopInstall("cmder-full")

# https://tools.stefankueng.com/grepWin.html
$helpers.ScoopInstall("grepwin")

# https://www.geany.org/
$helpers.ScoopInstall("geany")

# https://netbeans.org/
$helpers.ScoopInstall("netbeans")

# https://notepad-plus-plus.org/
$helpers.ScoopInstall("notepadplusplus")

# https://winmerge.org/
$helpers.ScoopInstall("winmerge")

# https://winscp.net/eng/index.php
$helpers.ScoopInstall("winscp")

# gui to edit hosts file
# https://www.sordum.org/8266/
$helpers.ScoopInstall("BlueLifeHostsEditor")

# https://mremoteng.org/
$helpers.ScoopInstall("mremoteng")


$helpers.Echo("scoop dev apps installed`n")

#
# general apps
#

$helpers.Echo("scoop installing general apps..`n")

# https://www.mozilla.org/en-US/firefox/
$helpers.ScoopInstall("firefox")

# https://www.google.com/chrome/
$helpers.ScoopInstall("googlechrome")

# https://vivaldi.com/
$helpers.ScoopInstall("vivaldi")

# https://audioswit.ch/er
$helpers.ScoopInstall("audioswitcher")

# https://www.videolan.org/
$helpers.ScoopInstall("vlc")

# Locate files and folders by name instantly
# https://www.voidtools.com
$helpers.ScoopInstall("everything")

# https://www.advancedrenamer.com/
$helpers.ScoopInstall("advancedrenamer")

# A simple open source portable app launcher
# https://github.com/salvadorbs/Asuite
$helpers.ScoopInstall("asuite")

# https://www.ccleaner.com/ccleaner
$helpers.ScoopInstall("ccleaner")

# https://www.bleachbit.org/
$helpers.ScoopInstall("bleachbit")

# https://www.sordum.org/7952/dns-jumper-v2-2/
$helpers.ScoopInstall("dnsjumper")

# https://handbrake.fr/
$helpers.ScoopInstall("handbrake")

# https://keepass.info/
$helpers.ScoopInstall("keepass")

# https://www.libreoffice.org/
$helpers.ScoopInstall("libreoffice-stable")

# https://www.makemkv.com/
$helpers.ScoopInstall("makemkv")

# https://mkvtoolnix.download/
$helpers.ScoopInstall("mkvtoolnix")

# https://github.com/FiloSottile/mkcert
$helpers.ScoopInstall("mkcert")

# https://www.getpaint.net/
$helpers.ScoopInstall("paint.net")

# https://www.tracker-software.com/product/pdf-xchange-editor
$helpers.ScoopInstall("pdf-xchange-editor")

# https://www.qbittorrent.org/
$helpers.ScoopInstall("qbittorrent-portable")

# compacts browsers databases
# https://crystalidea.com/speedyfox
$helpers.ScoopInstall("speedyfox")

# https://winaero.com/winaero-tweaker/
$helpers.ScoopInstall("winaero-tweaker")

# https://github.com/zadam/trilium
$helpers.ScoopInstall("trilium")

# https://www.thewindowsclub.com/fixwin-for-windows-10
$helpers.ScoopInstall("FixWin10")

# https://www.thewindowsclub.com/ultimate-windows-tweaker-4-windows-10
$helpers.ScoopInstall("UltimateWindowsTweaker")

# https://www.w10privacy.de/english-home
# requires scoop 'upgrade'? shovel
# https://github.com/Ash258/Scoop-Core
# $helpers.ScoopInstall("W10Privacy")

# https://discordapp.com/
$helpers.ScoopInstall("discord")

$helpers.Echo("scoop general apps installed`n")



#
# game apps
#

# $helpers.Echo("scoop installing game apps..`n")

# preference to instead install in C:\Games\
# plus all the the other game services + games

# https://store.steampowered.com/
# $helpers.ScoopInstall("steam")

# https://www.epicgames.com/store
# $helpers.ScoopInstall("EpicGamesLauncher")

# $helpers.Echo("scoop game apps installed`n")


# placeholder for post install tweaks; will prob be another file

# Windows 10 Debloater
#Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString
#        ('https://raw.githubusercontent.com/Sycnex/Windows10Debloater/master/Windows10SysPrepDebloater.ps1'));
#        iex 'Start-Debloat Remove-Keys Protect-Privacy'

# Disable Desktop Icons
#Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "HideIcons"
# -Value 0



$helpers.Echo("scoop apps installed`n")
