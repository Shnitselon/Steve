$Pwd = ConvertTo-SecureString "Afifarm15148" -AsPlainText -Force
New-LocalUser "Demo" -Password $Pwd -FullName "Demo" -Description "Demo user account." -PasswordNeverExpires 
Add-LocalGroupMember -Group "Administrators" -Member "Demo"