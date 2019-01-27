
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

# when writing functions, use an approved verb
Get-Verb

function Get-AValue($one, $two)
{
  return $one * $two
}

Get-AValue 10 9

$returnValue = Get-AValue 10 9
"Returned value is $returnValue"

$returnValue = Get-AValue -one 10 -two 9
```
