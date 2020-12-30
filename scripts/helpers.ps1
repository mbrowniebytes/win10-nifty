
class Helpers
{
    [Boolean]$Debug
    [int]$ProgressStep
    [int]$ProgressSteps
    [String]$ProgressTitle
    [String]$ScoopDir

    Helpers() {
        $this.Debug = $false
        $this.ProgressStep = 0
        $this.ProgressTitle = "Win10-Nifty Progress"
        $this.ScoopDir = $env:SCOOP

        $Content = (Get-Content "$PSScriptRoot\..\*" -Filter *.ps1)
        <##
        Write-Host $Content.Count
        ([System.Management.Automation.PsParser]::Tokenize($Content, [ref]$null)) |
            Foreach-Object {
                Write-Host $_.Type $_.Content
            }
        ##>
        $this.ProgressSteps = ([System.Management.Automation.PsParser]::Tokenize($Content, [ref]$null) | where {
            $_.Type -eq 'Member' -and
            ($_.Content -eq 'Echo' -or $_.Content -eq 'ScoopInstall' -or $_.Content -eq 'ScoopAddBucket')
        }).Count
        $Content = (Get-Content "$PSScriptRoot\..\scripts\*" -Filter *.ps1)
        $this.ProgressSteps += ([System.Management.Automation.PsParser]::Tokenize($Content, [ref]$null) | where {
            $_.Type -eq 'Member' -and
            ($_.Content -eq 'Echo' -or $_.Content -eq 'ScoopInstall' -or $_.Content -eq 'ScoopAddBucket')
        }).Count
    }

    [Boolean]RunningAsAdmin() {
    return ([Security.Principal.WindowsPrincipal] `
        [Security.Principal.WindowsIdentity]::GetCurrent() `
        ).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator);
    }

    [void]Pause() {
        $this.Pause("Press any key to continue.. ")
    }
    [void]Pause([String]$Message) {
        if ((Test-Path variable:psISE) -or !([System.Console].In.Peek)) {
            $Shell = New-Object -ComObject "WScript.Shell"
            $Button = $Shell.Popup("Click OK to continue.", 0, "Script Paused", 0)
        } else {
            Write-Host -NoNewline $Message
            [void][System.Console]::ReadKey($true)
            Write-Host
        }
    }

    [Boolean]IsDirectory([String]$path) {
        return (Test-Path $path) -and (Get-Item $path) -is [System.IO.DirectoryInfo]
    }

    [void]Echo([String]$Message) {
        Write-Host "NF -" $Message

        $this.EchoProgress($Message)
    }
    [void]EchoDebug([String]$Message) {
        if ($this.Debug)
        {
            Write-Host "NFD -" $Message

            $this.EchoProgress($Message)
        }
    }
    [void]EchoProgress([String]$Message) {
        $this.ProgressStep++
        $Percent = (($this.ProgressStep / $this.ProgressSteps) * 100)
        Write-Progress -Activity $this.ProgressTitle -Status $Message -PercentComplete $Percent
    }

    [String]RunCommand([String]$Command) {
        # using just 2>&1 doesnt capture console
        $Output = Invoke-Expression $Command *>&1
        return $Output
    }
    [String]RunCommandRaw([String]$Command) {
        $Output = Invoke-Expression $Command; $Output=$LASTEXITCODE
        # 0 ok, 1 error, etc
        return $Output
    }

    [void]ScoopInstall([String]$App) {
        if ( !$this.IsDirectory($this.ScoopDir + '/apps/' + $App))
        {
            $this.Echo("scoop installing " + $App + "..")
            scoop install $App
        }
        else
        {
            $this.Echo("scoop already installed " + $App + "")
        }
    }
    [void]ScoopAddBucket([String]$Bucket) {
        $this.ScoopAddBucket($Bucket, "")
    }
    [void]ScoopAddBucket([String]$Bucket, [String]$Url) {
        if ( !$this.IsDirectory($this.ScoopDir + '/buckets/' + $Bucket))
        {
            if ($Url)
            {
                $this.Echo("scoop adding external bucket " + $Bucket + " " + $Url + "..")
                scoop bucket add $Bucket $Url
            }
            else
            {
                $this.Echo("scoop adding bucket " + $Bucket + "..")
                scoop bucket add $Bucket
            }
        }
        else
        {
            $this.Echo("scoop bucket already added " + $Bucket + "")
        }
    }

}

$helpers = [Helpers]::new()
