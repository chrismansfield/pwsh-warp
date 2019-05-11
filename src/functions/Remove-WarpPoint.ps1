function Remove-WarpPoint{
	[CmdletBinding()]
	Param(
		[Parameter(Position=0)]$Name
	)

	$newWarpTable = Get-WarpTable | Select-Object -Property * -ExcludeProperty $Name
	Set-WarpTable $newWarpTable	
}