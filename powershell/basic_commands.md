# basic commands
- see version: $psversiontable
- how to set execution policy: Help Set-ExecutionPolicy -full
  Set-ExecutionPolicy Unrestricted
  
# variables
```powershell
$myint = 5
$myint.GetType()
$myint = 3*8
$myint++

[System.Int32]$myStronglyTypedInt = 42
[int]$myStronglyTypedInt2 = 42
$myStronglyTypedInt.GetType()
$myStronglyTypedInt2.GetType()

$mystring = "hello world"
$mystring.GetType()
$mystring.Contains("hello")
$mystring.ToUpper()
```
- long version
```powershell
# long version of $var = 123
New-Variable -Name var -Value 123

# assign a new value to an existing variable
Set-Variable -Name var -Value 548

# clear the contents of a variable
Clear-Variable -Name var

# wipe out a varable
Remove-Variable -Name var

# display the variable and it's value
Get-Variable var -valueonly
Get-Variable var

# show all variables
Get-Variable
```
- comparison
```powershell
$myint -gt 4
$myint -lt 4
$myint -eq 4
```
whatever is on the right is converted to the data on the left
```powershell
"42" -eq 42   #True, 42 will be converted to "42"
42 -eq "42"   #True, "42" will be converted to 42
42 -eq "042"  #True
"042" -eq 42  #False
```

# escape sequences `
```powershell
# backspace `b
"plural`bsight"

# new line `n
"plural`nsight"

# carriage return `r
"plural`rsight"
```

# strings
```powershell
# here strings for large blocks of text
$heretext = @"
some text here
some more here
    a bit more
    
a blank line above
"@

$heretext

# use expressions in strings, need to be wrapped in $()
"there are $((Get-ChildItem).Count) items in the folder $(Get-Location)."
```

# string formatting
```powershell
[string]::Format("there are {0} items.",$items)

"there are {0} items." -f $items
```

# arrays
```powershell
$array = "hello","world"
$array[0]
$array[1]
$array
$array.GetType()
$array[0] = "good"

$array = @("formal","array","creation")
$array = @()
$array.Count

$array = 1..5

$number = 1, 2, 3
$number -contains 2
$number -notcontains 5

```

# hash tables
```powershell
$hash = @{"key"   = "value";
          "pluralsight" = "pluralsight.com";
          "big cash"    = "github.com/wuscier"          
          }
$hash["big cash"]
$hash["microsoft"] = "microsoft.com" #add value using new key
$hash.Remove("big cash")

$hash.Contains("big cash")
$hash.ContainsValue("github.com/wuscier")

$hash.Keys
$hash.Values
```

# branching
```powershell
$var = 2
if($var -eq)
{
  Clear-Host
  "if branch"
}
else
{
  Clear-Host
  "else branch"
}
```

# looping
```powershell
Clear-Host
$i=1
do
{
  "`$i = $i"
  $i++
} while($i -le 5)
```
```powershell
for($f=0;$f -le 5;$f++)
{
  "`$f = $f"
}
```
