


$helpers.Echo("scoop installing network apps..")


# https://www.nirsoft.net/utils/cports.html
$helpers.ScoopInstall("CurrPorts")

# https://www.nirsoft.net/utils/multiple_ping_tool.html
$helpers.ScoopInstall("PingInfoView")

# https://winscp.net/eng/index.php
$helpers.ScoopInstall("winscp")

# https://mremoteng.org/
$helpers.ScoopInstall("mremoteng")

# https://www.mozilla.org/en-US/firefox/
$helpers.ScoopInstall("firefox")

# https://www.google.com/chrome/
$helpers.ScoopInstall("googlechrome")

# https://www.sordum.org/7952/dns-jumper-v2-2/
$helpers.ScoopInstall("dnsjumper")

# https://vivaldi.com/
$helpers.ScoopInstall("vivaldi")

# https://www.qbittorrent.org/
$helpers.ScoopInstall("qbittorrent-portable")

# compacts browsers databases
# https://crystalidea.com/speedyfox
$helpers.ScoopInstall("speedyfox")

$helpers.Echo("scoop network apps installed`n")

