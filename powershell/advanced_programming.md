
# functions
```powershell
function Get-Fullname($firstname, $lastname)
{
  Write-Host($firstname + " " + $lastname)
}

Get-Fullname "big" "cash"

function Set-FVar([ref] $myparam)
{
  $myparam.Value = 33
}

$fvar = 42
"fvar before: $fvar"
Set-FVar ([ref] $fvar)
"fvar after: $fvar"


```
