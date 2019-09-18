$dir_name = "temp-logs"
$dir_path = "C:\$dir_name\azure-config-log.txt"
New-Item -ItemType Directory -Force -Path "C:\$dir_name"

$Pwd = ConvertTo-SecureString "Afifarm15148" -AsPlainText -Force
Add-Content -Path $dir_path -Value "create password" -Force

New-LocalUser "Demo11" -Password $Pwd -FullName "Demo11" -Description "Demo user account." -PasswordNeverExpires
Add-Content -Path $dir_path -Value "create 'Demo' user" -Force

Add-LocalGroupMember -Group "Administrators" -Member "Demo11"
Add-Content -Path $dir_path -Value "Assign to 'Administrators' group" -Force

Copy-Item -Path "C:\AFIFARM\DATA\*" -Destination "C:\test" -Recurse
Add-Content -Path $dir_path -Value "copy contents to 'C:\test'" -Force
