


$helpers.Echo("scoop installing system apps..")

# https://github.com/prezesp/scoop-viewer
$helpers.ScoopInstall("scoop-viewer")

# https://docs.microsoft.com/en-us/sysinternals/downloads/process-explorer
$helpers.ScoopInstall("ProcessExplorer")

# https://cmder.net/
$helpers.ScoopInstall("cmder-full")

# gui to edit hosts file
# https://www.sordum.org/8266/
$helpers.ScoopInstall("BlueLifeHostsEditor")

# https://audioswit.ch/er
$helpers.ScoopInstall("audioswitcher")

# A simple open source portable app launcher
# https://github.com/salvadorbs/Asuite
$helpers.ScoopInstall("asuite")

# https://www.rapidee.com/en/about
$helpers.ScoopInstall("rapidee")


$helpers.Echo("scoop system apps installed`n")

