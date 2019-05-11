<#
.SYNOPSIS
    Returns the current table of warp points
#>
function Get-WarpTable(){
	return Get-Content -Path $Env:PwshWarpFile | ConvertFrom-Json
}