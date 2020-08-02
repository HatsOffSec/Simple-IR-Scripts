$reg = Get-ItemPropertyValue -path  Registry::"HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" -Name EnablePrefetcher

if ($reg -match '3') {'Prefetch is enabled'}
elseif ($reg -ne '3') {'non-default value found:'} 

echo "The key value is set to $reg"