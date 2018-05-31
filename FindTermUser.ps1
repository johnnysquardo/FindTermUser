#Set the ExecutionPolicy to allow execution of scripts
Set-ExecutionPolicy Unrestricted

Import-Module ActiveDirectory

#Import my script for remote AD connection
$Server = "winops.ais.domain"
$Creds = Get-Credential
$Session = new-pssession -ComputerName $Server -Credential $Creds 

Enter-PSSession $Session

$Username = Read-Host -Prompt "Who are you trying to find?"
 
Get-RDUserSession