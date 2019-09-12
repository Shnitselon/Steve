Write-Output "start powershell script"
"C:\Windows\System32\WindowsPowerShell\v1.0\powershell_ISE.exe"
Write-Output "open Powershell ISE as admin"
$Pwd = ConvertTo-SecureString "Afifarm15148" -AsPlainText -Force
Write-Output "create secure string"
New-LocalUser "Demo" -Password $Pwd -FullName "Demo" -Description "Demo user account." -PasswordNeverExpires 
Write-Output "create Demo user"
Add-LocalGroupMember -Group "Administrators" -Member "Demo"
Write-Output "Add user to Administrators group"
