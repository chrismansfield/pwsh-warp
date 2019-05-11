@{

# Script module or binary module file associated with this manifest.
RootModule = 'pwsh-warp.psm1'

# Version number of this module.
ModuleVersion = '1.0.0.0'

# ID used to uniquely identify this module
GUID = '03918201-3e08-446d-9152-0996c0895760'

# Author of this module
Author = 'Christoffer Mansfield'

# Copyright statement for this module
Copyright = ''

# Description of the functionality provided by this module
Description = 'Provides support to warp to specified locations, similar to zsh wd command'

# Minimum version of the Windows PowerShell engine required by this module
PowerShellVersion = '5.0'

# Functions to export from this module
FunctionsToExport = @(
    'Get-WarpTable'
	'Set-WarpTable'
	'Add-WarpPoint'
	'Remove-WarpPoint'
	'Set-LocationByWarpPoint'
	'Invoke-WarpCommand'
)

# Cmdlets to export from this module
CmdletsToExport = @()

# Variables to export from this module
VariablesToExport = @()

# Aliases to export from this module
AliasesToExport = @('wd')

# Private data to pass to the module specified in RootModule/ModuleToProcess.
# This may also contain a PSData hashtable with additional module metadata used by PowerShell.
PrivateData = @{
    PSData = @{
        # Tags applied to this module. These help with module discovery in online galleries.
        Tags = @('wd', 'sd', 'zsh', 'warp', 'PSEdition_Core')

        # A URL to the license for this module.
        LicenseUri = '?'

        # A URL to the main website for this project.
        ProjectUri = '?'

        # ReleaseNotes of this module
        ReleaseNotes = '?'

        # OVERRIDE THIS FIELD FOR PUBLISHED RELEASES - LEAVE AT 'alpha' FOR CLONED/LOCAL REPO USAGE
        Prerelease = ''
    }
}
}
