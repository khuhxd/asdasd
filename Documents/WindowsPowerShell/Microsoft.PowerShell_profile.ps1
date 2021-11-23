# Set startup directory
Set-Location C:\Users\khuhxd\Projects\games

# Add alias for git --bare dotfiles (config) repository
function dotfiles { & git --git-dir=$HOME/.dotfiles --work-tree=$HOME $args }

function prompt {

    # Assign Windows Title Text
    $host.ui.RawUI.WindowTitle = "Current Folder: $pwd"

    # Configure current folder
    $CmdPromptCurrentFolder = Split-Path -Path $pwd -Leaf

    # Test for Admin
    $IsAdmin = (New-Object Security.Principal.WindowsPrincipal ([Security.Principal.WindowsIdentity]::GetCurrent())).IsInRole([Security.Principal.WindowsBuiltinRole]::Administrator)

    # Calculate execution time of last cmd and convert to milliseconds, seconds or minutes
    $LastCommand = Get-History -Count 1
    if ($lastCommand) { $RunTime = ($lastCommand.EndExecutionTime - $lastCommand.StartExecutionTime).TotalSeconds }

    if ($RunTime -ge 60) {
        $ts = [timespan]::fromseconds($RunTime)
        $min, $sec = ($ts.ToString("mm\:ss")).Split(":")
        $ElapsedTime = -join ($min, " min ", $sec, " sec")
    }
    else {
        $ElapsedTime = [math]::Round(($RunTime), 2)
        $ElapsedTime = -join (($ElapsedTime.ToString()), " sec")
    }

    # Decorate the CMD Prompt
    Write-Host ""
    Write-host ($(if ($IsAdmin) { ' su' } else { '' })) -ForegroundColor DarkRed -NoNewline
    If ($CmdPromptCurrentFolder -like "*:*")
        {Write-Host " $CmdPromptCurrentFolder "  -ForegroundColor White}
        else {Write-Host " .\$CmdPromptCurrentFolder\ "  -ForegroundColor White}

    Write-Host " [$elapsedTime] " -NoNewline -ForegroundColor Green
    return "> "
} # end prompt function
