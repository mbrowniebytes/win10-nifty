


$helpers.Echo("scoop installing utlities apps..")


# https://www.nirsoft.net/utils/registry_changes_view.html
$helpers.ScoopInstall("RegistryChangesView")

# https://www.ccleaner.com/ccleaner
$helpers.ScoopInstall("ccleaner")

# https://www.bleachbit.org/
$helpers.ScoopInstall("bleachbit")

# https://keepass.info/
$helpers.ScoopInstall("keepass")

# https://www.libreoffice.org/
$helpers.ScoopInstall("libreoffice-stable")

# https://www.tracker-software.com/product/pdf-xchange-editor
$helpers.ScoopInstall("pdf-xchange-editor")

$helpers.Echo("scoop system utlities installed`n")

