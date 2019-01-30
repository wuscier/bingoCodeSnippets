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

# note that the first parameter must be the same. And screen size width can't exceeds buffer size width
```

- mode command
```
mode
mode con cols=200 lines=20000
```
- use registry to save screen size and buffer size
![http://blog.51cto.com/7098733/1775277](http://blog.51cto.com/7098733/1775277)

