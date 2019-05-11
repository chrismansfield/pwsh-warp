<#
.SYNOPSIS
    Invokes one of the available warp cmdlets. This exists solely for the wd alias
.DESCRIPTION
    Invokes several of the Warp cmdlets, depending on the first parameter.
	This cmdlet exists in order to create the wd alias, and have it work as closely as possible to Zsh's wd command	
.PARAMETER NameOrCommand
	Determines what command to invoke. If this does not map to a command, Set-LocationByWarpPoint will be invoked with this value.
	* add: Invokes Add-WarpPoint with the second argument to this cmdlet
	* remove: Invokes Remove-WarpPoint with the second argument to this cmdlet
	* list: Invokes Get-WarpTable
.PARAMETER Name
	The name of the warp point to add or remove. This parameter is only used if NameOrCommand is add or remove
.EXAMPLE
    C:\folder> Invoke-WarpCommand add folder
    Adds a warp point named folder pointing to C:\folder
.EXAMPLE
    C:\folder> Invoke-WarpCommand remove folder
    Removes the warp point named folder
.EXAMPLE
    C:\folder> Invoke-WarpCommand list
    Writes all available warp points
.EXAMPLE
    C:\folder> Invoke-WarpCommand folder
    Warps the current session to the location of the folder alias
#>
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