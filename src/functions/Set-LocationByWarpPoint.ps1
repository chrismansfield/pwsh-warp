<#
.SYNOPSIS
    Warps the current session to the location of the specified warp point
.DESCRIPTION
    Warps the current session to the location of the specified warp point. If the warp point does not exists, and error will be written
.PARAMETER Name
	The name of the warp point to warp to.
.EXAMPLE
    C:\folder> Set-LocationByWarpPoint folder
    Warps the current session to the location of the folder alias.
#>
function Set-LocationByWarpPoint{
	[CmdletBinding()]
	Param(
		[Parameter(Position=0)]$Name
	)
	$warpTable = Get-WarpTable
	if(Get-Member -InputObject $warpTable -Name $Name){		
		$warpTable | Select -ExpandProperty $Name | Set-Location
	} else {
		Write-Error "No warp point named $Name. Use Add-WarpPoint (wd add) to add a warp point"
	}	
}