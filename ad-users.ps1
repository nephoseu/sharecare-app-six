New-ADGroup -Name "Development" -SamAccountName Development -GroupCategory Security -GroupScope Global -DisplayName "Development" -Path "CN=Users,DC=hc-company,DC=local" -Description "Development user group"
New-ADGroup -Name "ITAdmin" -SamAccountName ITAdmin -GroupCategory Security -GroupScope Global -DisplayName "ITAdmin" -Path "CN=Users,DC=hc-company,DC=local" -Description "ITAdmin user group"
New-ADGroup -Name "DataAnalytics" -SamAccountName DataAnalytics -GroupCategory Security -GroupScope Global -DisplayName "DataAnalytics" -Path "CN=Users,DC=hc-company,DC=local" -Description "DataAnalytics user group"

$Pwd = ConvertTo-SecureString "demoPassword1!" -AsPlainText -Force

New-ADUser -Name "Jonathan Fisher" -DisplayName "Jonathan Fisher" -SamAccountName "jofish" -UserPrincipalName "jofish@hc-company.local" -Accountpassword $Pwd -PasswordNeverExpires $true -Enabled $true
New-ADUser -Name "Ruth Goldberg" -DisplayName "Ruth Goldberg" -SamAccountName "rugold" -UserPrincipalName "rugold@hc-company.local" -Accountpassword $Pwd -PasswordNeverExpires $true -Enabled $true
New-ADUser -Name "Leonard Clark" -DisplayName "Leonard Clark" -SamAccountName "leclar" -UserPrincipalName "leclar@hc-company.local" -Accountpassword $Pwd -PasswordNeverExpires $true -Enabled $true
New-ADUser -Name "Nick Murray" -DisplayName "Nick Murray" -SamAccountName "nimurr" -UserPrincipalName "nimurr@hc-company.local" -Accountpassword $Pwd -PasswordNeverExpires $true -Enabled $true
New-ADUser -Name "Boris Campbell" -DisplayName "Boris Campbell" -SamAccountName "bocamp" -UserPrincipalName "bocamp@hc-company.local" -Accountpassword $Pwd -PasswordNeverExpires $true -Enabled $true
New-ADUser -Name "Rosa Veracruz" -DisplayName "Rosa Veracruz" -SamAccountName "rovera" -UserPrincipalName "rovera@hc-company.local" -Accountpassword $Pwd -PasswordNeverExpires $true -Enabled $true
New-ADUser -Name "Sandeep Singh" -DisplayName "Sandeep Singh" -SamAccountName "sasing" -UserPrincipalName "sasing@hc-company.local" -Accountpassword $Pwd -PasswordNeverExpires $true -Enabled $true
New-ADUser -Name "Marco Cerullo" -DisplayName "Marco Cerullo" -SamAccountName "maceru" -UserPrincipalName "maceru@hc-company.local" -Accountpassword $Pwd -PasswordNeverExpires $true -Enabled $true
New-ADUser -Name "Inga Nilsson" -DisplayName "Inga Nilsson" -SamAccountName "innils" -UserPrincipalName "innils@hc-company.local" -Accountpassword $Pwd -PasswordNeverExpires $true -Enabled $true

Add-ADGroupMember -Identity ITAdmin -Members leclar, bocamp, maceru
Add-ADGroupMember -Identity Development -Members jofish, nimurr, rovera
Add-ADGroupMember -Identity DataAnalytics -Members rugold, sasing, innils