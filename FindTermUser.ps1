#Import my script for remote AD connection
$Server = "winops.ais.domain"
$Session = new-pssession -computer $Server

Invoke-Command -Session $Session -ScriptBlock { Import-Module ActiveDirectory }
Import-PSSession -Session $Session -Module ActiveDirectory