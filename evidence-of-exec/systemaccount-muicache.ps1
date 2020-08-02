# Powershell
#
# @Russ_Taylor_
#
# This script is looking at .default which shows applications running at the 
# system level. typically this should only be anti-virus or other similar
# software

Get-Item -path  Registry::"HKEY_USERS\.DEFAULT\Software\Microsoft\Windows\ShellNoRoam\MuiCache"