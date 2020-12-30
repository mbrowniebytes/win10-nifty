
$USERID = [Security.Principal.WindowsIdentity]::GetCurrent().User.Value
$PSVER = $host.version

$helpers.Debug = $true

$helpers.EchoDebug("progress steps " + $helpers.ProgressSteps)

Write-Host "Running PowerShell" $PSVER
if ($PSVER -lt 5.1) {
    Write-Host "Warning: Expected PowerShell version > 5.1 "
}

if (!$helpers.RunningAsAdmin()) {
    Write-Host "Fatal: Required to run PowerShell as Admin "
    exit 2
}

# PowerShell must be enabled for your user account e.g.
# Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
