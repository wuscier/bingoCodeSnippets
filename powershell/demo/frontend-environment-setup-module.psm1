function Write-M()
{
    Write-Host 'M'
}

#region Import Scripts

. $PSScriptRoot\A.ps1
. $PSScriptRoot\B.ps1

#endregion

# if you don't explicitly export module members, all functions will be visible outside the module

#region Export Module Members

Export-ModuleMember Write-A
Export-ModuleMember Write-B
Export-ModuleMember Write-M

# because we don't export Write-APrivate, it won't be usable outside the module
#endregion