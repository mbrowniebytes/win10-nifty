

$helpers.Echo("scoop installing dev apps..")


# https://gitforwindows.org
$helpers.ScoopInstall("git")

# https://www.jetbrains.com/idea/
$helpers.ScoopInstall("IntelliJ-IDEA-Ultimate-portable")

# https://www.virtualbox.org/
$helpers.ScoopInstall("virtualbox-np")

# https://dbeaver.io/
$helpers.ScoopInstall("dbeaver")

# https://www.geany.org/
$helpers.ScoopInstall("geany")

# https://netbeans.org/
$helpers.ScoopInstall("netbeans")

# https://notepad-plus-plus.org/
$helpers.ScoopInstall("notepadplusplus")

# https://winmerge.org/
$helpers.ScoopInstall("winmerge")

# https://github.com/FiloSottile/mkcert
$helpers.ScoopInstall("mkcert")


$helpers.Echo("scoop dev apps installed`n")
