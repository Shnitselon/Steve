Write-Output "started powershell script"
$Pwd = ConvertTo-SecureString "Afifarm15148" -AsPlainText -Force
Write-Output "created secure string"
New-LocalUser "Demo" -Password $Pwd -FullName "Demo user" -Description "Demo user account." -PasswordNeverExpires
Write-Output "created Demo user"
Add-LocalGroupMember -Group "Administrators" -Member "Demo"
Write-Output "Add user to Administrators group"
