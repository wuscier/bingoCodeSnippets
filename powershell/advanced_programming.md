
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
# pipelines
```powershell
function Get-PSFiles()
{
  # the begin block executes once at the start of the function
  begin {$retval = "here are some PowerShell files: `r`n"}
  
  # the process block is executed once for each object being passed in from the pipe
  process 
  {
    if($_.Name -like "*.ps1")
    {
      $retval += "`t$($_.Name)`r`n"
      # $()     tells power shell to evaluate the expression in () first then return it
      # $_      the current object being passed in the pipeline
      # .Name   the name property of the current object
    }
  }
  
  end { return $retval}
}

Set-Location "C:\Users\wuxu\Desktop\demo"
$output = Get-ChildItem | Get-PSFiles
$output
$output.GetType()  # string

function Get-PSFiles()
{
  begin {}
  
  process 
  {
    if($_.Name -like "*.ps1")
    {
      $retval = "`tPowerShell file is $($_.Name)"
      $retval # this is the equivalent of return $retval
    }
  }
  
  end {}
}

function Write-SomeText()
{
  process 
  {
    $retval = "here is the output:$($_)"
    $retval
  }
}

Set-Location "C:\Users\wuxu\Desktop\demo"
$output = Get-ChildItem | Get-PSFiles | Write-SomeText
$output.GetType()   # array

```

# advanced functions
```powershell
function Get-AValue()
{
  [CmdletBinding()]
  param([Parameter(Mandatory=$true,HelpMessage='please enter value one.')]
        [int] $one, 
        [Parameter(Mandatory=$false, HelpMessage='please enter value two.')]
        [int] $two = 2
  )
  
  begin {}
  process { return $one * $two}
  end {}
}

Get-AValue -one 22 -two 10
Get-AValue -one 22
Get-AValue
Get-AValue -one "x"
```

# error handling
```powershell
function divver($enum, $deno)
{
  Write-Host "divver begins."
  try
  {
    $result = $enum / $denom
  }
  catch
  {
    Write-Host "an error has occurred!"
    Write-Host $_.ErrorID
    Write-Host $_.Exception.Message
    break # error bubbles up to parent
  }
  finally
  {
    Write-Host "divver ends."
  }
}

divver 33 3
divver 33 0

```

# modules
```powershell
# module-test.psm1
function Write-One()
{
  Write-Output 'One'
}
function Write-Two()
{
  Write-Output 'Two'
}
#
$modulePath = 'C:\Users\wuxu\Desktop\demo\'
$moduleName = 'module-test'

$module = "$($modulePath)$($moduleName).psm1"

Import-Module -Force $module # to use a module, you need to import it first
# to force ps to reload, use the -Force switch

Get-Module # show list of modules in memory

Write-One
Write-Two
```

