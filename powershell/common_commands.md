# Powershell Window Settings
- Screen Buffer Size
```powershell
$host.UI.RawUI.BufferSize

# run as administrator
$host.UI.RawUI.BufferSize = New-Object System.Management.Automation.Host.Size(200,20000)
```

- Screen Size
```powershell
$host.UI.RawUI.WindowSize = new-object System.Management.Automation.Host.Size(200,50)

# note that the first parameter must be the same
```
