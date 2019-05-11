function Set-LocationByWarpPoint{
	[CmdletBinding()]
	Param(
		[Parameter(Position=0)]$Name
	)	
	$targetLocation = Get-WarpTable | Select -ExpandProperty pw
	if($targetLocation -eq $null){
		Write-Error "No warp point named $Name. Use Add-WarpPoint (wd add) to add a warp point"
	} else {
		Set-Location $targetLocation
	}
}