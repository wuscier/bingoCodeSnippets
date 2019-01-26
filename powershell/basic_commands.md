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
