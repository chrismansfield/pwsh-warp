function Add-WarpPoint{
	[CmdletBinding()]
	Param(
		[Parameter(Position=0)]$Name
	)
	$location = Get-Location
	$warpTable = Get-WarpTable
	$warpTable | Add-Member $Name $location.Path
	Set-WarpTable $warpTable
}