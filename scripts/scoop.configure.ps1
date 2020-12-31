
$helpers.Echo("scoop configuring..")

# install scoop
# https://scoop-docs.now.sh/
if ( $helpers.IsDirectory($SCOOP_DIR + '/apps/scoop'))
{
    $output = $helpers.RunCommand("scoop status")
    $helpers.EchoDebug($output)
    if ($output -and $output.Contains("Scoop is up to date")) {
        $helpers.Echo($output)
    } else {
        scoop update scoop
    }
}
else
{
    Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')
}


if ( !$helpers.IsDirectory($SCOOP_DIR + '/apps/aria2'))
{
    # Multi-connection downloads with aria2
    $helpers.ScoopInstall("aria2")

    $helpers.Echo("aria2 configuring..")
    scoop config aria2-enabled true
    scoop config aria2-retry-wait 5
    scoop config aria2-split 2
    scoop config aria2-max-connection-per-server 2
    scoop config aria2-min-split-size 10M
}

# required for unpacking InnoSetup files
$helpers.ScoopInstall("innounp")

# required for unpacking installers created with the WiX Toolset
$helpers.ScoopInstall("dark")


#
# add other buckets ie repos
#

# main - Default bucket for the most common (mostly CLI) apps


# extras - Apps that don't fit the main bucket's criteria
# https://github.com/lukesampson/scoop-extras
$helpers.ScoopAddBucket("extras")


# games - Open source/freeware games and game-related tools
# https://github.com/Calinou/scoop-games
# $helpers.ScoopAddBucket("games")


# nerd-fonts - Nerd Fonts
# https://github.com/matthewjberger/scoop-nerd-fonts
$helpers.ScoopAddBucket("nerd-fonts")


# nirsoft utilities
# https://github.com/Ash258/Scoop-NirSoft
# $helpers.ScoopAddBucket("nirsoft") # known, but limited listing
$helpers.ScoopAddBucket("nirsoft", "https://github.com/Ash258/Scoop-NirSoft.git")


# Sysinternals utilities
# https://github.com/Ash258/Scoop-Sysinternals
$helpers.ScoopAddBucket("Sysinternals", "https://github.com/Ash258/Scoop-Sysinternals.git")


# java - Oracle Java, OpenJDK, Zulu, ojdkbuild, AdoptOpenJDK, Amazon Corretto, BellSoft Liberica & SapMachine
# recommendation: only if needed
# https://github.com/ScoopInstaller/Java
# $helpers.ScoopAddBucket("java")


# jetbrains - Installers for all JetBrains utilities and IDEs
# only if use their ide https://www.jetbrains.com/idea/
# recommendation: rely on ide updates
# https://github.com/Ash258/Scoop-JetBrains
# $helpers.ScoopAddBucket("jetbrains")


# nonportable - Non-portable apps (may require UAC)
# https://github.com/TheRandomLabs/scoop-nonportable
$helpers.ScoopAddBucket("nonportable")


# php - Installers for most versions of PHP
# recommnedation: use a lamp package instead
# https://github.com/ScoopInstaller/PHP
# $helpers.ScoopAddBucket("php")


# versions - Alternative versions of apps found in other buckets
# https://github.com/ScoopInstaller/Versions
# $helpers.ScoopAddBucket("versions")


# 'popular' bucket with wide variety of applications of all kind
$helpers.ScoopAddBucket("Ash258", "https://github.com/Ash258/Scoop-Ash258.git")


# A gui client for scoop
$helpers.ScoopAddBucket("scoop-viewer-bucket", "https://github.com/prezesp/scoop-viewer-bucket.git")


$helpers.Echo("scoop buckets added")
scoop bucket list


$helpers.Echo("scoop configured`n")
