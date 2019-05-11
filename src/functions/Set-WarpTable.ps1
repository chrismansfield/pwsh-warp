function Set-WarpTable{
	[CmdletBinding()]
	Param(
		[Parameter(Position=0)]$WarpTable
	)
	return $WarpTable | ConvertTo-Json | Set-Content -Path $Env:PwshWarpFile
}