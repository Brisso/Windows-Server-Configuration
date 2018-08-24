## Brissotech
## Script provided as is. Use at own risk. No guarantees or warranty provided.

## Source - https://github.com/Brisso/Windows-Server-Setup

## Description
## Script designed to create a company folder Structure


#variables for the folders you want to create
		
$Drive      = "D:"
$Base1  	= "Company"
$Sub1 	    = "SUBFOLDER1NAME"
$Sub2 	    = "SUBFOLDER2NAME"
$Sub3 	    = "SUBFOLDER3NAME"
$Sub4 	    = "SUBFOLDER4NAME"
$Sub5 	    = "SUBFOLDER5NAME"
$Sub6 	    = "SUBFOLDER6NAME"
$Sub7 	    = "SUBFOLDER7NAME"
$Sub8 	    = "SUBFOLDER8NAME"
$Sub9 	    = "SUBFOLDER9NAME"
$Sub10 	    = "SUBFOLDER10NAME"
$Sub11 	    = "SUBFOLDER11NAME"
$Sub12 	    = "SUBFOLDER12NAME"
$Sub13 	    = "SUBFOLDER13NAME"
$Sub14 	    = "SUBFOLDER14NAME"
$Sub15 	    = "SUBFOLDER15NAME"
$Sub16 	    = "SUBFOLDER16NAME"
$Sub17 	    = "SUBFOLDER17NAME"

#
#
#
write-host -foregroundcolor green "$LDescription"
write-host -foregroundcolor green "Below is the folder structure that will be created"
#
#Base Folder to Be Created
write-host -foregroundcolor yellow "Main Folder $Base1"
#
#Subfolders  to Be Created
write-host -foregroundcolor yellow "Subfolder $Sub1"
write-host -foregroundcolor yellow "Subfolder $Sub2"
write-host -foregroundcolor yellow "Subfolder $Sub3"
write-host -foregroundcolor yellow "Subfolder $Sub4"
write-host -foregroundcolor yellow "Subfolder $Sub5"
write-host -foregroundcolor yellow "Subfolder $Sub6"
write-host -foregroundcolor yellow "Subfolder $Sub7"
write-host -foregroundcolor yellow "Subfolder $Sub8"
write-host -foregroundcolor yellow "Subfolder $Sub9"
write-host -foregroundcolor yellow "Subfolder $Sub10"
write-host -foregroundcolor yellow "Subfolder $Sub11"
write-host -foregroundcolor yellow "Subfolder $Sub12"
write-host -foregroundcolor yellow "Subfolder $Sub13"
write-host -foregroundcolor yellow "Subfolder $Sub14"
write-host -foregroundcolor yellow "Subfolder $Sub15"
write-host -foregroundcolor yellow "Subfolder $Sub16"
write-host -foregroundcolor yellow "Subfolder $Sub17"
#
write-host -foregroundcolor green "Script started"
#
#
$confirmation = Read-Host "Are you sure you want to Procced to Create the Above folder Structure? [y/n]"
while($confirmation -ne "y")
{
    if ($confirmation -eq 'n') {exit}
    $confirmation = Read-Host "Are you sure you want to Procced to Create the Above folder Structure? [y/n]"
}
#
#
new-item -type directory -path $Drive\$Base1 -Force
new-item -type directory -path $Drive\$Base1\$Sub1 -Force
new-item -type directory -path $Drive\$Base1\$Sub2 -Force
new-item -type directory -path $Drive\$Base1\$Sub3 -Force
new-item -type directory -path $Drive\$Base1\$Sub4 -Force
new-item -type directory -path $Drive\$Base1\$Sub5 -Force
new-item -type directory -path $Drive\$Base1\$Sub6 -Force
new-item -type directory -path $Drive\$Base1\$Sub7 -Force
new-item -type directory -path $Drive\$Base1\$Sub8 -Force
new-item -type directory -path $Drive\$Base1\$Sub9 -Force
new-item -type directory -path $Drive\$Base1\$Sub10 -Force
new-item -type directory -path $Drive\$Base1\$Sub11 -Force
new-item -type directory -path $Drive\$Base1\$Sub12 -Force
new-item -type directory -path $Drive\$Base1\$Sub13 -Force
new-item -type directory -path $Drive\$Base1\$Sub14 -Force
new-item -type directory -path $Drive\$Base1\$Sub15 -Force
new-item -type directory -path $Drive\$Base1\$Sub16 -Force
new-item -type directory -path $Drive\$Base1\$Sub17 -Force


write-host -foregroundcolor green "Scipt Completed and New Folders have been Created"
