<#
.SYNOPSIS
    Removes the warp point with the provided name
.DESCRIPTION
    Removes the warp point with the provided name. If the warp point does not exist, this cmdlet will do nothing
.PARAMETER Name
	The name of the warp point to remove.
.EXAMPLE
    C:\folder> Remove-WarpPoint folder
    Removes the warp point named folder
#>
function Remove-WarpPoint{
	[CmdletBinding()]
	Param(
		[Parameter(Position=0)]$Name
	)

	$newWarpTable = Get-WarpTable | Select-Object -Property * -ExcludeProperty $Name
	Set-WarpTable $newWarpTable	
}