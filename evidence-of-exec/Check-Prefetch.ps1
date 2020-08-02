#Powershell
#@Russ_Taylor_
#
#credit to Adam Harrison (blog.1234n6.com) for value descriptions

$reg = Get-ItemPropertyValue -path  Registry::"HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" -Name EnablePrefetcher

if ($reg -match '3') {'Value = 3 Both Application launch and Boot prefetching enabled'}
elseif ($reg -match '2') {'Value = 2 Only Boot prefetching enabled'} 
elseif ($reg -match '1') {'Value = 1 Only Application launch prefetching enabled'}
elseif ($reg -match '0') {'Value = 0 Prefetch disabled'}
else {"The vlaue appears to be outside of the expected range"}

