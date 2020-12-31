

$helpers.Echo("scoop installing ms apps..")

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

# fonts
# https://github.com/matthewjberger/scoop-nerd-fonts/tree/master/bucket
# 1st install fails; 2nd install no errors but status complains about
# $helpers.ScoopInstall("FiraCode")
$helpers.ScoopInstall("JetBrains-Mono")

$helpers.Echo("scoop ms apps installed`n")
