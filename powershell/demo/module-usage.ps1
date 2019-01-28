$currentPath = $PSScriptRoot
$moduleName = 'module-manifest'

$module = "$($currentPath)\$($moduleName).psd1"

Import-Module -Force $module

get-module

Write-A
Write-B
Write-M

Write-APrivate

Remove-Module $moduleName

Get-Module