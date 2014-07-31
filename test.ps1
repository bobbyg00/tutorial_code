#Required Fields in CSV (in any order): SAMAccountName, PrimarySMTPAddress

$UserFile = "C:\temp\upnchange.csv"

$UserList = Import-Csv $UserFile

 
Foreach ($NEXTUser in $UserList)

{

set-aduser -Identity $NEXTUser.SamAccountName -UserPrincipalName $NEXTUser.PrimarySMTPAddress

} 