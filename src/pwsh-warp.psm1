param()

. $PSScriptRoot/functions/Get-WarpTable.ps1
. $PSScriptRoot/functions/Set-WarpTable.ps1
. $PSScriptRoot/functions/Add-WarpPoint.ps1
. $PSScriptRoot/functions/Remove-WarpPoint.ps1
. $PSScriptRoot/functions/Set-LocationByWarpPoint.ps1
. $PSScriptRoot/functions/Invoke-WarpCommand.ps1

if (!$Env:PwshWarpFile) { $Env:PwshWarpFile = "$Env:AppData\pwsh-warp\.warp-points.json" }

if((Test-Path $Env:PwshWarpFile) -eq $false) {
	New-Item -Path $Env:PwshWarpFile -ItemType File -Force
	Set-WarpTable @{}
}

New-Alias -Name "wd" Invoke-WarpCommand

$exportModuleMemberParams = @{
    Function = @(
        'Get-WarpTable'
        'Set-WarpTable'
        'Add-WarpPoint'
        'Remove-WarpPoint'
		'Set-LocationByWarpPoint'
		'Invoke-WarpCommand'
    )
	Alias = @(
		'wd'
	)
}

Export-ModuleMember @exportModuleMemberParams

