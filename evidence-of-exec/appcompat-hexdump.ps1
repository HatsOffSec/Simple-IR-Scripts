#Powershell
#@Russ_Taylor_

Get-ItemPropertyValue -path  Registry::"HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\AppCompatCache" -Name AppCompatCache |
    Format-Hex 