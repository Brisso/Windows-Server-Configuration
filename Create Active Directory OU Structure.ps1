## Brissotech
## Script provided as is. Use at own risk. No guarantees or warranty provided.

## Source - https://github.com/Brisso/Windows-Server-Setup

## Description
## Script designed to recreate the SBS OU Structure 

write-host -foregroundcolor green "$LDescription"
#
write-host -foregroundcolor yellow "Prerequisites you May need to run Set-ExecutionPolicy Unrestricted to Run Scripts."
#
write-host -foregroundcolor green "Script started"
#
$confirmation = Read-Host "Are you sure you want to Procced with Creating the New AD OU Structure? [y/n]"
while($confirmation -ne "y")
{
    if ($confirmation -eq 'n') {exit}
    $confirmation = Read-Host "Are you sure you want to Procced with Creating the New AD OU Structure [y/n]"
}
#
#
Import-Module ActiveDirectory 
$domain = (Get-ADDomain) 
$DN = $domain.DistinguishedName      
New-ADOrganizationalUnit -name "Business" -path $DN 
New-ADOrganizationalUnit -name "Systems" -path "OU=Business,$DN" 
New-ADOrganizationalUnit -name "Security Groups" -path "OU=Business,$DN" 
New-ADOrganizationalUnit -name "Users" -path "OU=Business,$DN" 
New-ADOrganizationalUnit -name "Computers" -path "OU=Systems,OU=Business,$DN" 
New-ADOrganizationalUnit -name "Servers" -path "OU=Systems,OU=Business,$DN" 
New-ADOrganizationalUnit -name "RDSServers" -path "OU=Systems,OU=Business,$DN" 

c:\Windows\System32\redirusr.exe redircmp "OU=Computers,OU=Systems,OU=Business,DC=$DN"
c:\Windows\System32\redircmp.exe redirusr "OU=Users,OU=Business,DC=$DN"


write-host -foregroundcolor green "Scipt Completed and New Structure has been created"
