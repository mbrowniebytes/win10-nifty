


# Install Scoop to a Custom Directory by changing SCOOP
# default C:\Users\<user>\scoop
$SCOOP_DIR = 'C:\Scoop'
$env:SCOOP = $SCOOP_DIR
[Environment]::SetEnvironmentVariable('SCOOP', $SCOOP_DIR, 'User')
if ( $helpers.IsDirectory($SCOOP_DIR + '/apps/scoop'))
{
    $helpers.Echo("scoop apps are installed in " + $SCOOP_DIR)
}
else
{
    $helpers.Echo("scoop apps will be installed in " + $SCOOP_DIR)
}


# set config to also be contained with Scoop dir
$SCOOP_CONFIG_DIR = $SCOOP_DIR + '\config'
$env:XDG_CONFIG_HOME = $SCOOP_CONFIG_DIR
[Environment]::SetEnvironmentVariable('XDG_CONFIG_HOME', $SCOOP_CONFIG_DIR, 'User')


# Configure Scoop to install global programs to a Custom Directory by changing SCOOP_GLOBAL
# should not be needed, but if one pc and multiple users, maybe a niceity
# requires admin-enabled PowerShell command console
# default C:\ProgramData\scoop
$SCOOP_GLOBAL_DIR = 'C:\Scoops'
if ($helpers.RunningAsAdmin()) {
    $env:SCOOP_GLOBAL = $SCOOP_GLOBAL_DIR
    [Environment]::SetEnvironmentVariable('SCOOP_GLOBAL', $SCOOP_GLOBAL_DIR, 'Machine')
    if ( $helpers.IsDirectory($SCOOP_DIR + '/apps/scoop'))
    {
        $helpers.Echo("scoop global apps are installed in " + $SCOOP_GLOBAL_DIR)
    }
    else
    {
        $helpers.Echo("scoop global apps will be installed in " + $SCOOP_GLOBAL_DIR)
    }
}


