## Brissotech
## Script provided as is. Use at own risk. No guarantees or warranty provided.

## Source - https://github.com/Brisso/Windows-Server-Setup

## Description
## Script designed to Export List of Users From AD into the Bulk Import Format.


# The Import-Module cmdlet adds the AD module to the current session. 
Import-Module ActiveDirectory
Get-ADUser -Filter * -Properties * | export-csv c:\ADusers.csv
