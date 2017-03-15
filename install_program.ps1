$url = "https://github.com/Shnitselon/Steve/blob/master/putty-0.67-installer.msi"
$output = "c:\putty-0.67-installer.msi"
Invoke-WebRequest -Uri $url -OutFile $output
msiexec /i "c:\putty-0.67-installer.msi" /s
