# basic commands
- see version: $psversiontable
- how to set execution policy: Help Set-ExecutionPolicy -full
  Set-ExecutionPolicy Unrestricted
  
# variables
```powershell
$myint = 5
$myint -gt 4
$myint -lt 4
$myint -eq 4
$myint.GetType()

[System.Int32]$myStronglyTypedInt = 42
[int]$myStronglyTypedInt2 = 42
$myStronglyTypedInt.GetType()
$myStronglyTypedInt2.GetType()

$mystring = "hello world"
$mystring.GetType()
$mystring.Contains("hello")
$mystring.ToUpper()


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
