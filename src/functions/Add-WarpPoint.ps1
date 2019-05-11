<#
.SYNOPSIS
    Adds a warp point to the current location.
.DESCRIPTION
    Adds a new warp point to the current location. If the warp point already exists it will be overridden.
.PARAMETER Name
	The name of the warp point to add.
.EXAMPLE
    C:\folder> Add-WarpPoint folder
    Adds a warp point named folder pointing to C:\folder.
#>
function Add-WarpPoint{
	[CmdletBinding()]
	Param(
		[Parameter(Position=0)]$Name
	)
	$location = Get-Location
	$warpTable = Get-WarpTable
	$warpTable | Add-Member $Name $location.Path -Force
	Set-WarpTable $warpTable
}