function Invoke-WarpCommand{
	[CmdletBinding()]
	Param(
		[Parameter(Position=0)]$NameOrCommand,
		[Parameter(Position=1)]$Name
	)
	switch ($NameOrCommand) {
		'add' { Add-WarpPoint $Name }
		'remove' { Remove-WarpPoint $Name }
		'list' { Get-WarpTable }
		Default { Set-LocationByWarpPoint $NameOrCommand }
	}	
}