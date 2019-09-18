$dir_name = "temp-logs"
$dir_path = "C:\$dir_name\azure-config-log.txt"
New-Item -ItemType Directory -Force -Path "C:\$dir_name"

Rename-Computer -ComputerName "localhost" -NewName "Afifarm53new" -Force -Restart
Add-Content -Path $dir_path -Value "rename machine to Afifarm53new!" -Force

$Pwd = ConvertTo-SecureString "Afifarm15148" -AsPlainText -Force
Add-Content -Path $dir_path -Value "create password" -Force

New-LocalUser "Demo" -Password $Pwd -FullName "Demo" -Description "Demo user account." -PasswordNeverExpires
Add-Content -Path $dir_path -Value "create 'Demo' user" -Force

Add-LocalGroupMember -Group "Administrators" -Member "Demo"
Add-Content -Path $dir_path -Value "Assign to 'Administrators' group" -Force

Copy-Item -Path "C:\AFIFARM\DATA\*" -Destination "C:\Users\Demo\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup" -Recurse
Add-Content -Path $dir_path -Value "copy contents to  Demo's Startup folder" -Force

Add-Content -Path $dir_path -Value "success!" -Force
