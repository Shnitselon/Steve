$url = "http://mirror.internode.on.net/pub/test/10meg.test"
$output = "c:\putty-0.67-installer.msi"
Invoke-WebRequest -Uri $url -OutFile $output
msiexec /i "C:\Users\admin\Downloads\putty-0.67-installer.msi" /s
