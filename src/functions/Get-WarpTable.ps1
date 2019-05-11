function Get-WarpTable(){
	return Get-Content -Path $Env:PwshWarpFile | ConvertFrom-Json
}